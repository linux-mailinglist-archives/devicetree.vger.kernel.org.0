Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B70E2340F96
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 22:15:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232889AbhCRVOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 17:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231965AbhCRVOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 17:14:15 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 168F6C061760
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 14:14:15 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id cx5so3962964qvb.10
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 14:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BX8CBZ461iND9QW3eoJhUfB9M6t5jeVjqffnHy3FhlM=;
        b=o+iDomXChTJt7Aw6MBrDzvgC8rR32aTByhx54ATPHm+WQ3POmB561o6aWleUoK/0/k
         h6GO2+QjM+5YP/1VuYkwuGb4AKwFo3y/4hyiSdUgTgnXkFsnXYxbKjjGMnRxoVfBlysX
         2YXzG2S2a+6gpJ0bPgZEPqEiUM9EYvO6w47gnD/Pt8rncyYhdSmq1j3Z4v/7ZhucsM3C
         Aq35A3JpCbAbtYe+umJGvwB+HdY03IF5Vgb/5A0FyXCbGkWGq6A9AokAYkLa1AxoTf8z
         siR5wjO3jitiI6D7HDn42icZMY/XyZOf7QuN2W4vZypdWZngBKfao1D/i8s+jS3fw67x
         fYVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BX8CBZ461iND9QW3eoJhUfB9M6t5jeVjqffnHy3FhlM=;
        b=KFATm82f08GhP7L2p10++QuucUM9pdFJxSxlTSOmev+ANzxvD9C1fiF+jAGJQemjhl
         JWBxSnNGfBEZt9GsSnGbN4nN41Xf9aCNppV3nPR65DnYSNlHZGSmitTNv7RokFbFWWsv
         /iiJ9Ps71pUfmW7E6B4iNSa3iaPhb5gsRK1CvGmOJ1SCAU8/5TU2w/bGrW+BpDiXc3GU
         7c07JCypjbwBzQttZLc1qFGgo/pfMD4GZQZlns+Hb9sYFZ4Vce2f+E49q69gKt5hLGTQ
         tqnoUJqWSRYV4mQO8/Lk3+DMddmgrVNNltBkRDX/NVfwfz7+eCy/t20rS7LBAc/gOEdt
         lG7w==
X-Gm-Message-State: AOAM5319aauuqsRORIUAw7ZJBAnfbppEiu4Ix8a0DdOSbRbrxQNP/GUK
        oMuKIW52xJI0HDJq+qaCJ3/RaA==
X-Google-Smtp-Source: ABdhPJxx3+9wAh/2DSXjtcyWZ9JdQyxJ+mhuIcf8J12QrilvmYh6hIKds28pjiD3RVrOoosjV3yZBA==
X-Received: by 2002:a0c:9e15:: with SMTP id p21mr6208781qve.53.1616102054046;
        Thu, 18 Mar 2021 14:14:14 -0700 (PDT)
Received: from [192.168.1.93] (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.gmail.com with ESMTPSA id r7sm2252887qtm.88.2021.03.18.14.14.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 14:14:13 -0700 (PDT)
Subject: Re: [PATCH v10 7/8] drivers: thermal: tsens: Add support for
 ipq8064-tsens
To:     Ansuel Smith <ansuelsmth@gmail.com>,
        Amit Kucheria <amitk@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210217194011.22649-1-ansuelsmth@gmail.com>
 <20210217194011.22649-8-ansuelsmth@gmail.com>
From:   Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <bd8d6536-cc6c-c69a-367a-69389d66fdaf@linaro.org>
Date:   Thu, 18 Mar 2021 17:14:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210217194011.22649-8-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2/17/21 2:40 PM, Ansuel Smith wrote:
> Add support for tsens present in ipq806x SoCs based on generic msm8960
> tsens driver.
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>

Reviewed-by: Thara Gopinath <thara.gopinath@linaro.org>

Warm Regards
Thara

> ---
>   drivers/thermal/qcom/tsens.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/thermal/qcom/tsens.c b/drivers/thermal/qcom/tsens.c
> index 842f518fdf84..e14b90ddd0f9 100644
> --- a/drivers/thermal/qcom/tsens.c
> +++ b/drivers/thermal/qcom/tsens.c
> @@ -1001,6 +1001,9 @@ static SIMPLE_DEV_PM_OPS(tsens_pm_ops, tsens_suspend, tsens_resume);
>   
>   static const struct of_device_id tsens_table[] = {
>   	{
> +		.compatible = "qcom,ipq8064-tsens",
> +		.data = &data_8960,
> +	}, {
>   		.compatible = "qcom,msm8916-tsens",
>   		.data = &data_8916,
>   	}, {
> 
