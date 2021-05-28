Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2A8393CA9
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 07:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234724AbhE1FSx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 01:18:53 -0400
Received: from gecko.sbs.de ([194.138.37.40]:38791 "EHLO gecko.sbs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234071AbhE1FSx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 May 2021 01:18:53 -0400
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
        by gecko.sbs.de (8.15.2/8.15.2) with ESMTPS id 14S5H3aE027403
        (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 28 May 2021 07:17:03 +0200
Received: from [167.87.36.150] ([167.87.36.150])
        by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id 14S59hwp031272;
        Fri, 28 May 2021 07:09:43 +0200
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
Cc:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20210514224759.9987-1-s-anna@ti.com>
 <20210514224759.9987-2-s-anna@ti.com>
From:   Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <f1930b9c-1a36-dd82-b276-908375b3e1c8@siemens.com>
Date:   Fri, 28 May 2021 07:09:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210514224759.9987-2-s-anna@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15.05.21 00:47, Suman Anna wrote:
> From: Roger Quadros <rogerq@ti.com>
> 
> The ICSSGs on K3 AM65x SoCs contain an MDIO controller that can
> be used to control external PHYs associated with the Industrial
> Ethernet peripherals within each ICSSG instance. The MDIO module
> used within the ICSSG is similar to the MDIO Controller used
> in TI Davinci SoCs. A bus frequency of 1 MHz is chosen for the
> MDIO operations.
> 
> The nodes are added and enabled in the common k3-am65-main.dtsi
> file by default, and disabled in the existing AM65 board dts
> files. These nodes need pinctrl lines, and so should be enabled
> only on boards where they are actually wired and pinned out for
> ICSSG Ethernet. Any new board dts file should disable these if
> they are not sure.
> 
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> [s-anna@ti.com: move the disabled status to board dts files]
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 12 ++++++++
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 30 +++++++++++++++++++
>  .../arm64/boot/dts/ti/k3-am654-base-board.dts | 12 ++++++++
>  3 files changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> index de763ca9251c..63140eaba524 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
> @@ -653,3 +653,15 @@ &pcie1_rc {
>  &pcie1_ep {
>  	status = "disabled";
>  };
> +
> +&icssg0_mdio {
> +	status = "disabled";
> +};
> +
> +&icssg1_mdio {
> +	status = "disabled";
> +};
> +
> +&icssg2_mdio {
> +	status = "disabled";
> +};

We will need this here for PRU networking. What would be the impact of
leaving it enabled already at this stage?

Jan

> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index cb340d1b401f..25ec7aba841a 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -1051,6 +1051,16 @@ tx_pru0_1: txpru@c000 {
>  			reg-names = "iram", "control", "debug";
>  			firmware-name = "am65x-txpru0_1-fw";
>  		};
> +
> +		icssg0_mdio: mdio@32400 {
> +			compatible = "ti,davinci_mdio";
> +			reg = <0x32400 0x100>;
> +			clocks = <&k3_clks 62 3>;
> +			clock-names = "fck";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			bus_freq = <1000000>;
> +		};
>  	};
>  
>  	icssg1: icssg@b100000 {
> @@ -1182,6 +1192,16 @@ tx_pru1_1: txpru@c000 {
>  			reg-names = "iram", "control", "debug";
>  			firmware-name = "am65x-txpru1_1-fw";
>  		};
> +
> +		icssg1_mdio: mdio@32400 {
> +			compatible = "ti,davinci_mdio";
> +			reg = <0x32400 0x100>;
> +			clocks = <&k3_clks 63 3>;
> +			clock-names = "fck";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			bus_freq = <1000000>;
> +		};
>  	};
>  
>  	icssg2: icssg@b200000 {
> @@ -1313,5 +1333,15 @@ tx_pru2_1: txpru@c000 {
>  			reg-names = "iram", "control", "debug";
>  			firmware-name = "am65x-txpru2_1-fw";
>  		};
> +
> +		icssg2_mdio: mdio@32400 {
> +			compatible = "ti,davinci_mdio";
> +			reg = <0x32400 0x100>;
> +			clocks = <&k3_clks 64 3>;
> +			clock-names = "fck";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			bus_freq = <1000000>;
> +		};
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> index 9e87fb313a54..be905a006a97 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> @@ -537,3 +537,15 @@ &mcasp2 {
>  &dss {
>  	status = "disabled";
>  };
> +
> +&icssg0_mdio {
> +	status = "disabled";
> +};
> +
> +&icssg1_mdio {
> +	status = "disabled";
> +};
> +
> +&icssg2_mdio {
> +	status = "disabled";
> +};
> 

-- 
Siemens AG, T RDA IOT
Corporate Competence Center Embedded Linux
