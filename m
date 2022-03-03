Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 079A94CC480
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 19:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235279AbiCCSBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 13:01:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234752AbiCCSBr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 13:01:47 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B499194A8F
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 10:01:02 -0800 (PST)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 847463F5FE
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 18:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646330459;
        bh=IdYKuRpoQlWJKJqHmP4kdLinl0/TpAzOJ3W1H49SOHA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=UBD3w5TUU/Zhq7jIhenusHOEZSM4hw9sxYq+nIDy56G5VRYfi2lhCybPtI4pRP5h0
         9w0TvQUr3fySAdd0CAO4F5ZEonuT0d7Aw6t/0AvHYwtrYNtZ/Nwj9Cm3GliH8lu2Gb
         /tA0GuZ7n4k64pACoOPWcevR7lKXOVFHCXk8Qz1k3nsPyWqxFEbXt1yCVXiYDBTvI6
         SiWhGfxiXwNeRlzATvke0LK00RUilGc15ea6IkDsdpjbagwZejTY1T7dlmJSIyGEmA
         HFuI+gR26ASxX7BFztjHYTxkaelySh/tkUiwanLWbciSKL5BFtpRkAeZF7DZ8mEiAa
         INi0yGui9yMGw==
Received: by mail-wr1-f69.google.com with SMTP id t15-20020adfdc0f000000b001ef93643476so2324793wri.2
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 10:00:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IdYKuRpoQlWJKJqHmP4kdLinl0/TpAzOJ3W1H49SOHA=;
        b=gCrCTnLU8kHam2fpxtha4KSc96W3dqpyS53a5iPbjnDJFJlENV6f7ha2pV2eMUlmnl
         bzpfcXiJzAjeLMO9nVhGSBBBUerr08WRcsEGL4w5rGQOAcRsEHcDPzYiQJLw+R6egBF+
         /JKOsLRuIPgMIbOeprQ4Khkuf0D5C4ISpnlbVWjB0amag1+Nf81cgt/W5J9CxpiTcOQw
         xWB0/db1vq9E/KBn/88Ib+RDadN33OcUAb6QGb5jtS25nNDCLgF3bqWXBsSR0UjrTL5b
         IO5dmdI5r9O6B7y44q+e1KALOc9ehQ/ybLu6sOhf/LxYjYX9mLuGLzcftO1sPmRovywi
         ru9Q==
X-Gm-Message-State: AOAM531A0eCbllPw9csbCdbBw8q8GzplNVANOWczV9whWTFTq+jQgDR3
        p1o4aj6Gne/bleBn0TktitncN/bS/mEKgDWFxBrikHXdkOvhKmppu0f7JtnWCOpU/1nl+CUWn1G
        Me26Ktw4tOk4/eSY31Y1pgCd4wPHe87QZ6ADdHiw=
X-Received: by 2002:a05:6000:1787:b0:1e7:aeac:eb00 with SMTP id e7-20020a056000178700b001e7aeaceb00mr28314769wrg.141.1646330457439;
        Thu, 03 Mar 2022 10:00:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwcUUp/VkxET1O/z2n1UvXKsWsZKCgRWxpJ2ac80sDA6uo4FyeX3pHAb3asJ2/klasvI3ebWA==
X-Received: by 2002:a05:6000:1787:b0:1e7:aeac:eb00 with SMTP id e7-20020a056000178700b001e7aeaceb00mr28314754wrg.141.1646330457158;
        Thu, 03 Mar 2022 10:00:57 -0800 (PST)
Received: from [192.168.0.138] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id f16-20020adff590000000b001f0122f63e1sm2592891wro.85.2022.03.03.10.00.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 10:00:56 -0800 (PST)
Message-ID: <0d7b9a17-f5fc-69e5-173f-1c897522d3f3@canonical.com>
Date:   Thu, 3 Mar 2022 19:00:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: Add apple,efuses
Content-Language: en-US
To:     Sven Peter <sven@svenpeter.dev>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Mark Kettenis <kettenis@openbsd.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220227115743.69059-1-sven@svenpeter.dev>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227115743.69059-1-sven@svenpeter.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/02/2022 12:57, Sven Peter wrote:
> Apple SoCs come with eFuses used to store factory-programmed data
> such as calibration settings for the PCIe and Type-C PHY.
> 
> Signed-off-by: Sven Peter <sven@svenpeter.dev>
> ---
>  .../bindings/nvmem/apple,efuses.yaml          | 50 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/apple,efuses.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/apple,efuses.yaml b/Documentation/devicetree/bindings/nvmem/apple,efuses.yaml
> new file mode 100644
> index 000000000000..a735d54856ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/apple,efuses.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/apple,efuses.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Apple SoC eFuse-based NVMEM
> +
> +description: |
> +  Apple SoCs such as the M1 contain factory-programmed eFuses used to e.g. store
> +  calibration data for the PCIe and the Type-C PHY or unique chip identifiers such
> +  as the ECID.
> +
> +maintainers:
> +  - Sven Peter <sven@svenpeter.dev>
> +
> +allOf:
> +  - $ref: "nvmem.yaml#"
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - apple,t8103-efuses
> +          - apple,t6000-efuses
> +      - const: apple,efuses
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    efuse@3d2bc000 {
> +        compatible = "apple,t8103-efuses", "apple,efuses";
> +        reg = <0x3d2bc000 0x1000>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        ecid: efuse@500 {
> +              reg = <0x500 0x8>;

Mismatched indentation. Rest looks good.

Best regards,
Krzysztof
