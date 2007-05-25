package # hide from PAUSE
    DBICTest::Schema::Host;

use base qw/DBIx::Class/;

__PACKAGE__->load_components(qw/InflateColumn::IP Core/);
__PACKAGE__->table('host');

__PACKAGE__->add_columns(
    hostname => {
        data_type   => 'text',
        is_nullable => 0,
    },
    address => {
        data_type   => 'integer',
        is_nullable => 0,
        is_ip       => 1,
        ip_format   => 'numeric',
    }
);

__PACKAGE__->set_primary_key('hostname');
__PACKAGE__->add_unique_constraint(address => [ qw/address/ ]);

1;
