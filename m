Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C391A471B6E
	for <lists+devicetree@lfdr.de>; Sun, 12 Dec 2021 16:43:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbhLLPnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Dec 2021 10:43:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbhLLPnU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Dec 2021 10:43:20 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4179EC061714
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 07:43:20 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id t18so23072208wrg.11
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 07:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0841pN07OCCfFVYZZp2FufJ38IE8tqmE6kyIxF84N5o=;
        b=eeP3k3YR03C/HwJ8Rstj2pEjV5P6lNqKZi25QFXL3RugnUob1xsCRo0EBGotr73zNX
         TwncsGkmU9N6hUDfH3lcZ3urYRCUmDnPlLm2UVabQlpyH98VIKMnN2l0omIilLYWfycP
         OxWVFETqYMhaumL3pFR2GDrW3rVWWqxeitYjALecLYRrJBvR8WWyojsUNcnPGJwQhgH7
         UC08XNdF8qieOHhCjGU2k/t7Hwt1vwflVqsWnY6dhJzxr9je58JsUpgGjnj+qkWoz2zX
         /nneHhlO8iVjHEuA/ruHF2ochOs1wcoyhO75S90o6gvqDQTRCdU6cPY0UDrT/HXDyeLq
         hmBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0841pN07OCCfFVYZZp2FufJ38IE8tqmE6kyIxF84N5o=;
        b=OAIRyd3QWegDhZswabeBbo2FDE3gMmMMhLEMsgp6SuFolULExqFE93Fx/oHBR5n6Lq
         X5XRO/1xdA7Y9cNMb5cmeJg1mbyTVNfynJvwo/UhOLw2jx+apvh+ZkF25FAlSQe4zzfs
         yMaLv/Q7rJ4dR9nNz70svXIx5sjhF9U3IWJ94lbDIJmnePbn+F9LRM4y+vi7Alz0yAwL
         f0UCVFtFw3D6x5M4knlGwqA2LYihkvQ1RR+xoYiWzErjPBsj495PNXLJy4AO8GrhofDj
         GvA9V7MPUkSGEoEcktCuUl7mzLK3ZF16uo4POh0rproDPxZsnHs3/budHXnM7/OPqTLb
         pyKA==
X-Gm-Message-State: AOAM533oe6fVej75lxk5xNhd2axLo3hczd8FvB2sRtjjidluXPz96HQU
        431Cj+rHZF3tOD0p70AmZRFgsA==
X-Google-Smtp-Source: ABdhPJw2aM7YcfieUTyC7DHO4kPlGaxhvnnzDG53nDuIgfBWjKwHfQto6D9pDqpCD9LCGdyOGdgd1A==
X-Received: by 2002:a5d:6481:: with SMTP id o1mr11766456wri.632.1639323797130;
        Sun, 12 Dec 2021 07:43:17 -0800 (PST)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e24sm8187073wra.78.2021.12.12.07.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Dec 2021 07:43:16 -0800 (PST)
Message-ID: <2ca3a953-61a5-68d0-c6ea-c4a1c41fc05b@linaro.org>
Date:   Sun, 12 Dec 2021 15:45:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Subject: Re: [PATCH] arm64: dts: qcom: ipq6018: Fix gpio-ranges property
Content-Language: en-US
To:     Baruch Siach <baruch@tkos.co.il>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Sricharan R <sricharan@codeaurora.org>
References: <8a744cfd96aff5754bfdcf7298d208ddca5b319a.1638862030.git.baruch@tkos.co.il>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <8a744cfd96aff5754bfdcf7298d208ddca5b319a.1638862030.git.baruch@tkos.co.il>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/12/2021 07:27, Baruch Siach wrote:
> There must be three parameters in gpio-ranges property. Fixes this not
> very helpful error message:
> 
>    OF: /soc/pinctrl@1000000: (null) = 3 found 3
> 
> Fixes: 1e8277854b49 ("arm64: dts: Add ipq6018 SoC and CP01 board support")
> Cc: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
> 
> The error message was improved in commit af3be70a321 ("of: Improve
> of_phandle_iterator_next() error message"), but there is evidently some
> more room for improvement. As I don't really understand the code, I
> added the commit author and the DT list to Cc.
> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> index 6a22bb5f42f4..a717fc17523d 100644
> --- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
> @@ -220,7 +220,7 @@ tlmm: pinctrl@1000000 {
>   			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
>   			gpio-controller;
>   			#gpio-cells = <2>;
> -			gpio-ranges = <&tlmm 0 80>;
> +			gpio-ranges = <&tlmm 0 0 80>;
>   			interrupt-controller;
>   			#interrupt-cells = <2>;
>   
> 

Works for me

Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
