Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1DA7663D42
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:50:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237807AbjAJJum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:50:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237223AbjAJJuW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:50:22 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFE6415F2C
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:50:21 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id g10so8345899wmo.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L4yGKxMFUOcNBd6qiW0DqHiMOl0hGvG8vDnOMvgUfjc=;
        b=XW/4ajK6NJZkDCNFanPST16zWwxAlxlk3sYGGl4Gx+g0Q+Fs3MRmm6T9TWN1cAkh6B
         bRgpGd+WD2R8lKNNHJq314pLuMw2cApUSE1nkVQZZ25uyE675d4o62BqilyO1mq/Lct2
         NrsjVafJKm8lb+4YvD1aTH2eDAo+U4mWe9WMJCv9zvWhsjC21g4KUU9rHrNCfHd3oisD
         gT52qgRMVOarywLkM7xqyscWWxx7gNhEhWTOqoaGPAKdJvFIeU+YjH6BjxXOQyLxpwhk
         UXWtwYouw7GigPohSp4fNQ9Kw4YHxUfH5KpAN2IcheCJaLdRAMM6qM/wd6Yy1/dXYvot
         HoSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L4yGKxMFUOcNBd6qiW0DqHiMOl0hGvG8vDnOMvgUfjc=;
        b=ipimmr/hDBQPdWedebdpmOmCUP/GFImqQDc9aVF1mCkUGkwv9c1Tl4q1cMJnobfFXI
         4sBlhba7O72vGxMuX9Ln/lIkgrG1AXesL17erPvjuMhySM0JymNrqeUTyPrSPSQAUPrj
         0vqfvE6rUB4ccZAZNSIv53rrTtmgVBlEsYJCLL99Ly0bZ1pa1xX1izSMoqqkximiWC8Q
         Lw85oUjK2xZ+25Bp6cx8D0h6aJBKSu9kZEB3Enk8hzXVH2nRVKpysyKjguD8WUMHap3C
         YgrHvONZcCtqa82qps+ID/WU2nUBzPVUGo+GmU35NMigdxqzH6S+0xjbUfCt3tpx0eF2
         AxvA==
X-Gm-Message-State: AFqh2krhx9JR6a9pGBmPjcR7vSAuJNOIrE0l9KyBJvQjdEhMY+FKUzi/
        jIjPw5fsMq3RIXg/NJqh46P6xg==
X-Google-Smtp-Source: AMrXdXvX+AzEuLqk86WrbSte1x6SF0u8eJ/fFDUKzUQkfQ+FvjE5ciHth+Qsza1APOyMtnmjElzdwg==
X-Received: by 2002:a1c:5442:0:b0:3cf:7385:677f with SMTP id p2-20020a1c5442000000b003cf7385677fmr47412192wmi.35.1673344220288;
        Tue, 10 Jan 2023 01:50:20 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i6-20020a05600c4b0600b003d9e91cd08dsm9203363wmp.4.2023.01.10.01.50.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 01:50:19 -0800 (PST)
Message-ID: <39774fd1-e89a-9c16-7833-80cae36133ca@linaro.org>
Date:   Tue, 10 Jan 2023 10:50:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/5] ARM: multi_v7_defconfig: Add GXP SROM Driver
Content-Language: en-US
To:     clayc@hpe.com, linux-kernel@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        verdun@hpe.com, nick.hawkins@hpe.com, arnd@arndb.de,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux@armlinux.org.uk, olof@lixom.net
References: <20230110042533.12894-1-clayc@hpe.com>
 <20230110042533.12894-5-clayc@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110042533.12894-5-clayc@hpe.com>
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

On 10/01/2023 05:25, clayc@hpe.com wrote:
> From: Clay Chang <clayc@hpe.com>
> 
> Add the CONFIG_HPE_GXP_SROM and CONFIG_HPE_GXP_SOCLIB.
> 
> Signed-off-by: Clay Chang <clayc@hpe.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index ee184eb37adc..f50a3731b84c 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -1254,3 +1254,5 @@ CONFIG_CMA_SIZE_MBYTES=64
>  CONFIG_PRINTK_TIME=y
>  CONFIG_MAGIC_SYSRQ=y
>  CONFIG_DEBUG_FS=y
> +CONFIG_HPE_GXP_SOCLIB=m
> +CONFIG_HPE_GXP_SROM=m

Don't add stuff at random places or at the end. Add in proper place,
defined by savedefconfig.

Best regards,
Krzysztof

