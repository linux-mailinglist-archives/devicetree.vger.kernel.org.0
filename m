Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F4345E9584
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 20:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230083AbiIYS53 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 14:57:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231867AbiIYS51 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 14:57:27 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AC732EF06
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 11:57:24 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id s125so6001139oie.4
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 11:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=bu2u6MTlzgmQ7/o236tbswT/S+hmMK8el6BxRtvYroA=;
        b=ZPGr5rAUGy2KV5aNoCc1rEnrPZ5mlb3mZ4682X1UEgSiigC+ZOMQDxD55z5zwcrq+m
         zwchswryQxF3uSB1Xr1n9xhGqquBG6g+VaT9fvGF6XG7REzpWe2PMOWlYTuvrGtzXEdC
         iM0PY5oXGRVYzizvUIxz/qiGexXmtg1xBWwWUJaSAyarFshUIHiI+fVW3l2um8iySLtk
         bjABQXxWYjGIKvv9gpmm1KniuGyseQASgxn6knaXSWHytYf7ZluDQzpaNEixdZYZ02mt
         jpyceI63g3Fy0qOLrswv1EPOue6vAZ/4hxcZLazZF6Ad6Z0IuYW74BXz2YoDLJ+T+3TJ
         4Cvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=bu2u6MTlzgmQ7/o236tbswT/S+hmMK8el6BxRtvYroA=;
        b=2/RkeRyAChwFnGJn38dFnxPU7RfxDThEJY+WI10VVxLAuInqHEG3kNzIbfzLSld5rU
         C1CVUSp8/+0D5LuAoI00672S4Gci2g/m0Sf5KvOWP6Ri1224niF9z7sTA8Kh04RtMuEk
         PtAwRO3SUiKmC+KFwqpqsgFrbgY7pPWVVEU28oLHmFupJnXk7dZrQ02EuMMWrfydqjdv
         IkngxlqS3xHD2jPYhZcPcn3I6YxvMo8dYC4BEN/D+LIOhqSl1Gv12TTCxZQTE6OpPYId
         qjE7lJ1yqIP+rSqGjnRSyraJ7Sa6cKy+vs1r/+kVrWYvAA3BPC6ZLfzlymexeXqGQIpv
         fNfA==
X-Gm-Message-State: ACrzQf0GGz9E1pgQc8I5PCGjlNUq2sjVS062y119c9H8lDOUvbjiOIdd
        PDkAjsLyIaHFH7Y7dcYcnFU0Sw==
X-Google-Smtp-Source: AMsMyM4UbbkRyY+RbHC7z2TBwmCMfRBg4MPdTzWV9KKqCchzzAATPseVdg5Jh0p3R4rxCcErrgKoFg==
X-Received: by 2002:aca:2b08:0:b0:350:6fde:bb88 with SMTP id i8-20020aca2b08000000b003506fdebb88mr8242649oik.31.1664132243417;
        Sun, 25 Sep 2022 11:57:23 -0700 (PDT)
Received: from [192.168.11.16] (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id by5-20020a056830608500b0063b2251a78asm6786808otb.12.2022.09.25.11.57.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 11:57:22 -0700 (PDT)
Message-ID: <687b5cf5-313c-c5ca-a96e-eeb4442fde18@kali.org>
Date:   Sun, 25 Sep 2022 13:57:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.0
Subject: Re: [PATCH 01/11] arm64: dts: qcom: sdm845: drop unused slimbus
 properties
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20220923161453.469179-1-krzysztof.kozlowski@linaro.org>
 <20220923161453.469179-2-krzysztof.kozlowski@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
In-Reply-To: <20220923161453.469179-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 9/23/22 11:14 AM, Krzysztof Kozlowski wrote:
> Drop properties from slimbus node: unneeded status and
> downstream-related qcom,apps-ch-pipes/qcom,ea-pc (not documented, not
> used).
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 3 ---
>   1 file changed, 3 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index d761da47220d..9db1fce6b198 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -3828,9 +3828,6 @@ slim: slim@171c0000 {
>   			reg = <0 0x171c0000 0 0x2c000>;
>   			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>;
>   
> -			qcom,apps-ch-pipes = <0x780000>;
> -			qcom,ea-pc = <0x270>;
> -			status = "okay";
>   			dmas = <&slimbam 3>, <&slimbam 4>,
>   				<&slimbam 5>, <&slimbam 6>;
>   			dma-names = "rx", "tx", "tx2", "rx2";

Tested on Lenovo Yoga C630

Tested-by: Steev Klimaszewski <steev@kali.org>

