Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C92FC4F5DD4
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 14:22:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232790AbiDFMYG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 08:24:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234630AbiDFMXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 08:23:34 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05D2810CF14
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 01:09:28 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id bq8so2557379ejb.10
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 01:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Gqfp2NecHKAauwLOTljdIkk3Q50Ea/cnQshb9luki8c=;
        b=pq64m81I9e0FH9yQUKk/b5lS1MJbaIuBPVWf6sECtzwzZFgInsOH1N8r0J0en4Trgt
         2i/0wmYGWjMXO4UC9k29DuFFahF9A14Xvyxtho8hoedHO+uXjXscOsZXdj2v7F1Gy0uD
         5sNFE5XDk7MMuKryD+pqoyMFkQ4GScqGCn8jOeI/fsrIlwlXbbb4Jn7KS/uL/7sgcH7j
         ijZ5xsxpsLX7EYTtyBVbp/eR777mDnOz3RhkjN16PA21fC11SHJBR1u6H3Wla5bN7xOj
         JofDFb57WhI0avtetitOMQsDxbncGK66ZvxEevs0o3qcIwv1F2cihVKsIqUr7e6RqM2g
         th4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Gqfp2NecHKAauwLOTljdIkk3Q50Ea/cnQshb9luki8c=;
        b=XAFTGLvybpPa7qYXNT2+r6HAJ0WAVulqtcOW1iK8xgCi35LzzoCsjn0Y6yyFSmub/N
         S19VeVw04a4xQ1iGSNY9IjKmm0MXagr19R3sdZlOP93MnkFRzueO/qp+z7oAD+RQ1uWD
         SfXs0wiCN397cNPyj1ukApXxABuYa+EJGw5n0ni2q5tAmWtV9MjtCSlxs1KrKV1DSG0Y
         iTgOKF/WQ6hxiLy5dBCoC1vMaLQIzcnbZcw9kG7FhMbjZ6cgZZ2KjFthqSiWIHqrEUPk
         eA81IPlag/8Oqiri6er4pmb2vtkiFQcLDu4FHyMOsTHmXW1Ao5ROMA5l3QbcpR8qZEaO
         zjKA==
X-Gm-Message-State: AOAM53300oPXJTSSquGjMl94CweZ3tGzjTrYMWpSgj0NCvlwAifGvL7c
        GE29krl0FdTOruc78JnIyj4A6bTXte7R8va3
X-Google-Smtp-Source: ABdhPJwH3PNpR6dqUQ+vOs+ZdjHnyaVifmMlmZRc/y2sBXE1G1a1mHU1WSHCKWCZHNDIpUvpgD2iig==
X-Received: by 2002:a17:906:9744:b0:6da:9e49:9fe3 with SMTP id o4-20020a170906974400b006da9e499fe3mr7146911ejy.319.1649232566546;
        Wed, 06 Apr 2022 01:09:26 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id k14-20020a170906128e00b006e4b67514a1sm6372095ejb.179.2022.04.06.01.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 01:09:26 -0700 (PDT)
Message-ID: <d0bffa9a-0ea6-0f59-06b2-7eef3c746de1@linaro.org>
Date:   Wed, 6 Apr 2022 10:09:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 04/14] dt-bindings: arm: mediatek: document WED binding
 for MT7622
Content-Language: en-US
To:     Felix Fietkau <nbd@nbd.name>, netdev@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Lorenzo Bianconi <lorenzo@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220405195755.10817-1-nbd@nbd.name>
 <20220405195755.10817-5-nbd@nbd.name>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220405195755.10817-5-nbd@nbd.name>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2022 21:57, Felix Fietkau wrote:
> From: Lorenzo Bianconi <lorenzo@kernel.org>
> 
> Document the binding for the Wireless Ethernet Dispatch core on the MT7622
> SoC, which is used for Ethernet->WLAN offloading
> Add related info in mediatek-net bindings.
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Felix Fietkau <nbd@nbd.name>

Thank you for your patch. There is something to discuss/improve.

> ---
>  .../arm/mediatek/mediatek,mt7622-wed.yaml     | 50 +++++++++++++++++++
>  .../devicetree/bindings/net/mediatek-net.txt  |  2 +
>  2 files changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7622-wed.yaml

Don't store drivers in arm directory. See:
https://lore.kernel.org/linux-devicetree/YkJa1oLSEP8R4U6y@robh.at.kernel.org/

Isn't this a network offload engine? If yes, then probably it should be
in "net/".

> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7622-wed.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7622-wed.yaml
> new file mode 100644
> index 000000000000..787d6673f952
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7622-wed.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/arm/mediatek/mediatek,mt7622-wed.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: MediaTek Wireless Ethernet Dispatch Controller for MT7622
> +
> +maintainers:
> +  - Lorenzo Bianconi <lorenzo@kernel.org>
> +  - Felix Fietkau <nbd@nbd.name>
> +
> +description:
> +  The mediatek wireless ethernet dispatch controller can be configured to
> +  intercept and handle access to the WLAN DMA queues and PCIe interrupts
> +  and implement hardware flow offloading from ethernet to WLAN.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - mediatek,mt7622-wed
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      wed0: wed@1020a000 {

Generic node name, "wed" is specific. Maybe "network-offload"? Or
"network-accelerator"? You probably know better what this device does,
so maybe come with some generic name?

The same in DTS patch.

The bindings themself look ok.

Best regards,
Krzysztof
