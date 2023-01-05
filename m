Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65C6665EEA7
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 15:22:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbjAEOWM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 09:22:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbjAEOWL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 09:22:11 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDA2448818
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 06:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672928531; x=1704464531;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tuFnK8VwwjuQkvXDvFMbDDO4EQTIYHzwsDN7GFwrY3k=;
  b=Vc9VgZthjXcG3P8vdOl+5STZrCDqTlsszL5Zru7R3w9XQHm65U/bVmQs
   VOzLGPcxJyZ6E5OfWNKeBVFcbhcFBHwyUxWk9E/gy0/CDt9Wp61QJ3JdP
   Tzi7MeG0zdDwS8J9ihJGlM5opfSjg2l+haLFs+20C3LPx9UtEficobWR1
   C+/J9fw5fmJyYcfizCvWQU6enrYPQt04QOKV35kytA43zh1pvHiBNTxr3
   ZZ8AmXeCqjYwI385rHqi2kyYN8WeYOD6Q+LNhPCG4woRNu7QvUwwjT24r
   UoRDQJy/jAt0NlBUSXN5hnx18KBugbEj36LkU/lzOGQP0JQHhhSaXNTdW
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,303,1665439200"; 
   d="scan'208";a="28261959"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 05 Jan 2023 15:22:09 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 05 Jan 2023 15:22:09 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 05 Jan 2023 15:22:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672928529; x=1704464529;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tuFnK8VwwjuQkvXDvFMbDDO4EQTIYHzwsDN7GFwrY3k=;
  b=dDILwSMK56YRQgp/JlHiDhCLeXkd/ziTUIVj1kG12NsPMUbEDKGdkRte
   HmRCnClPF90DDfGCtkdAdnrThV8yoy6PjLeImrkysWkzFS9KmcNCru1Cz
   o7xslNuvz7fmzISfNQcCXVA1PCvL10rdTLiC02z6kAnu0MMVgkGlkb7b1
   OHI+JLJvHVxNcSlroFEMDXPwwL2AGk2U/kgAyGjm6i90hou0UGwE++Wlb
   ky2RTYYN6YzGrotIrZ2IrH0+EZiocqdnV9Pu9arJ2yj21tasXjNqZ+xj1
   YlBmYrhukUS92l2UPV7Pb1qtk0BMDz/a9OBLGBd75NeCX46ah8E8QnVhw
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,303,1665439200"; 
   d="scan'208";a="28261958"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 05 Jan 2023 15:22:09 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F03AA280056;
        Thu,  5 Jan 2023 15:22:08 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: arm: Move i.MX8MM Cloos PHG Board to TQM entry
Date:   Thu, 05 Jan 2023 15:22:06 +0100
Message-ID: <27440581.gRfpFWEtPU@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230105140135.150502-4-marex@denx.de>
References: <20230105140135.150502-1-marex@denx.de> <20230105140135.150502-4-marex@denx.de>
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

Am Donnerstag, 5. Januar 2023, 15:01:35 CET schrieb Marek Vasut:
> The i.MX8MM Cloos PHG Board is based on TQ-Systems GmbH i.MX8MM TQMa8MQML
> SOM, which results in compatible string in the form:
> "vendor,custom-board", "tqm,som", "fsl,soc"
> Move the binding entry so this triplet can be matched on.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Fabio Estevam <festevam@denx.de>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Add AB from Krzysztof
> V3: - Rebase on shawn/imx/bindings
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> b/Documentation/devicetree/bindings/arm/fsl.yaml index
> 7808eceb99063..96efb9e8cdbb0 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -815,7 +815,6 @@ properties:
>            - enum:
>                - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
>                - boundary,imx8mm-nitrogen8mm  # i.MX8MM Nitrogen Board
> -              - cloos,imx8mm-phg          # i.MX8MM Cloos PHG Board
>                - dmo,imx8mm-data-modul-edm-sbc # i.MX8MM eDM SBC
>                - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
>                - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
> @@ -895,6 +894,7 @@ properties:
>            one compatible is needed.
>          items:
>            - enum:
> +              - cloos,imx8mm-phg           # i.MX8MM Cloos PHG Board
>                - tq,imx8mm-tqma8mqml-mba8mx # TQ-Systems GmbH i.MX8MM
> TQMa8MQML SOM on MBa8Mx - const: tq,imx8mm-tqma8mqml     # TQ-Systems GmbH
> i.MX8MM TQMa8MQML SOM - const: fsl,imx8mm

Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>



