Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F1CA34362C
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 02:18:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbhCVBRy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Mar 2021 21:17:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229731AbhCVBRW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Mar 2021 21:17:22 -0400
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A682C061762
        for <devicetree@vger.kernel.org>; Sun, 21 Mar 2021 18:17:22 -0700 (PDT)
Received: by mail-qk1-x72b.google.com with SMTP id x14so9059994qki.10
        for <devicetree@vger.kernel.org>; Sun, 21 Mar 2021 18:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hfs7xVzInGDXwslEYQjd+qhYAguRi3oFAn1yP3BW/2k=;
        b=epkhX8fuq5xMIzNlsG9pKusuN9WWzHkBij7FO7Ihg7Rl40Ylexo0nq3Pb2fQpokwDS
         rAQxeBZ8Pkn+F6ocbic5mNgbOc5vp+yJUCrXQfl7gAvbiOpWrqSoUSs9R/jr8+qbdrkf
         JYS6qNQ4p+gsg7x3VNU92iXdHUOclSxS6hA3L1yl574BaGYpRL0b3NUoiZ12lu9b0fMm
         jDBflZWHzV5AB2tRcIl0HBrL1UV+xrJXXgAp8cj2c6tkDR4S9ZrwwaGQ/PAmxHi8Adsw
         N26w4xrc/jaRY8RWdHV5CPclm7jM/byeGC0zpeLR/i87NPXiDygQrKZF9qXmf9PzPGwh
         4mMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hfs7xVzInGDXwslEYQjd+qhYAguRi3oFAn1yP3BW/2k=;
        b=oOPzUXS0UTqWSSc3hdvlKoSKXV7MA3t3ZyqnPYyUgG2h8f6v0VyObrpYAxHcY0JOlK
         Y+KQueR/2I+oAhCT7Yh6Q7UNEFjMHbKwVCe9S+BRQs5m4IR1cKGI2ch7b0s5ed88o0J5
         tXz8VH1xlzEi2LoG3Tjh9c8l7saXH5KgX5WoYi97JN2Xq8fK3ZD5rvqOtROSDm4Z2/fZ
         oLLHQ7q9hjjqP1sWMrxLpnrtlRSar+uZQ+5TxGD+2Giv5/5GG/ZLSE1aumEVynkDTMYP
         HSyj7Th1CAcfktWo6RMInh6k2j5z6OjK+YVqAP2aEmXru1V/hDfPUADxmulf/SYOyesS
         2aIA==
X-Gm-Message-State: AOAM532C5/YeqmtlBo08d/hWUiJ287aYzKjcpfXLPPFGLlADR2EpuPzd
        QJY+As+lVUNiXg/Qc57IwR0rqA==
X-Google-Smtp-Source: ABdhPJw5CxyXrmQKPVQRl5Tk/lz8EbKa3VTJDWRuNObEIvT2jGno1muWGknIJV11WzbgmSz34KpONw==
X-Received: by 2002:a37:a913:: with SMTP id s19mr9048401qke.158.1616375841339;
        Sun, 21 Mar 2021 18:17:21 -0700 (PDT)
Received: from [192.168.1.93] (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.gmail.com with ESMTPSA id r133sm9993160qke.20.2021.03.21.18.17.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Mar 2021 18:17:20 -0700 (PDT)
Subject: Re: [PATCH v12 5/9] drivers: thermal: tsens: Fix bug in sensor enable
 for msm8960
To:     Ansuel Smith <ansuelsmth@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210319181512.7757-1-ansuelsmth@gmail.com>
 <20210319181512.7757-6-ansuelsmth@gmail.com>
From:   Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <07ad8ee4-352f-57b6-c990-1410615e5798@linaro.org>
Date:   Sun, 21 Mar 2021 21:17:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210319181512.7757-6-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/19/21 2:15 PM, Ansuel Smith wrote:
> Device based on tsens VER_0 contains a hardware bug that results in some
> problem with sensor enablement. Sensor id 6-11 can't be enabled
> selectively and all of them must be enabled in one step.
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>

Acked-by: Thara Gopinath <thara.gopinath@linaro.org>

Warm Regards
Thara
> ---
>   drivers/thermal/qcom/tsens-8960.c | 23 ++++++++++++++++++++---
>   1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/thermal/qcom/tsens-8960.c b/drivers/thermal/qcom/tsens-8960.c
> index 86585f439985..bf8dfaf06428 100644
> --- a/drivers/thermal/qcom/tsens-8960.c
> +++ b/drivers/thermal/qcom/tsens-8960.c
> @@ -27,9 +27,9 @@
>   #define EN			BIT(0)
>   #define SW_RST			BIT(1)
>   #define SENSOR0_EN		BIT(3)
> +#define MEASURE_PERIOD		BIT(18)
>   #define SLP_CLK_ENA		BIT(26)
>   #define SLP_CLK_ENA_8660	BIT(24)
> -#define MEASURE_PERIOD		1
>   #define SENSOR0_SHIFT		3
>   
>   /* INT_STATUS_ADDR bitmasks */
> @@ -126,17 +126,34 @@ static int resume_8960(struct tsens_priv *priv)
>   static int enable_8960(struct tsens_priv *priv, int id)
>   {
>   	int ret;
> -	u32 reg, mask;
> +	u32 reg, mask = BIT(id);
>   
>   	ret = regmap_read(priv->tm_map, CNTL_ADDR, &reg);
>   	if (ret)
>   		return ret;
>   
> -	mask = BIT(id + SENSOR0_SHIFT);
> +	/* HARDWARE BUG:
> +	 * On platform with more than 6 sensors, all the remaining
> +	 * sensors needs to be enabled all togheder or underfined
> +	 * results are expected. (Sensor 6-7 disabled, Sensor 3
> +	 * disabled...) In the original driver, all the sensors
> +	 * are enabled in one step hence this bug is not triggered.
> +	 */
> +	if (id > 5)
> +		mask = GENMASK(10, 6);
> +
> +	mask <<= SENSOR0_SHIFT;
> +
> +	/* Sensors already enabled. Skip. */
> +	if ((reg & mask) == mask)
> +		return 0;
> +
>   	ret = regmap_write(priv->tm_map, CNTL_ADDR, reg | SW_RST);
>   	if (ret)
>   		return ret;
>   
> +	reg |= MEASURE_PERIOD;
> +
>   	if (priv->num_sensors > 1)
>   		reg |= mask | SLP_CLK_ENA | EN;
>   	else
> 

