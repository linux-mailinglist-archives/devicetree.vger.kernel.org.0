Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D5B7C617887
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 09:19:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbiKCITk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 04:19:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbiKCITj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 04:19:39 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA20C636A
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 01:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667463578; x=1698999578;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SxPRLF8w8cMX2Xsix5k0pwKa5dcGvrhxvAjKKiWRyTo=;
  b=HcdPMxhp4JhOhoItYb76sZJmOQu1vdTsBPHVaiEvM60sC+r+a+D8tD9Z
   IY0XDUGYpTfKaawPP2mtGE6cJmgmFv8edk7xhuJ/HPehU4NcUI7UFQXYN
   cUMom39nIIc7gd8O7Q/stf9PDVFakhkpmaLYDhCDVpPUdu2asQEjR45/X
   hNzqYXS4v/kXDa9bbyEiw73/vutbPfnyWVwBu/trE9hip/J6sobs/ijvd
   s0KGoyqKlH1OlBJCyGkndN7I4snZdtXXKgiDcKKUfpC7/Mkil0CvsokFv
   8zc6emBzuKIl2sZ798JCJlfRFIX7bBDXmF+2AtNa62bykPX5pCDnfX5Y5
   w==;
X-IronPort-AV: E=Sophos;i="5.95,235,1661810400"; 
   d="scan'208";a="27127256"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 03 Nov 2022 09:19:36 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 03 Nov 2022 09:19:36 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 03 Nov 2022 09:19:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667463576; x=1698999576;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SxPRLF8w8cMX2Xsix5k0pwKa5dcGvrhxvAjKKiWRyTo=;
  b=ChWL2YZu8twBLev63/rm7InIth7i++jpLWiZwcDc8B32SRCfgYMwglWK
   oSQDPz0JC/w1Zb8+dLwNK17BgItJxKSAYJ9xHP0CDlukfCBb+uQ8NGAQf
   XIaJ16eiLSz42gxaIHDALqNWiFKJkX9Deh6qV4qAjI3J+vY+2NVjipDsx
   aL5Yfl0T+rSlot0QshKVAaU5KhtTMobY/H1bWFUOx//ktaH83mmdf2TeN
   5b3A2OeTaas7e32wTzsZFi97w9MbvYq1M3kh9Y2ZkOjXYvvIIs7yAHEmf
   1VI6RpTLiAcafmNoHxTi3SSo7q/jfWCmMmY+6osqp3+G5pUjEaCXNu09a
   g==;
X-IronPort-AV: E=Sophos;i="5.95,235,1661810400"; 
   d="scan'208";a="27127255"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 03 Nov 2022 09:19:35 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AE1F9280056;
        Thu,  3 Nov 2022 09:19:35 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Marek Vasut <marex@denx.de>
Cc:     Anson Huang <Anson.Huang@nxp.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] dt-bindings: nvmem: snvs-lpgpr: Fix i.MX8M compatible strings
Date:   Thu, 03 Nov 2022 09:19:34 +0100
Message-ID: <2386257.iZASKD2KPV@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221102222543.153026-1-marex@denx.de>
References: <20221102222543.153026-1-marex@denx.de>
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

Am Mittwoch, 2. November 2022, 23:25:43 CET schrieb Marek Vasut:
> The compatible strings for "fsl,imx8m*-snvs-lpgpr" always contain
> the fallback "fsl,imx7d-snvs-lpgpr" compatible in DTs too, since
> the fallback compatible is what the driver matches on, this way:
>   compatible = "fsl,imx8mm-snvs-lpgpr", "fsl,imx7d-snvs-lpgpr"
> The older "fsl,imx7d-snvs-lpgpr" and "fsl,imx6*-snvs-lpgpr" used
> only that single compatible string.
> 
> Document both options in the binding document.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Anson Huang <Anson.Huang@nxp.com>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Oleksij Rempel <linux@rempel-privat.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  .../devicetree/bindings/nvmem/snvs-lpgpr.yaml | 20 +++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
> b/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml index
> e374aa7891ae7..ec20e33d9b8f8 100644
> --- a/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/snvs-lpgpr.yaml
> @@ -11,14 +11,18 @@ maintainers:
> 
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx6q-snvs-lpgpr
> -      - fsl,imx6ul-snvs-lpgpr
> -      - fsl,imx7d-snvs-lpgpr
> -      - fsl,imx8mm-snvs-lpgpr
> -      - fsl,imx8mn-snvs-lpgpr
> -      - fsl,imx8mp-snvs-lpgpr
> -      - fsl,imx8mq-snvs-lpgpr
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx8mm-snvs-lpgpr
> +              - fsl,imx8mn-snvs-lpgpr
> +              - fsl,imx8mp-snvs-lpgpr
> +              - fsl,imx8mq-snvs-lpgpr
> +          - const: fsl,imx7d-snvs-lpgpr
> +      - enum:
> +          - fsl,imx6q-snvs-lpgpr
> +          - fsl,imx6ul-snvs-lpgpr
> +          - fsl,imx7d-snvs-lpgpr
> 
>  required:
>    - compatible

Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>



