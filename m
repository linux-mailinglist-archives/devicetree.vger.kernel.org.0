Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABFA864C3EB
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 07:42:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbiLNGml (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 01:42:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbiLNGmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 01:42:40 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4ADA1B3
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 22:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671000158; x=1702536158;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=04wnma+NmJepl8xZnNhEoPSsVuPc5wdr6+IhXiHcNxo=;
  b=bi4UAHTGTpbqeyBjrJSdz1cwxa/rSXrwUBI31yOV4OXqahYO0Vgp8xlu
   LRz2ofsoxvDsG003g+iObm9l3rRxOvHvgcnzUQ+4DAcTkFdO8G8vxeVo6
   hbeFx6U7USoZphKp68EMPpkmNCXacKa0hpDDngT5YakCA/nfAUuj0ig+0
   wOl/GPJrS9edfRcdLE96PCSPOmmnNs5K8cnkwrglRp0Yb463Rts4BbCoI
   OW9vcRlhGztCZDTAWWmoNmlYKXXlcxLFVQ+oMao4pzoKvutoCwgaldNcH
   MCHlBfCIVGWboMLeD2YCA/XqUfIgY0diReLprMSq43Jf6jNYaASQ3m+5m
   w==;
X-IronPort-AV: E=Sophos;i="5.96,243,1665439200"; 
   d="scan'208";a="27935479"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Dec 2022 07:42:37 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 14 Dec 2022 07:42:37 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 14 Dec 2022 07:42:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671000157; x=1702536157;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=04wnma+NmJepl8xZnNhEoPSsVuPc5wdr6+IhXiHcNxo=;
  b=HPUmeyuQOsF9O3h0ioXpblmh9ZUCSNiEdLFh9gq+JmoMzEQqZf3EUaW3
   30rXp6csGVA+aUgvJrjXFziLZVYzx1vg36x9T57cDdkUkNhDaq+NX0tuQ
   gzB2bPF73BubB1QCskpGuIMxzIRk8VtkjkoylSV9hu0JUsRWUKTL8BhsD
   syL/Uifqsro6s+ck/S8M6pCLDWFljQxAyK9DHU7Ji7eQcdM0fU+hfBxOV
   txpzWIp+8uY6lmglq13oKtcOvR4YTT85zhTCrHRwQc1JGaGcnT5gq2O/F
   JBpSZ5RD7RQNQArYGZDmzG5NyGcMBVNgEtiXJZaJ8onDz93m6if4JANIN
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,243,1665439200"; 
   d="scan'208";a="27935478"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 07:42:37 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DB1BD280071;
        Wed, 14 Dec 2022 07:42:36 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        marcel.ziswiler@toradex.com, marex@denx.de, tharvey@gateworks.com,
        richard.leitner@linux.dev, lukas@mntre.com,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock cells
Date:   Wed, 14 Dec 2022 07:42:35 +0100
Message-ID: <3950061.kQq0lBPeGt@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221213160112.1900410-1-l.stach@pengutronix.de>
References: <20221213160112.1900410-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Am Dienstag, 13. Dezember 2022, 17:01:09 CET schrieb Lucas Stach:
> The HSIO blk-ctrl has a internal PLL, which can be used as a reference
> clock for the PCIe PHY. Add clock-cells to the binding to allow the
> driver to expose this PLL.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git
> a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> index c29181a9745b..1cc7c2bdf2bb 100644
> ---
> a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> +++
> b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> @@ -39,6 +39,9 @@ properties:
>        - const: pcie
>        - const: pcie-phy
> 
> +  '#clock-cells':
> +    const: 1

Rob's bot already noticed the mismatch between this and the example.

Best regards,
Alexander

> +
>    clocks:
>      minItems: 2
>      maxItems: 2
> @@ -85,4 +88,5 @@ examples:
>          power-domain-names = "bus", "usb", "usb-phy1",
>                               "usb-phy2", "pcie", "pcie-phy";
>          #power-domain-cells = <1>;
> +        #clock-cells = <0>;
>      };




