Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD70764CB82
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 14:45:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238383AbiLNNpA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 08:45:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237486AbiLNNoz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 08:44:55 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40E4126AB8
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:44:54 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id p8so10469929lfu.11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SAZXiFlIWcGcZs4iD7f5ZAHiIB39JWwc3dN1lTl5nhA=;
        b=J8FBnrz0YdQ/sOInJpVYe869bTga+jId6Ik9t7B9hP8xvUDpNRe9GZccodCN8S6d/s
         JcfpgThOTS1Vw0So2DINYSmBJE7ycMRs3q/VTK2jhNEaCtweuTsRppNxDjbzzkHYsOiK
         Fq4XsDSfmYpIhf48tFvSsZg4VB4bj/FmlGER3s42wu84z0m12sHS5W3G8EMKsA20YQ60
         6owoeBDkLTZF3vTUyThO8t9MjFj58O1nz9IZoChtqjIMEGeg2NJ1IWKHKCrFNXnDa7bI
         ynGl6dkn/bcjliHtUTSD5uGjcbQUKZgH0z3pT0WoS6nh8IoILNIgMBSZM4Tj/MCd/I3h
         5mOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAZXiFlIWcGcZs4iD7f5ZAHiIB39JWwc3dN1lTl5nhA=;
        b=kGJ3Ze1ArMaO5piqbGmkOPmgYuaz+Pwy8ooC6hirJnw/REwr4NaJ++34VP1RVSsqOc
         /0adKvN6+VgH3maB2sXaM/uG1rg3Tm0e8aCJ5PUE6t2BCdLp4anCFJXuBHaM5goPqonq
         6Un2qqBgMnPL5ixe4mvtzo4J1FzSIgV/oIecD35R6uaNSHeyHdUGtQx8e24hMsYBmtfc
         vY9xMnskv1AhZ/rusx63cJ7aFiEs/W7bXWyme+vOb2dOHrJ40nIBGEOgJyEA69SXknVC
         3lqo9KtC6lryQSh2V+LiU8At/MQTVuAeS9KQ3utftGYU9Wzi3D4NxCaQFLj9WdssHxcI
         hiWg==
X-Gm-Message-State: ANoB5pkSl33LIA3Daip2X+6EqIuUkitLuJR65z8MjQ5nAOjJm4awKV34
        2VqIID/mXMTdfheIDQt9JQ37lg==
X-Google-Smtp-Source: AA0mqf6n44EbhHRHFjewC3IwonYtds+Udlb1dmBWFi3tjxXSUTvmeXEJq5WNFo3idtDr5FaAJlNyXg==
X-Received: by 2002:a05:6512:3992:b0:4a4:68b7:dec3 with SMTP id j18-20020a056512399200b004a468b7dec3mr8667423lfu.31.1671025492655;
        Wed, 14 Dec 2022 05:44:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id g7-20020a19e047000000b004b58fadba35sm810013lfj.296.2022.12.14.05.44.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 05:44:52 -0800 (PST)
Message-ID: <2c799103-3e5f-f288-3c78-6360c17a8e45@linaro.org>
Date:   Wed, 14 Dec 2022 14:44:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 2/2] dt-bindings: Add Arm corstone500 platform
Content-Language: en-US
To:     Emekcan Aras <emekcan.aras@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221214132404.439882-1-emekcan.aras@arm.com>
 <20221214132404.439882-3-emekcan.aras@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221214132404.439882-3-emekcan.aras@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2022 14:24, Emekcan Aras wrote:
> From: Emekcan Aras <Emekcan.Aras@arm.com>

1. Your From does not match SoB exactly. Avoid it and make it consistent.

2. Use subject prefixes matching the subsystem (git log --oneline -- ...).

3. Please use scripts/get_maintainers.pl to get a list of necessary
people and lists to CC.  It might happen, that command when run on an
older kernel, gives you outdated entries.  Therefore please be sure you
base your patches on recent Linux kernel.


> 
> Add bindings to describe implementation of
> the ARM Corstone500 platform.

Please wrap commit message according to Linux coding style / submission
process:
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

> 
> Signed-off-by: Emekcan Aras <emekcan.aras@arm.com>
> ---
>  .../bindings/arm/arm,corstone500.yaml         | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone500.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,corstone500.yaml b/Documentation/devicetree/bindings/arm/arm,corstone500.yaml
> new file mode 100644
> index 000000000000..cfe41f7760fd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,corstone500.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,corstone500.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Corstone500
> +
> +maintainers:
> +  - Emekcan Aras <emekcan.aras@arm.com>
> +  - Rui Miguel Silva <rui.silva@linaro.org>
> +
> +description: |+
> +  Corstone-500 is an ideal starting point for feature rich System on Chip
> +  (SoC) designs based on the Cortex-A5 core. These designs can be used in
> +  Internet of Things (IoT) and embedded products.

Yet you do not allow to re-use your DTS, so how this re-usage of design
will happen?

> +
> +  Corstone-500 includes most of the Arm IP in the SSE-500 subsystem and
> +  example integration layer, an FPGA, and access to modelling options.
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    items:

You have one item, so drop "items"

> +      - const: arm,corstone500
> +

required:
  - compatible

> +additionalProperties: true
> +
> +...

Best regards,
Krzysztof

