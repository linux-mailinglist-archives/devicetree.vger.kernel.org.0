Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD9A75A699A
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 19:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231299AbiH3RVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 13:21:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbiH3RUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 13:20:40 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3927618E13
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:19:51 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id bt10so16473228lfb.1
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Jg6jD+CrZfA3+ErsJegtnFyWel1/wg6TBa1uQnpYkRk=;
        b=WaIC5OO9eshVf6BBCqhHQeOCg7yAkPDaJ88dkCrizU24wDn+NJORKY5EZxxa4LAAB8
         VOWto4Sl4pFLdVEHBmNE4+lbugz5Kd99gyFm8hsGWv7RioRLj4MxHLoP4JZ6BtDUS6pu
         T6KdxyVxEOaZ2vtrW2hyUIgrv00n7knWGipMO6lPCBd5+dyrjecZBsIGrpBb6bsS2aV2
         aEeE8xShfrZ24KEx/Zju1SgylZ8YViLbYULR4gsE+Xg/xkSJE3ntGluUNOmeroVkzFhU
         xX/TNr2hZ7203joOlAVn67Ovn3qWnA/VBJ9jbLGsjmv4kAFBzR2asTosXhvgICO1vWp1
         v/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Jg6jD+CrZfA3+ErsJegtnFyWel1/wg6TBa1uQnpYkRk=;
        b=OURRqNLzwHJtqGdEd1bJSmYU/XMzwoMtjQ19lF+qaeaiYOi1ewUslMClO+PUvnZxSi
         HouwPz82BP7zi0B99fu7dXmvhdSO5mPHWn9LDt2/GtxGXiVan8OuXrt/VHlqWc6J3lCp
         GZL7ntxIdLRS4+X1l40jvXmQ1PR7RlYmsZhTTyZzqnRqmyda3PVKWfyOhEOC0BCVWFV8
         3KKl9+3u2AVXxrzHRePsZOVfaJLcV8sgmvg35TOkGrB7kJoOuEksS6GVDIc80CDoj1i2
         4x+2QC9Yzmy6F2A/v1Me8/NrX3EyfaW3IcZzo+f5d3hW5+iYsBzGDwgltOmkCGiHMEXu
         mx5A==
X-Gm-Message-State: ACgBeo0KoJg7k279vAVuxQWHU8fDE+bysK3/QG2IERqwr3edrRxNSDqW
        hgRgVWMIbgELcIdMeRSFK9+iwQ==
X-Google-Smtp-Source: AA6agR5jQT5br8ySZXEzSuLI6UszqeyyUvObvZcBRyykloe0v1NhNfv4SgXtPIKFHfDQo3EkpSorYQ==
X-Received: by 2002:a05:6512:6cc:b0:48d:acaa:8a66 with SMTP id u12-20020a05651206cc00b0048dacaa8a66mr8786986lff.272.1661879988498;
        Tue, 30 Aug 2022 10:19:48 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id u14-20020a2eb80e000000b002647530f3b6sm1035235ljo.137.2022.08.30.10.19.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 10:19:47 -0700 (PDT)
Message-ID: <a3a93acc-434e-4a94-6ba6-6a71f2da8736@linaro.org>
Date:   Tue, 30 Aug 2022 20:19:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v14 2/3] dt-bindings: edac: nuvoton: Add document for NPCM
 memory controller
Content-Language: en-US
To:     Marvin Lin <milkfafa@gmail.com>, linux-edac@vger.kernel.org,
        rric@kernel.org, james.morse@arm.com, tony.luck@intel.com,
        mchehab@kernel.org, bp@alien8.de, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org
Cc:     devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
        benjaminfair@google.com, yuenn@google.com, venture@google.com,
        KWLIU@nuvoton.com, YSCHU@nuvoton.com, JJLIU0@nuvoton.com,
        KFTING@nuvoton.com, avifishman70@gmail.com, tmaimon77@gmail.com,
        tali.perry1@gmail.com, ctcchien@nuvoton.com, kflin@nuvoton.com
References: <20220830022238.28379-1-milkfafa@gmail.com>
 <20220830022238.28379-3-milkfafa@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830022238.28379-3-milkfafa@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 05:22, Marvin Lin wrote:
> Add dt-bindings document for Nuvoton NPCM memory controller.
> 
> Signed-off-by: Marvin Lin <milkfafa@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../edac/nuvoton,npcm-memory-controller.yaml  | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/edac/nuvoton,npcm-memory-controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/edac/nuvoton,npcm-memory-controller.yaml b/Documentation/devicetree/bindings/edac/nuvoton,npcm-memory-controller.yaml
> new file mode 100644
> index 000000000000..d5ef7e7a65f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/edac/nuvoton,npcm-memory-controller.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/edac/nuvoton,npcm-memory-controller.yaml#

This should be in memory-controllers directory.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton NPCM Memory Controller Device Tree Bindings

s/Device Tree Bindings//

Best regards,
Krzysztof
