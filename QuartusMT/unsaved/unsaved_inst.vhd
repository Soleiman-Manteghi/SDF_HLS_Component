	component unsaved is
		port (
			clk_clk                   : in  std_logic                     := 'X';             -- clk
			reset_reset_n             : in  std_logic                     := 'X';             -- reset_n
			actorsimotoken_0_s2_data  : out std_logic_vector(31 downto 0);                    -- data
			actorsimotoken_0_s2_ready : in  std_logic                     := 'X';             -- ready
			actorsimotoken_0_s2_valid : out std_logic;                                        -- valid
			actorsimotoken_0_s0_data  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			actorsimotoken_0_s0_ready : out std_logic;                                        -- ready
			actorsimotoken_0_s0_valid : in  std_logic                     := 'X';             -- valid
			actorsimotoken_0_s1_data  : out std_logic_vector(31 downto 0);                    -- data
			actorsimotoken_0_s1_ready : in  std_logic                     := 'X';             -- ready
			actorsimotoken_0_s1_valid : out std_logic                                         -- valid
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk                   => CONNECTED_TO_clk_clk,                   --                 clk.clk
			reset_reset_n             => CONNECTED_TO_reset_reset_n,             --               reset.reset_n
			actorsimotoken_0_s2_data  => CONNECTED_TO_actorsimotoken_0_s2_data,  -- actorsimotoken_0_s2.data
			actorsimotoken_0_s2_ready => CONNECTED_TO_actorsimotoken_0_s2_ready, --                    .ready
			actorsimotoken_0_s2_valid => CONNECTED_TO_actorsimotoken_0_s2_valid, --                    .valid
			actorsimotoken_0_s0_data  => CONNECTED_TO_actorsimotoken_0_s0_data,  -- actorsimotoken_0_s0.data
			actorsimotoken_0_s0_ready => CONNECTED_TO_actorsimotoken_0_s0_ready, --                    .ready
			actorsimotoken_0_s0_valid => CONNECTED_TO_actorsimotoken_0_s0_valid, --                    .valid
			actorsimotoken_0_s1_data  => CONNECTED_TO_actorsimotoken_0_s1_data,  -- actorsimotoken_0_s1.data
			actorsimotoken_0_s1_ready => CONNECTED_TO_actorsimotoken_0_s1_ready, --                    .ready
			actorsimotoken_0_s1_valid => CONNECTED_TO_actorsimotoken_0_s1_valid  --                    .valid
		);

