Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4CC5592E37
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 13:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231367AbiHOLbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 07:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230407AbiHOLbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 07:31:17 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66CDDDF3A
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 04:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1660563076; x=1692099076;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=s8LRGikTNC1M9GDHT268MyAKRQlda5OnSjeu6RwYqHc=;
  b=Yhnmr20LIHxK7BuSjJE3pg0sl8HmC858hMOM2Ink0nuQY5TjPUPHRRu9
   vxo62G4VzfdpTlqPctxEfmp1Gc6ih1Vg+7jk9CF0W6DbAwta/rmpukGSQ
   Q+hJdmrWgMHTC+ng61m5PnJx4kZzN2uSvqd9Y7wAYDNr0+8jwmnINzvV/
   Awd+BBnZYdRI77+MkbybNs4I2LS72oI1Aypprm07WsYMTAPZ9gyCpPEbB
   RI1cfBwEHSPNHnaf0iK/tLmTDRc+O1H5/6apTJs4k25Vw91Oy4YKpbY95
   zA/ULQWxgJC6NkzFt7ZKRH7bVb7DRJQ7c+/8OjXCcKhyrOVQfDAFCK5Nw
   A==;
X-IronPort-AV: E=Sophos;i="5.93,238,1654552800"; 
   d="scan'208";a="25604632"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 15 Aug 2022 13:31:14 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 15 Aug 2022 13:31:14 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 15 Aug 2022 13:31:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1660563074; x=1692099074;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=s8LRGikTNC1M9GDHT268MyAKRQlda5OnSjeu6RwYqHc=;
  b=UHI1XahCvDinNGOdT4MmaDr55GCCAW8UunCYegyJDOirfYQWXM78SQ2u
   9T952FZdgC/0YpgjIrEIfJQH6aAIYrd3nNjEPcI7u5B50EkmXhxWfTYsh
   AEBf//RhfjQFTFO7L6QFxbc0yp70xzsbDRXxscXZRlKOLzBcnyGcIXPtm
   TuytKS1uaDWHbkF9fD3gHbC3g5Wq/r2MXTENPzotPhPNHnst1TIl0iXMd
   fxOUH4QuY0Ee3OTXE4tj6wvzypQ12r7+kAKixod7eKXwNHGOdGZwbIWVF
   u/h33T5YlsU8DBiTrxiXDyf2utMoMSPPoxPRLzNrd0TEmNHpVy7fiuIKr
   g==;
X-IronPort-AV: E=Sophos;i="5.93,238,1654552800"; 
   d="scan'208";a="25604631"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 Aug 2022 13:31:14 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8FAB6280056;
        Mon, 15 Aug 2022 13:31:14 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] ARM: dts: imx6: delete interrupts property if interrupts-extended is set
Date:   Mon, 15 Aug 2022 13:31:14 +0200
Message-ID: <1979391.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220720064158.1413330-1-alexander.stein@ew.tq-group.com>
References: <20220720064158.1413330-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Rob & Krzysztof,

ping.

Thanks and best regards
Alexander

