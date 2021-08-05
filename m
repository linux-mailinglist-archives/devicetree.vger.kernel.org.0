Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D3553E152F
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 14:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241545AbhHEM55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 08:57:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240155AbhHEM55 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 08:57:57 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28FC6C061765
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 05:57:43 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id o10so7014617ljp.0
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 05:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pZbqm5rS9uY9gmvr3en4eNyV6i6PzvdvqtugR3RNZI4=;
        b=Zi5QS4ost9k+8KVdKBU7r03nUUtTVbc6SfPzr1I2afFxBj0e//LSNDbkaTWGXOSG9R
         fOGgzBcnPf+yiFA67ZO1C95AvyNAvEMWxn/95Hkkq8fgtU8WcUT/UgLKmLwTxthcr9HL
         Oj/4Kng4KtFmb934rG5hpXXxvCFHbsNG64AxzZ/P52ornKB29zHk+0ombK2+CqAK3Xkk
         CBEOo0DzKaWgfdbGwpRR/Y96fmY00RfHlWJK6rpywrxrzgqut1vpb8wHlJQUCHqylzQX
         WxTr5M95SKZgZaXGOnlm+gjD2caLSPuLc5GHKMszTovTLgYPWPz5LikLJsPUvo6/QABu
         1K0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pZbqm5rS9uY9gmvr3en4eNyV6i6PzvdvqtugR3RNZI4=;
        b=I14plKc45KhkoO3LbaNBFA2pd8LLCtfwOxwCpiyMs1HuMT40tuNF7hSCaMAfSpd87e
         0m7PZxpOQo1AaAJbIELIAN4EJESIYEfZFvyfsX2oIQfJkTQgt1pmobSjPgE4w4dgWubx
         fxMdvsE8xbZroEUF5zWgHp3HvrWiGCuaqyNf0/YD3L+eFCEWCmase/VwQqOZ83deIg82
         gGz5Z1FMJzwiKtwJ7PHuHuAxRRHelL5JA7Xv248hUtHr62UXG5d1lKM6rk2xBRHgmmlV
         4lt2IiFVZWYccEnfPOMR1faHTQCB04/NUvMlWe0ALJRcd+xg5jSrHGTwUnzFP5GJRtbw
         3/UQ==
X-Gm-Message-State: AOAM531cMWk0bSxze6wRvxFi23IwFuXFDRPZW8KYuNouQ/1qWYs/Slko
        Q3i8KEZucMFnA9Dv7ooJLX+Efw==
X-Google-Smtp-Source: ABdhPJyZl78mfSg8C4X8bMAPnoTfiSQY/0XoV8C1PnyrVYJoW6qOSWIY4BtAKOAyd3Ke5NxYYt08zg==
X-Received: by 2002:a2e:7e0a:: with SMTP id z10mr3089416ljc.283.1628168261452;
        Thu, 05 Aug 2021 05:57:41 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m13sm509172lfu.5.2021.08.05.05.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 05:57:41 -0700 (PDT)
Subject: Re: [PATCH v2] ARM: dts: qcom: apq8064: correct clock names
To:     David Heidelberg <david@ixit.cz>, linus.walleij@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Brian Masney <masneyb@onstation.org>
References: <20210707131453.24041-1-david@ixit.cz>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <5d11261e-592a-31cc-b3e2-5eee76681ec0@linaro.org>
Date:   Thu, 5 Aug 2021 15:57:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210707131453.24041-1-david@ixit.cz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2021 16:14, David Heidelberg wrote:
> Since new code doesn't take old clk names in account, it does fixes
> error:
> 
> msm_dsi 4700000.mdss_dsi: dev_pm_opp_set_clkname: Couldn't find clock: -2
> 
> and following kernel oops introduced by
> b0530eb1191 ("drm/msm/dpu: Use OPP API to set clk/perf state").
> 
> Also removes warning about deprecated clock names.
> 
> Tested against linux-5.10.y LTS on Nexus 7 2013.
> 
> Reviewed-by: Brian Masney <masneyb@onstation.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
> - v2 improved commit message, added R-b
> 
>   arch/arm/boot/dts/qcom-apq8064.dtsi | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
> index 6005620ac297..96b7755afabf 100644
> --- a/arch/arm/boot/dts/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
> @@ -1262,9 +1262,9 @@ dsi0: mdss_dsi@4700000 {
>   				<&mmcc DSI1_BYTE_CLK>,
>   				<&mmcc DSI_PIXEL_CLK>,
>   				<&mmcc DSI1_ESC_CLK>;
> -			clock-names = "iface_clk", "bus_clk", "core_mmss_clk",
> -					"src_clk", "byte_clk", "pixel_clk",
> -					"core_clk";
> +			clock-names = "iface", "bus", "core_mmss",
> +					"src", "byte", "pixel",
> +					"core";
>   
>   			assigned-clocks = <&mmcc DSI1_BYTE_SRC>,
>   					<&mmcc DSI1_ESC_SRC>,
> 


-- 
With best wishes
Dmitry
