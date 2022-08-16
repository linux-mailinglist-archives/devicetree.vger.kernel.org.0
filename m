Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE63B5958AA
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 12:40:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234807AbiHPKky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 06:40:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234886AbiHPKkD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 06:40:03 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEBDBCAC81
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 02:55:51 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z25so14219986lfr.2
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 02:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ouC/nNUCrt3P9AuPPNvbcQrm5hP3Vq91u5mO0hzhgiE=;
        b=M15UJ2gOPRlQBuniCuEzZ1DZQGIvMn6hZQugOgpxtBBpI+dVn7JouVQf2GgunA7fn2
         JGCezc6VJWURz7ImxJVhUQ1Qz5aMgHzjtlZdj+33GXQ46q1BYMSGq5SkRD4fwJvMqPlP
         o63wR8dJ9no0B/xph6tdn/7+uc/0sl8zt6epZgRD/qN3z1cKpcLBCKbuyL8WgxuHRK5z
         j0FEcfQJZS9KCpo0LE3cW5Fl8nR+LfkaOKs9KNfAefMqQWnqobQJ5PH4mP4vTRQ8FGQq
         V4G8ZzVuA8C3UdrDZMBNP6yZWs69XBpsV8EwXxXiLt4gvD7s6uFhLcmP34FCmvno2tCF
         rR1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ouC/nNUCrt3P9AuPPNvbcQrm5hP3Vq91u5mO0hzhgiE=;
        b=iSf3QkgEqpUnECz0YRP+CZjLjND5jQuYsU/wnkOFLGixsylyUSwkl24il1AWHJoyvo
         s1dmy7kHutKc95GibZB5jAGTlsV0kVzSLdUs+ZPEUvy6r53WG+Pwuj+VorxpCzL6phIT
         rBuqvAaVEwDmk21njYUF2nnF37ARgaTzrEC/8ljgc+bVE0uI3nU0C10xfHnIwsJ6SVN1
         bZUruAUEpjwoQt51NhdtXoKNEtcVH3lRiWQg5p+y07gthDCc/Kt2VKQg9bYOK2jmDl9N
         lNHsNwd4R4AoYxDJxfETea6SURd/F7V8AqQH7sjWq1L4JS59NGL4Ez0o/U27AQ5NBbsZ
         HZ+Q==
X-Gm-Message-State: ACgBeo287NfKToNEJlGzM7dsbZ6qVm8NbbY7Gjmoh7BzW06xkFoQgh7m
        fWK1pE0yY5roZ4G9g0xhrtzZpQ==
X-Google-Smtp-Source: AA6agR4ck7myM8UAKNZmScqtxz9CNJgaLd86fBns30J2pD7pFR0A3bi0Rz8iFtZoxIVrvkf43riM/w==
X-Received: by 2002:a19:3856:0:b0:491:7b45:7617 with SMTP id d22-20020a193856000000b004917b457617mr4301867lfj.47.1660643749373;
        Tue, 16 Aug 2022 02:55:49 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id v5-20020a2e2f05000000b0025e4dcc48b1sm1724683ljv.19.2022.08.16.02.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 02:55:48 -0700 (PDT)
Message-ID: <c4ec080a-b8b1-e3a9-c9d7-063e138c9bb8@linaro.org>
Date:   Tue, 16 Aug 2022 12:55:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/4] regulator: dt-bindings: Add Allwinner D1 LDOs
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220815043436.20170-1-samuel@sholland.org>
 <20220815043436.20170-2-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815043436.20170-2-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2022 07:34, Samuel Holland wrote:
> The Allwinner D1 SoC contains two pairs of in-package LDOs. One pair is
> for general purpose use. LDOA generally powers the board's 1.8 V rail.
> LDOB generally powers the in-package DRAM, where applicable.
> 
> The other pair of LDOs powers the analog power domains inside the SoC,
> including the audio codec, thermal sensor, and ADCs. These LDOs require
> a 0.9 V bandgap voltage reference. The calibration value for the voltage
> reference is stored in an eFuse, accessed via an NVMEM cell.
> 
> Neither LDO control register is in its own MMIO range; instead, each
> regulator device relies on a regmap/syscon exported by its parent.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
> Changes in v3:
>  - Add "reg" property to bindings
>  - Add "unevaluatedProperties: true" to regulator nodes
>  - Minor changes to regulator node name patterns
>  - Remove system-ldos example (now added in patch 3)
> 
> Changes in v2:
>  - Remove syscon property from bindings
>  - Update binding examples to fix warnings and provide context
> 
>  .../allwinner,sun20i-d1-analog-ldos.yaml      | 74 +++++++++++++++++++
>  .../allwinner,sun20i-d1-system-ldos.yaml      | 37 ++++++++++
>  2 files changed, 111 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-analog-ldos.yaml
>  create mode 100644 Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-system-ldos.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-analog-ldos.yaml b/Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-analog-ldos.yaml
> new file mode 100644
> index 000000000000..d6964b44ef21
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-analog-ldos.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/allwinner,sun20i-d1-analog-ldos.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner D1 Analog LDOs
> +
> +description:
> +  Allwinner D1 contains a set of LDOs which are designed to supply analog power
> +  inside and outside the SoC. They are controlled by a register within the audio
> +  codec MMIO space, but which is not part of the audio codec clock/reset domain.
> +
> +maintainers:
> +  - Samuel Holland <samuel@sholland.org>

Please follow the example schema. Order is: title, maintainers, description.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun20i-d1-analog-ldos
> +
> +  reg:
> +    maxItems: 1
> +
> +  nvmem-cells:
> +    items:
> +      - description: NVMEM cell for the calibrated bandgap reference trim value
> +
> +  nvmem-cell-names:
> +    items:
> +      - const: bg_trim
> +
> +patternProperties:
> +  "^(a|hp)ldo$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - nvmem-cells
> +  - nvmem-cell-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    audio-codec@2030000 {
> +        compatible = "simple-mfd", "syscon";

This cannot be on its own. Both require device specific compatible.

> +        reg = <0x2030000 0x1000>;
> +        ranges;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        regulators@2030348 {
> +            compatible = "allwinner,sun20i-d1-analog-ldos";
> +            reg = <0x2030348 0x4>;
> +            nvmem-cells = <&bg_trim>;
> +            nvmem-cell-names = "bg_trim";
> +
> +            reg_aldo: aldo {
> +                regulator-min-microvolt = <1800000>;
> +                regulator-max-microvolt = <1800000>;
> +            };
> +
> +            reg_hpldo: hpldo {
> +                regulator-min-microvolt = <1800000>;
> +                regulator-max-microvolt = <1800000>;
> +            };
> +        };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-system-ldos.yaml b/Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-system-ldos.yaml
> new file mode 100644
> index 000000000000..e3e2810fb3d7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/allwinner,sun20i-d1-system-ldos.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/allwinner,sun20i-d1-system-ldos.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner D1 System LDOs
> +
> +description:
> +  Allwinner D1 contains a pair of general-purpose LDOs which are designed to
> +  supply power inside and outside the SoC. They are controlled by a register
> +  within the system control MMIO space.

Fix order.


> +
> +maintainers:
> +  - Samuel Holland <samuel@sholland.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun20i-d1-system-ldos
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^ldo[ab]$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false


Example please.

Best regards,
Krzysztof
