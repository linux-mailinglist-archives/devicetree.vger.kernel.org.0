Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C62BA622493
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 08:23:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbiKIHXB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 02:23:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbiKIHXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 02:23:01 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 189D71DA5E
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 23:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667978579; x=1699514579;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=r5AS8oIHpyzuOh41/a1bWf+zGuXF46zGbGnB3FikE9Q=;
  b=nEJaqly9Vi4s+6cmP9dWJCg1Yt/KnMa9ndoZW8kvb9qu0NV/Yu/d725E
   uE8Tk9bPcCViCOqUwxF0I1tNXgWwtS9D3Cs09Xj/qfWj8g2bQe2/UlT6M
   CeO2+pc8kQ/25Ubi/y+i3erKDlTqAKYhIn63B/FyKHiomMYZKvOauqaL9
   3SoC9/FoqOrf9NgVv7qE0+zoAn415rbDoP1icr7tX/xUebbdSIh/a+1XS
   Y/FrDLJ7SlvnHLd1CIGriB33Y6Qn2gdsqBE+z5E6sXEy4rY3u4XdlLRIE
   ywU48UFmi9oyPPhokAxD4kXJxg8fOsZI3D5wHzcvMGn9SxiresuZ4ePS7
   g==;
X-IronPort-AV: E=Sophos;i="5.96,149,1665439200"; 
   d="scan'208";a="27242576"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Nov 2022 08:22:57 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 09 Nov 2022 08:22:57 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 09 Nov 2022 08:22:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667978577; x=1699514577;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=r5AS8oIHpyzuOh41/a1bWf+zGuXF46zGbGnB3FikE9Q=;
  b=oBPgUrB6HH+7wgJNHLCCDFqsaNza+YgqHg97Nhh/QR6+89zbqpWUh5Qr
   wbpAho9Dj4wcoEDRrjvBffPrMhAJt/h92CeMJ4mCo3MOuAGwNzJluHLyc
   7rsup0PfGpvSjMICZOQ+NQ+y9zWfZw2fgXQF2h/BFJWnQzh84prVXroIO
   bLkVQVNl/sqj0BDlwoeNzsj4c+XAKBMnimyGKDEv/AYX3G/qXthWE2OMd
   msiiRLosepLY39fnqCuQbDG3H98uh/C4wukFA4ONyQnSPU8VKCU6PmIEb
   7/tQrB2xfsuuSBSeGFgRk3/ruEkRyOzB1REC8GK+TGnASLadSovenolcd
   w==;
X-IronPort-AV: E=Sophos;i="5.96,149,1665439200"; 
   d="scan'208";a="27242575"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Nov 2022 08:22:56 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 633B6280056;
        Wed,  9 Nov 2022 08:22:56 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: imx6q-pcie: Handle various clock configurations
Date:   Wed, 09 Nov 2022 08:22:51 +0100
Message-ID: <21665881.EfDdHjke4D@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221109002449.35936-1-marex@denx.de>
References: <20221109002449.35936-1-marex@denx.de>
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

Hi Marek,

Am Mittwoch, 9. November 2022, 01:24:47 CET schrieb Marek Vasut:
> The i.MX SoCs have various clock configurations routed into the PCIe IP,
> the list of clock is below. Document all those configurations in the DT
> binding document.
> 
> All SoCs: pcie, pcie_bus
> 6QDL, 7D: + pcie_phy
> 6SX:      + pcie_phy          pcie_inbound_axi
> 8MQ:      + pcie_phy pcie_aux
> 8MM, 8MP: +          pcie_aux
> 
> Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

I just noticed this is a separate series. Please note that there is already 
another patch doing the same at [1]

Regards,
Alexander

[1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/
20221107204934.32655-2-Sergey.Semin@baikalelectronics.ru/

> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: NXP Linux Team <linux-imx@nxp.com>
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Alex
> V3: - Duplicate clock-names maxItems to mx6sx and mx8mq compatibles
>     - Flatten the if-else structure
>     - The validation no longer works and introduces errors like these:
>       arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb:
> pcie@33800000: clock-names:2: 'pcie_phy' was expected V4: - Reinstate
> minItems: for clock-names in main section, turn the last two clock-names
> items into enums to cover all IP variants. - Add another allOf entry for
> mx6q/mx6qp/mx7d clock-names list. - Adjust clock maxItems in the allOf
> section.
> V5: - No change
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 73 +++++++++++++++++--
>  1 file changed, 68 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml index
> 376e739bcad40..2df73be0ffbea 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -14,9 +14,6 @@ description: |+
>    This PCIe host controller is based on the Synopsys DesignWare PCIe IP
>    and thus inherits all the common properties defined in snps,dw-pcie.yaml.
> 
> -allOf:
> -  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> -
>  properties:
>    compatible:
>      enum:
> @@ -60,8 +57,8 @@ properties:
>      items:
>        - const: pcie
>        - const: pcie_bus
> -      - const: pcie_phy
> -      - const: pcie_inbound_axi for imx6sx-pcie, pcie_aux for imx8mq-pcie
> +      - enum: [ pcie_phy, pcie_aux ]
> +      - enum: [ pcie_aux, pcie_inbound_axi ]
> 
>    num-lanes:
>      const: 1
> @@ -177,6 +174,72 @@ required:
> 
>  unevaluatedProperties: false
> 
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx6q-pcie
> +              - fsl,imx6qp-pcie
> +              - fsl,imx7d-pcie
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: pcie
> +            - const: pcie_bus
> +            - const: pcie_phy
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx6sx-pcie
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: pcie
> +            - const: pcie_bus
> +            - const: pcie_phy
> +            - const: pcie_inbound_axi
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx8mq-pcie
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: pcie
> +            - const: pcie_bus
> +            - const: pcie_phy
> +            - const: pcie_aux
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8mm-pcie
> +              - fsl,imx8mp-pcie
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: pcie
> +            - const: pcie_bus
> +            - const: pcie_aux
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/imx6qdl-clock.h>




