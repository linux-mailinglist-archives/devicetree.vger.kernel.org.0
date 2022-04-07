Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 138E94F7AF3
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 11:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234067AbiDGJE7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 05:04:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241959AbiDGJEw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 05:04:52 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04026FFB5D
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 02:02:39 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l62-20020a1c2541000000b0038e4570af2fso3206556wml.5
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 02:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pjTtN3AtheF0vn4ZuwhbnCGLFVHktDXUfGX7a5M8YqM=;
        b=sah5F0KV3kWlryn659cbatWIbwr+TIDj4vqgX+7AQ/QQT3lJ+phXRNSUAviN/ZWRTF
         d+o01cxs9n/OGmRoWEMF9I+nEZdN9g6xL7SoSVTmy3zLRJMwVH68/PyTKi2c8IjlQUhK
         fcEr+s3dip1TSjHKwdp98LRT188nl+tNdjG9zJA+29BR3EjlRzDv8YWb5FipH8Mx0LnS
         AFdi613Wo7JoqP7Kch16/N7/bpAB6cNmUupuwnilwBoThcatet43Qrqgt0F69v2eifli
         wpR83PKSH2nh2JAe7+JBQ1+qKyklZICJB0i2bSbh9E2ByrFEl2h0fo2q9qx5XtcjhIuC
         Qg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pjTtN3AtheF0vn4ZuwhbnCGLFVHktDXUfGX7a5M8YqM=;
        b=IbNBZPU0P000zsiaSG/HuUnsO6Sr7HaWol7b+JnlEfvTYfU5uk91Siq896nQSzDSPu
         ZyZ8mbn5Cl8wfwnI4RmbKz8+xM86++Xahuc+pRh0piSNGUuGGssR6sb3VFVJdAKACYj+
         2q26n6M8UCOaaPdo2X3RhkAdCpqyZiPyz22seC9lO2ulZXwyCfPmYe+Od+e8Iw6yrZKa
         SjJ52ZUjz6fBFJXPBi4XO7apSz9EODkT4P1LJUbs4IeZcWD1f+cputoRUpy7pGFdPJaH
         Gag7+U1BdXRg7Y7goqPgL9yK+phSNKtWmnv1GGToFPv8hpIN2ctdMCAL0fiuDULVNrAU
         d39w==
X-Gm-Message-State: AOAM533o261R5v032gbgy+569KI3N4b+xm7swjIz0mSC9/ByfKkMNn4t
        cEUxd+jHbXY36gB91YgrGFf3j0QrzsdNt5/5
X-Google-Smtp-Source: ABdhPJw5/Kl2zo4WFzmxgemr3M64uxM6RL7llDDspMhcdYPQZLBhjeUjaMkR243zjxjIS44aW6fslw==
X-Received: by 2002:a05:600c:190e:b0:38c:b19d:59ff with SMTP id j14-20020a05600c190e00b0038cb19d59ffmr11198807wmq.1.1649322157299;
        Thu, 07 Apr 2022 02:02:37 -0700 (PDT)
Received: from ?IPV6:2a01:e34:ed2f:f020:f2a2:7d81:4e67:6c1c? ([2a01:e34:ed2f:f020:f2a2:7d81:4e67:6c1c])
        by smtp.googlemail.com with ESMTPSA id t6-20020a05600c198600b0038cafe3d47dsm7668871wmq.42.2022.04.07.02.02.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 02:02:36 -0700 (PDT)
Message-ID: <a8c085bc-3a69-ea4c-bcfe-9742e0fde852@linaro.org>
Date:   Thu, 7 Apr 2022 11:02:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/4] thermal/drivers/tsens: add compat string for the
 qcom,msm8960
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20220406002648.393486-1-dmitry.baryshkov@linaro.org>
 <20220406002648.393486-3-dmitry.baryshkov@linaro.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20220406002648.393486-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2022 02:26, Dmitry Baryshkov wrote:
> On apq8064 (msm8960) platforms the tsens device is created manually by
> the gcc driver. Prepare the tsens driver for the qcom,msm8960-tsens
> device instantiated from the device tree.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/thermal/qcom/tsens.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
> index 154d3cb19c88..7963ee33bf75 100644
> --- a/drivers/thermal/qcom/tsens.c
> +++ b/drivers/thermal/qcom/tsens.c
> @@ -979,6 +979,9 @@ static const struct of_device_id tsens_table[] = {
>   	}, {
>   		.compatible = "qcom,msm8939-tsens",
>   		.data = &data_8939,
> +	}, {
> +		.compatible = "qcom,msm8960-tsens",
> +		.data = &data_8960,
>   	}, {
>   		.compatible = "qcom,msm8974-tsens",
>   		.data = &data_8974,

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
