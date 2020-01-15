Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6D76D13B736
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 02:47:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728834AbgAOBr2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jan 2020 20:47:28 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:44369 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728896AbgAOBr1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jan 2020 20:47:27 -0500
Received: by mail-ot1-f66.google.com with SMTP id h9so14638944otj.11
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2020 17:47:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7FffW/u9qscr/IEd74r9dwRvj0Rhj0vpQG4l3CJdN28=;
        b=notX7FTESHW15Tl1y006ooBiOyy0u+L8KQe6RAjvCsQ3ZmqFLKmGdlzUkqB7blXjzp
         28eZ41n1K2Gj2zaxnKXjMzPt2AaZy83N0SEIi8fOU2wVutNMNOfhukyfpUpEZr67o/Ta
         lxTLFGLrs9l8ojfX5Fg3fBcrpNeNf0ujQinDcclCRVsOmPHi5G9DKuqq/sdyUynWLa19
         1+l4PpgBbcACZ0MleXpv8Jnv8/ZHB4DYvpXPal/o8fLbHC3ghRtFaTjINOguv0kBvAu8
         AokzzaUbwxoXNR0eAVWBpF+dFhQ7gx7UiLQMypNH2+++ZEhl0wkf4gcAlwmJhWwGCRW+
         mgJA==
X-Gm-Message-State: APjAAAWAOWek7W6Ozm4lyOEPVIyX+kmVDtXAX+HuS02iXquxKQeATwUS
        YlCvWsygeETFle2porEdtD6gfBs=
X-Google-Smtp-Source: APXvYqzQsWS7qZ/uYsoNQjdwYfXIHfrQ8F493wNnTKwcyBQy9+SHc9pZqgNqO+vAjDtGqfUxaWXMLw==
X-Received: by 2002:a9d:7c90:: with SMTP id q16mr1031095otn.191.1579052846688;
        Tue, 14 Jan 2020 17:47:26 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w12sm5995202otk.75.2020.01.14.17.47.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2020 17:47:25 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2209ae
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 14 Jan 2020 19:47:24 -0600
Date:   Tue, 14 Jan 2020 19:47:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     Roger Quadros <rogerq@ti.com>
Cc:     t-kristo@ti.com, nm@ti.com, kishon@ti.com, nsekhar@ti.com,
        vigneshr@ti.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: ti: k3-j721e-main: Add serdes_ln_ctrl
 node to select SERDES lane mux
Message-ID: <20200115014724.GA20772@bogus>
References: <20200108111830.8482-1-rogerq@ti.com>
 <20200108111830.8482-3-rogerq@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108111830.8482-3-rogerq@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 08, 2020 at 01:18:27PM +0200, Roger Quadros wrote:
> From: Kishon Vijay Abraham I <kishon@ti.com>
> 
> Add serdes_ln_ctrl node used for selecting SERDES lane mux.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 26 +++++++++++
>  include/dt-bindings/mux/mux-j721e-wiz.h   | 53 +++++++++++++++++++++++
>  2 files changed, 79 insertions(+)
>  create mode 100644 include/dt-bindings/mux/mux-j721e-wiz.h
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index 24cb78db28e4..6741c1e67f50 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -5,6 +5,8 @@
>   * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
>   */
>  #include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/mux/mux.h>
> +#include <dt-bindings/mux/mux-j721e-wiz.h>
>  
>  &cbass_main {
>  	msmc_ram: sram@70000000 {
> @@ -19,6 +21,30 @@
>  		};
>  	};
>  
> +	scm_conf: scm_conf@100000 {

Don't use '_' in node names.

> +		compatible = "syscon", "simple-mfd";

Needs a specific compatible especially since the child node doesn't have 
one.

> +		reg = <0 0x00100000 0 0x1c000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x00100000 0x1c000>;
> +
> +		serdes_ln_ctrl: serdes_ln_ctrl@4080 {

'reg' is needed if there's a unit-address. If there's a register range 
with only the mux controls, then add 'reg'.

> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x4080 0x3>, <0x4084 0x3>, /* SERDES0 lane0/1 select */
> +					<0x4090 0x3>, <0x4094 0x3>, /* SERDES1 lane0/1 select */
> +					<0x40a0 0x3>, <0x40a4 0x3>, /* SERDES2 lane0/1 select */
> +					<0x40b0 0x3>, <0x40b4 0x3>, /* SERDES3 lane0/1 select */
> +					<0x40c0 0x3>, <0x40c4 0x3>, <0x40c8 0x3>, <0x40cc 0x3>;
> +					/* SERDES4 lane0/1/2/3 select */
> +			idle-states = <SERDES0_LANE0_PCIE0_LANE0>, <SERDES0_LANE1_PCIE0_LANE1>,
> +				      <SERDES1_LANE0_PCIE1_LANE0>, <SERDES1_LANE1_PCIE1_LANE1>,
> +				      <SERDES2_LANE0_PCIE2_LANE0>, <SERDES2_LANE1_PCIE2_LANE1>,
> +				      <MUX_IDLE_AS_IS>, <SERDES3_LANE1_USB3_0>,
> +				      <SERDES4_LANE0_EDP_LANE0>, <SERDES4_LANE1_EDP_LANE1>, <SERDES4_LANE2_EDP_LANE2>, <SERDES4_LANE3_EDP_LANE3>;
> +		};
> +	};
> +
>  	gic500: interrupt-controller@1800000 {
>  		compatible = "arm,gic-v3";
>  		#address-cells = <2>;
> diff --git a/include/dt-bindings/mux/mux-j721e-wiz.h b/include/dt-bindings/mux/mux-j721e-wiz.h
> new file mode 100644
> index 000000000000..fd1c4ea9fc7f
> --- /dev/null
> +++ b/include/dt-bindings/mux/mux-j721e-wiz.h
> @@ -0,0 +1,53 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This header provides constants for J721E WIZ.
> + */
> +
> +#ifndef _DT_BINDINGS_J721E_WIZ
> +#define _DT_BINDINGS_J721E_WIZ
> +
> +#define SERDES0_LANE0_QSGMII_LANE1	0x0
> +#define SERDES0_LANE0_PCIE0_LANE0	0x1
> +#define SERDES0_LANE0_USB3_0_SWAP	0x2
> +
> +#define SERDES0_LANE1_QSGMII_LANE2	0x0
> +#define SERDES0_LANE1_PCIE0_LANE1	0x1
> +#define SERDES0_LANE1_USB3_0		0x2
> +
> +#define SERDES1_LANE0_QSGMII_LANE3	0x0
> +#define SERDES1_LANE0_PCIE1_LANE0	0x1
> +#define SERDES1_LANE0_USB3_1_SWAP	0x2
> +#define SERDES1_LANE0_SGMII_LANE0	0x3
> +
> +#define SERDES1_LANE1_QSGMII_LANE4	0x0
> +#define SERDES1_LANE1_PCIE1_LANE1	0x1
> +#define SERDES1_LANE1_USB3_1		0x2
> +#define SERDES1_LANE1_SGMII_LANE1	0x3
> +
> +#define SERDES2_LANE0_PCIE2_LANE0	0x1
> +#define SERDES2_LANE0_SGMII_LANE0	0x3
> +#define SERDES2_LANE0_USB3_1_SWAP	0x2
> +
> +#define SERDES2_LANE1_PCIE2_LANE1	0x1
> +#define SERDES2_LANE1_USB3_1		0x2
> +#define SERDES2_LANE1_SGMII_LANE1	0x3
> +
> +#define SERDES3_LANE0_PCIE3_LANE0	0x1
> +#define SERDES3_LANE0_USB3_0_SWAP	0x2
> +
> +#define SERDES3_LANE1_PCIE3_LANE1	0x1
> +#define SERDES3_LANE1_USB3_0		0x2
> +
> +#define SERDES4_LANE0_EDP_LANE0		0x0
> +#define SERDES4_LANE0_QSGMII_LANE5	0x2
> +
> +#define SERDES4_LANE1_EDP_LANE1		0x0
> +#define SERDES4_LANE1_QSGMII_LANE6	0x2
> +
> +#define SERDES4_LANE2_EDP_LANE2		0x0
> +#define SERDES4_LANE2_QSGMII_LANE7	0x2
> +
> +#define SERDES4_LANE3_EDP_LANE3		0x0
> +#define SERDES4_LANE3_QSGMII_LANE8	0x2
> +
> +#endif /* _DT_BINDINGS_J721E_WIZ */
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 