Am Mittwoch, 20. Juli 2022, 08:41:58 CEST schrieb Alexander Stein:
> In most cases this is related to fsl,err006687-workaround-present, which
> requires a GPIO interrupt next a GIC interrupt.
> 
> This fixes the dtbs_check warning:
> imx6dl-mba6a.dtb: ethernet@2188000: More than one condition true in oneOf
> schema: {'$filename': 'Documentation/devicetree/bindings/net/fsl,fec.yaml',
> [...]
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Given that all DT add interrupts-extended on the very next line, this
> seems the correct thing to do.
> 
>  arch/arm/boot/dts/imx6dl-riotboard.dts        | 1 +
>  arch/arm/boot/dts/imx6q-arm2.dts              | 1 +
>  arch/arm/boot/dts/imx6q-evi.dts               | 1 +
>  arch/arm/boot/dts/imx6q-mccmon6.dts           | 1 +
>  arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi      | 1 +
>  arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi  | 1 +
>  arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi | 1 +
>  arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi     | 1 +
>  arch/arm/boot/dts/imx6qdl-sabreauto.dtsi      | 1 +
>  arch/arm/boot/dts/imx6qdl-tqma6a.dtsi         | 1 +
>  arch/arm/boot/dts/imx6qdl-ts7970.dtsi         | 1 +
>  11 files changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6dl-riotboard.dts
> b/arch/arm/boot/dts/imx6dl-riotboard.dts index e7d9bfbfd0e4..e7be05f205d3
> 100644
> --- a/arch/arm/boot/dts/imx6dl-riotboard.dts
> +++ b/arch/arm/boot/dts/imx6dl-riotboard.dts
> @@ -90,6 +90,7 @@ &fec {
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&rgmii_phy>;
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6q-arm2.dts
> b/arch/arm/boot/dts/imx6q-arm2.dts index 0b40f52268b3..75586299d9ca 100644
> --- a/arch/arm/boot/dts/imx6q-arm2.dts
> +++ b/arch/arm/boot/dts/imx6q-arm2.dts
> @@ -178,6 +178,7 @@ &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii";
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6q-evi.dts
> b/arch/arm/boot/dts/imx6q-evi.dts index c63f371ede8b..78d941fef5df 100644
> --- a/arch/arm/boot/dts/imx6q-evi.dts
> +++ b/arch/arm/boot/dts/imx6q-evi.dts
> @@ -146,6 +146,7 @@ &fec {
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii";
>  	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6q-mccmon6.dts
> b/arch/arm/boot/dts/imx6q-mccmon6.dts index 55692c73943d..64ab01018b71
> 100644
> --- a/arch/arm/boot/dts/imx6q-mccmon6.dts
> +++ b/arch/arm/boot/dts/imx6q-mccmon6.dts
> @@ -100,6 +100,7 @@ &fec {
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii";
>  	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	status = "okay";
> diff --git a/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
> b/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi index 0ad4cb4f1e82..a53a5d0766a5
> 100644
> --- a/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-nit6xlite.dtsi
> @@ -192,6 +192,7 @@ &fec {
>  	phy-mode = "rgmii";
>  	phy-handle = <&ethphy>;
>  	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi
> b/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi index
> beaa2dcd436c..57c21a01f126 100644
> --- a/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-nitrogen6_max.dtsi
> @@ -334,6 +334,7 @@ &fec {
>  	phy-mode = "rgmii";
>  	phy-handle = <&ethphy>;
>  	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi
> b/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi index
> ee7e2371f94b..000e9dc97b1a 100644
> --- a/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-nitrogen6_som2.dtsi
> @@ -263,6 +263,7 @@ &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii";
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi
> b/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi index
> 904d5d051d63..731759bdd7f5 100644
> --- a/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-nitrogen6x.dtsi
> @@ -267,6 +267,7 @@ &fec {
>  	phy-mode = "rgmii";
>  	phy-handle = <&ethphy>;
>  	phy-reset-gpios = <&gpio1 27 GPIO_ACTIVE_LOW>;
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi index 1368a4762037..3dbb460ef102
> 100644
> --- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
> @@ -295,6 +295,7 @@ &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii-id";
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
> b/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi index 7dc3f0005b0f..0a36e1bce375
> 100644
> --- a/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-tqma6a.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/gpio/gpio.h>
> 
>  &fec {
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;
> diff --git a/arch/arm/boot/dts/imx6qdl-ts7970.dtsi
> b/arch/arm/boot/dts/imx6qdl-ts7970.dtsi index d6ba4b2a60f6..c096d25a6f5b
> 100644
> --- a/arch/arm/boot/dts/imx6qdl-ts7970.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-ts7970.dtsi
> @@ -192,6 +192,7 @@ &fec {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet>;
>  	phy-mode = "rgmii";
> +	/delete-property/ interrupts;
>  	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
>  			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
>  	fsl,err006687-workaround-present;




