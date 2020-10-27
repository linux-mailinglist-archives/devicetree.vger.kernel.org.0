Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0ADAC29ABF1
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 13:21:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2411653AbgJ0MVF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 08:21:05 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:48478 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2440682AbgJ0MVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 08:21:03 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RCKsXo042543;
        Tue, 27 Oct 2020 07:20:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603801254;
        bh=Np4PxMjisKBQclEbyL5M6uJIRfVlPSJTccS/tHqo4rk=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=N8ghTswyfU/J8PdvnRUTCzxqOvlpeNV9xYvKHJXeGBub/EOiMNTkKix+j7nILbHSb
         ZRfPl4n1GSFL00t7DKSfmLBTJWpbFx0M5XPM1nra7glUIan3LSz4wdoQ+Ec/qCWlGD
         wF4ngBSBoC+gfb1M05a+qzVyGvXgnDAuOPGkbFD8=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RCKs3G003258
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 07:20:54 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 07:20:54 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 07:20:54 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RCKs12082338;
        Tue, 27 Oct 2020 07:20:54 -0500
Date:   Tue, 27 Oct 2020 07:20:54 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-j721e-common-proc-board: add DP
 to j7 evm
Message-ID: <20201027122054.zdjbjfpjkhnc7wdr@silenced>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-3-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201027104132.105485-3-tomi.valkeinen@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:41-20201027, Tomi Valkeinen wrote:
[...]

> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> index 52e121155563..5a36d65755ee 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
> @@ -83,6 +83,31 @@ sound0: sound@0 {
>  			      "cpb-codec-scki",
>  			      "cpb-codec-scki-48000", "cpb-codec-scki-44100";
>  	};
> +
> +	dp_pwr_3v3: fixedregulator-dp-prw {
> +		compatible = "regulator-fixed";
> +		regulator-name = "dp-pwr";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&exp4 0 0>;	/* P0 - DP0_PWR_SW_EN */
> +		enable-active-high;
> +
> +		/* Always on for now, until dp-connector driver can handle this */
> +		regulator-always-on;
> +	};
> +
> +	dp0: connector {
> +		compatible = "dp-connector";

This is not documented? I see the following on checkpatch:
+WARNING: DT compatible string "dp-connector" appears un-documented -- check ./Documentation/devicetree/bindings/
+#42: FILE: arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:100:
++              compatible = "dp-connector";
+      mechanically convert to the typical style using --fix or --fix-inplace.
+      them to the maintainer, see CHECKPATCH in MAINTAINERS.


> +		label = "DP0";
> +		type = "full-size";
> +		dp-pwr-supply = <&dp_pwr_3v3>;
> +
> +		port {
> +			dp_connector_in: endpoint {
> +				remote-endpoint = <&dp0_out>;
> +			};
> +		};
> +	};
>  };
>
>  &main_pmx0 {
> @@ -119,6 +144,12 @@ J721E_IOPAD(0x214, PIN_OUTPUT, 4) /* (V4) MCAN1_TX.USB1_DRVVBUS */
>  		>;
>  	};
>
> +	dp0_pins_default: dp0_pins_default {

please don't use _ in node names dp0-pins-default perhaps?

[...]
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
