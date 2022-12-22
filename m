Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F20C5653F07
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 12:29:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235169AbiLVL30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 06:29:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235487AbiLVL3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 06:29:24 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E181B27916
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 03:29:22 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id z26so2283595lfu.8
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 03:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cw6ONA6gogjtYj6TjrALT+rkM8fzFVFzYIu5Fk/INfw=;
        b=jt/q0ACPAFc/g/Zv9uCt4zdNZswa+Wx4an9/VKA5Jg8SWEXOlAZmiiL3ErCYkKE54c
         kW9vnG6spQrzTHU+D6zGnCdeDo9YIJrAEnOFOwhq0Vo7TA+EW1MKPbC1q+8wk4wT4cIH
         lPrKENY8COJZkD6sjJ0ZX/5QLwD8+j5IXMlFzADBXRRKtCEqXV8OAIJv7vMWZgEoagZh
         fq3DnYKWuHgyNcTfXlgp1zI1BIGR3X16/uy7KtYwciMsDPJ2w2cyQA5Ki8JXiuXFeQl/
         CUsmbnRVZodZ2ffjUSJDf5VVMfDCsu07kcwxOoohA+qeH3oSdcT6LYDOZzBqJ2TjumZg
         LLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cw6ONA6gogjtYj6TjrALT+rkM8fzFVFzYIu5Fk/INfw=;
        b=OQf8YtdozZc2szbxNFFKquBpmQhcr44PDoOxIDJlzjb5hvL861fRy24HteqVhx3sLr
         x2+iUjAHqJLNrohB+/Smsul40Bn0ZDLSO772Mbt79LDNlpV1mwb+88ZvNZ7sVHbEldc5
         Ej3NGpdoA9IHog6uRgOU2m9gbNJuUMYUJNUs+fnWgj/l8g39XvPptO8DxJGeLVsfjneD
         Xhrug8++y4wKs+4KUoiP2z8wNqho+1RM8LXTJvv4oqkjC3ci2Pw2cK3cVofWjD3miVIE
         /JrAN6+I0vAkXEqa4oUkvpFCqH5THH9ydmkOU+l/TZJmPd8yGixk8qVvXwTyxRGmX5vt
         7FMg==
X-Gm-Message-State: AFqh2kpCjubEMu12UxfOxirWwJCM6iiK1Z6EzA8/KBn1kX4YwMV8rzVz
        liBv0/4p+cb5FBtjIiT6CVtYKw==
X-Google-Smtp-Source: AMrXdXvh9kv2LIv3hops2Rq43VUnBTN92hH3cTcNK0tsh+RzgeCfNyTF6dzgzg9s0qCCGFzlIbsZTw==
X-Received: by 2002:a05:6512:308d:b0:4a4:68b7:d61d with SMTP id z13-20020a056512308d00b004a468b7d61dmr2174194lfd.4.1671708561321;
        Thu, 22 Dec 2022 03:29:21 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j18-20020a056512109200b00498f67cbfa9sm44051lfg.22.2022.12.22.03.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 03:29:20 -0800 (PST)
Message-ID: <61ff6ca0-4e7e-1a88-05b0-dee462e7b098@linaro.org>
Date:   Thu, 22 Dec 2022 12:29:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [Patch v1 05/10] dt-bindings: tegra: add icc ids for dummy MC
 clients
Content-Language: en-US
To:     Sumit Gupta <sumitg@nvidia.com>, treding@nvidia.com,
        dmitry.osipenko@collabora.com, viresh.kumar@linaro.org,
        rafael@kernel.org, jonathanh@nvidia.com, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     sanjayc@nvidia.com, ksitaraman@nvidia.com, ishah@nvidia.com,
        bbasu@nvidia.com
References: <20221220160240.27494-1-sumitg@nvidia.com>
 <20221220160240.27494-6-sumitg@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221220160240.27494-6-sumitg@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/2022 17:02, Sumit Gupta wrote:
> Adding ICC id's for dummy software clients representing CCPLEX clusters.
> 
> Signed-off-by: Sumit Gupta <sumitg@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra234-mc.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/dt-bindings/memory/tegra234-mc.h b/include/dt-bindings/memory/tegra234-mc.h
> index 347e55e89a2a..6e60d55491b3 100644
> --- a/include/dt-bindings/memory/tegra234-mc.h
> +++ b/include/dt-bindings/memory/tegra234-mc.h
> @@ -536,4 +536,9 @@
>  #define TEGRA234_MEMORY_CLIENT_NVJPG1SRD 0x123
>  #define TEGRA234_MEMORY_CLIENT_NVJPG1SWR 0x124
>  
> +/* ICC ID's for dummy MC clients used to represent CPU Clusters */
> +#define TEGRA_ICC_MC_CPU_CLUSTER0       1003

Why the IDs do not start from 0?

Best regards,
Krzysztof

