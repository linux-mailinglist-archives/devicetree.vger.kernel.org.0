Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 153087696E3
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 14:58:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231395AbjGaM56 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 08:57:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230226AbjGaM56 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 08:57:58 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD149E75
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 05:57:56 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fbc5d5742bso49888485e9.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 05:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690808275; x=1691413075;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zfmsPCP2I6k+qdFuK2670aEPuYwMRT2natN5YFB+JCQ=;
        b=qs/t7fLgi/4WqpgqbAXdmOP9OR7T8KsSjKO/i6AMhWM8idvSjwQ242zn9N2uuLXI3O
         bBSH32jD0EM8kl7BCayHbYqqJ6YiMcz+rNPyhSQQZHwrNmgh8ZYAHoO11E9tzy47edwr
         4TBVcmU5pPDmtrS+33it8pIOdVfsKrnI2NmEIZj3c1SEIalp4oC2LVcSJDncmX5bl1XU
         8+M9uUR9sVar+QHL5Rxx4MIl3AK1+0D1QPX/vSZi2zZ3tRSJf8PgB2E3HJIw34bXUnLC
         foZA3PoI4n+RCJWCBjupcfenaoypaJt8C3CRqni+zly3vBbWIG8PkIC8LuzHP9llc1ou
         IfYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690808275; x=1691413075;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zfmsPCP2I6k+qdFuK2670aEPuYwMRT2natN5YFB+JCQ=;
        b=ZS6Ns9Jj4iQpGoh1G2R7qY0QFXFxTyOTKuanbzkrkJcXxFf9iFwCZLOI/4vU/Ja+S3
         oHf3TiSmPTdou7ziPEAz8r87y/G59Gkvb/KtFmpQx3vCwAPZiEB6ioqmjffEh079qGV5
         2EFPtYi9ic278DXeJqwhNpM5qFjLkdtgPP8Xy3bpLwWQr+RrSL+HEP/J5/ex7IdKSvU4
         39mju1569N33f0FtwftL/+DtAnWbhWL4ZUmOceMudyR91ZHuJRIBjX4XyagX02G1zRfG
         kNPn6B/sJlNkS6G6w5e0JjZO0W4s9q4iicis5KcrkIHhi2QhVpk51FSblmU7FEhU1Uc9
         ZQ+Q==
X-Gm-Message-State: ABy/qLbE6E87c3PJW+32khJFL48ZGZrFMMno+NxK0K3NlKqBwupBsfyy
        bsKlQdJZwoyvyN46Hyq7/SY51w==
X-Google-Smtp-Source: APBJJlH0MESteO5H6VCiRz/Wz4r2+C1E0kSnz02b8KrJkg6gVlOH36HJIQyF10gGEqTu0YhggMVgVg==
X-Received: by 2002:a1c:7c08:0:b0:3f9:8c3:6805 with SMTP id x8-20020a1c7c08000000b003f908c36805mr8230100wmc.7.1690808275142;
        Mon, 31 Jul 2023 05:57:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f723:b60b:92cd:4df4? ([2a01:e0a:982:cbb0:f723:b60b:92cd:4df4])
        by smtp.gmail.com with ESMTPSA id u22-20020a05600c211600b003fbcdba1a63sm11448877wml.12.2023.07.31.05.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 05:57:54 -0700 (PDT)
Message-ID: <b0001583-250c-f0ca-3410-ecfda7afd505@linaro.org>
Date:   Mon, 31 Jul 2023 14:57:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 3/3] arm64: defconfig: enable STARTEK KD070FHFID015
 panel
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Guillaume La Roque <glaroque@baylibre.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230711-startek_display-v2-0-87bc7bdec6e9@baylibre.com>
 <20230711-startek_display-v2-3-87bc7bdec6e9@baylibre.com>
Organization: Linaro Developer Services
In-Reply-To: <20230711-startek_display-v2-3-87bc7bdec6e9@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 11:07, Alexandre Mergnat wrote:
> Build Startek KD070FHFID015 panel driver. This MIPI-DSI display
> can be used for the mt8365-evk board for example.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0777bcae9104..cb24a3d1219b 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -816,6 +816,7 @@ CONFIG_DRM_PANEL_EDP=m
>   CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
>   CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
>   CONFIG_DRM_PANEL_SITRONIX_ST7703=m
> +CONFIG_DRM_PANEL_STARTEK_KD070FHFID015=m
>   CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
>   CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
>   CONFIG_DRM_LONTIUM_LT8912B=m
> 

This should be applied by the Mediatek ARM64 maintainer,

Neil
