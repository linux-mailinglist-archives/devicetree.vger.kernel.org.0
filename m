Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD284F0131
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 13:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241242AbiDBLlu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 07:41:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241234AbiDBLlu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 07:41:50 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 532618CD9C
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 04:39:58 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so2904425wme.0
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 04:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=awaGy3AgEjkVWY5viWVsdcdecgWlX4P5wwqKYqVk47A=;
        b=OCcipaDDf9yd6e+SAB1jG2Pu61JoysxDu7Xh5IkBfEfV05Id7giu2MWVGfJbIVxAS1
         Th2jEi6XkBu2cMKGD4NsXCEKll//buTp90ViuTWQz2PwHFxNXRnDs/fbiZRJx8H2El1a
         bnI/bcRXXX+qnUIpXHuQkuqHi4a92Afi1tt5Q4NaWcdG8fPkjWX9+tMImm4tOgk9rEfJ
         1PPmJDDVxDUCB4m++M4Wjqdk3FmQNoDIwG+hBcjX5HwMwm8bqdDMVFbKBqXN1wDxhAco
         zrl7Ye1RcfFnVg1LYOosi4oSQK536Tzr6AwePFy50YA0V10RNJ2lsGlU0TzaTGDPdh4M
         kAVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=awaGy3AgEjkVWY5viWVsdcdecgWlX4P5wwqKYqVk47A=;
        b=6M+Bna1DLuQuwwBf5kGdSsHKsj/TklkXYyESLM8Pjf1v9w3om+aaXsrvZ5hmdcElm+
         ZWyaYQWXhnaKm+Ph97IVgWTGY0D8T4buKIHOwm7OJK2bKLbQFktm4OmilrPDPbxsyrMp
         w0Oqxr5OkhtuuYjpj68Dyjv0j/fM0qWjzSvS8WCMx1aYkem8+aZoovJ8Hity+6dg9xkS
         Rjm/cLsFQO8CHPB2mCd9rNBUKeuR4YnEM3SBkf0i2e9MjVQLaiO6ry2RzYjBLxNvV4Zj
         XT1ULY/qDGqWY6sWMY3WwJdkpxbN7UXZxYpOpuxwPjLSb8akVjg95RHz/s9GrSu+0+Qb
         8New==
X-Gm-Message-State: AOAM53015kmefL1GxzghzVUQovlVtwAvnAZxNGmQBHij4KF9rdhtxGm6
        OqT4zNfnrsQjpauoc6QCRchJPw==
X-Google-Smtp-Source: ABdhPJxgPwxQ3TFzbEw3GEzSFdVxepamnd3EAiTRzIuDXOYZeDHeEn98CWlqmTuyc43WWvkuoedIEw==
X-Received: by 2002:a7b:cd01:0:b0:38c:9142:2006 with SMTP id f1-20020a7bcd01000000b0038c91422006mr12362990wmj.4.1648899596890;
        Sat, 02 Apr 2022 04:39:56 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id o9-20020a1c4d09000000b0038ca75056e2sm16692104wmh.45.2022.04.02.04.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 04:39:56 -0700 (PDT)
Message-ID: <6d1353c4-7ecc-c65f-73c0-5f856b72d25e@linaro.org>
Date:   Sat, 2 Apr 2022 13:39:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: Fix 'enum' lists with duplicate entries
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Yunfei Dong <yunfei.dong@mediatek.com>,
        - <patches@opensource.cirrus.com>, linux-media@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20220401141247.2993925-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220401141247.2993925-1-robh@kernel.org>
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

On 01/04/2022 16:12, Rob Herring wrote:
> There's no reason to list the same value twice in an 'enum'. Fix all the
> occurrences in the tree. A meta-schema change will catch future ones.
> 
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Charles Keepax <ckeepax@opensource.cirrus.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Sebastian Reichel <sre@kernel.org>
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Yunfei Dong <yunfei.dong@mediatek.com>
> Cc: - <patches@opensource.cirrus.com>
> Cc: linux-media@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-pm@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> There's also one other occurrence in snps,dwmac.yaml I didn't fix as 
> there's a patch[1] for it which prompted this patch.
> 
> Rob
> 
> [1] https://lore.kernel.org/r/20220401030847epcms1p8cf7a8e1d8cd7d325dacf30f78da36328@epcms1p8
> 
>  .../bindings/arm/tegra/nvidia,tegra20-pmc.yaml        |  1 -
>  Documentation/devicetree/bindings/bus/ti-sysc.yaml    |  1 -
>  .../bindings/media/mediatek,vcodec-encoder.yaml       |  1 -
>  .../devicetree/bindings/pinctrl/cirrus,madera.yaml    | 11 +++++------
>  .../devicetree/bindings/power/supply/bq2415x.yaml     |  1 -
>  5 files changed, 5 insertions(+), 10 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
