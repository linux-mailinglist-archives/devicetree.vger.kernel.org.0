Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59F8162D47B
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 08:57:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232921AbiKQH5y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 02:57:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231871AbiKQH5v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 02:57:51 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1886F716F3
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 23:57:50 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id s24so1641398ljs.11
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 23:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nFOePCV5AyriYjsyfQ9Ny4GF1k82Nr332eVFKq6WF4k=;
        b=UAXmSv6HSMo0Eb6cEw1VG8mO9IpJubp7nUx72xQtORbXGnqzt1WpUFVrKds/yLzUXI
         3Of+qjYTH59IKUXAoG1jOnhtT3+WRt4Yg2CzaGhXp9lhflaO+5U2kk7zr+jjNHOx73c5
         QW0RvBaxEth3ZBWb7e1Rlp9MIGKLA2mA8uRlfqy/W4Ok7gPk6zQGcyXnkM32mEz9eJEn
         XhSO6xW/dp68JWOp7xHQ6f0JFmHoCtMwmj0jc7aZK8eV99VLtdtNAXy9RGiN2uJkIMIi
         Ui95kN3q14T7+E5mR3BgqyCMvUxfuLphtxO0bPhmMQZBh3N+kIxXALWSlevZ3sF2LM1G
         u8RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFOePCV5AyriYjsyfQ9Ny4GF1k82Nr332eVFKq6WF4k=;
        b=l1smylQ//XcYOjvQ+YwECVWeKuxdi8qcks8Q095oCP4VpJfk7d0VSkuYjpGjZg8R1E
         tiAzrmbOYxZ/8hwUggY8Xoc0caMi6GKNk0PwWp/GWIezoo00AD9Tw560M84ZxzlvGFS9
         Btci0BrE0WFlsKyRvQSsXQglbD1CrpYUgabCq8phinJXeQKEqThbQL4QJRJ3U+tAFuzJ
         9durhOP4qT9nO5PyabQjA2br28trEHc1HBV4PU/N8qVH1i7nJmKt9NyCekvAqFv1xIFH
         I9zLn2f6PNOl52kFck8BeKkPcWSeTqMRO9q7VCYc5ULE/ZxQBUK5XfGKo+aAYExt8anB
         ddLg==
X-Gm-Message-State: ANoB5pm6FtYMAc3g/w3Jtjs4nrvYRhWFf7RNtib6XGh2nwoJUpzQeBgp
        3hdk/B1j+oMbZgb7qrkvccY=
X-Google-Smtp-Source: AA0mqf42Q8b+2cNSrNm06BoY5KV/nytrKYZT88KusUpEO72frdDg1V9mmPgfUID7u/usKHRY69ZwKA==
X-Received: by 2002:a05:651c:338:b0:277:1158:7ebb with SMTP id b24-20020a05651c033800b0027711587ebbmr589418ljp.521.1668671868323;
        Wed, 16 Nov 2022 23:57:48 -0800 (PST)
Received: from mobilestation ([95.79.133.202])
        by smtp.gmail.com with ESMTPSA id 26-20020ac25f5a000000b004ac393ecc34sm21272lfz.302.2022.11.16.23.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 23:57:47 -0800 (PST)
Date:   Thu, 17 Nov 2022 10:57:45 +0300
From:   Serge Semin <fancer.lancer@gmail.com>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: imx6q-pcie: Handle various clock
 configurations
Message-ID: <20221117075745.yvgp4t6qefdbr7vc@mobilestation>
References: <20221109002449.35936-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221109002449.35936-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 09, 2022 at 01:24:47AM +0100, Marek Vasut wrote:
> The i.MX SoCs have various clock configurations routed into the PCIe IP,
> the list of clock is below. Document all those configurations in the DT
> binding document.
> 
> All SoCs: pcie, pcie_bus
> 6QDL, 7D: + pcie_phy
> 6SX:      + pcie_phy          pcie_inbound_axi
> 8MQ:      + pcie_phy pcie_aux
> 8MM, 8MP: +          pcie_aux

This patch does two things at a time:
1. Fixes invalid fourth clock-names entry.
2. Fixes the fsl,imx8mm-pcie/fsl,imx8mp-pcie devices having the
"pcie_aux" clock name required instead of "pcie_phy".

There is a single patch which fixes the only first part of the problem:
Link: https://lore.kernel.org/linux-pci/20221113191301.5526-2-Sergey.Semin@baikalelectronics.ru/

I suggest to consider moving that patch to this series and altering this
patch so one would fix the iMX 8MM/8MP clock names only.

Rob, please note my patchset will fail the dt_binding_check procedure
if that patch is moved from it.

* Please note one nitpick below.

> 
> Acked-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Marek Vasut <marex@denx.de>
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
>       arch/arm64/boot/dts/freescale/imx8mm-verdin-wifi-dahlia.dtb: pcie@33800000: clock-names:2: 'pcie_phy' was expected
> V4: - Reinstate minItems: for clock-names in main section, turn the
>       last two clock-names items into enums to cover all IP variants.
>     - Add another allOf entry for mx6q/mx6qp/mx7d clock-names list.
>     - Adjust clock maxItems in the allOf section.
> V5: - No change
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 73 +++++++++++++++++--
>  1 file changed, 68 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index 376e739bcad40..2df73be0ffbea 100644
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

Unnecessary newline.

-Sergey

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
> -- 
> 2.35.1
> 
> 
