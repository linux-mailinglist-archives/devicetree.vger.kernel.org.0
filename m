Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65320341DDC
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 14:12:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbhCSNMY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 09:12:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbhCSNML (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 09:12:11 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77295C06175F
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 06:12:11 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id a11so6627736qto.2
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 06:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8AjV5s8aOfyy3KT30UQRTNY2SjJvqQorjtJI5nyloq0=;
        b=viUBvBj4Em71xPV7glPu3zcqVMPq5Fq9+oSYKg7PyDkcEj0/YVz717DaCnFuAKmYcK
         qiiRPnonwcnfVPw4H3+BUn02ZNjOjBH9rC3fRU0v2goMYXbz9h25HVuW2cIGRLBwAc6I
         AdC8y5kbv/YF18tWCt36jpJVjL22Glj+DCBz6rOmamaz5tCry1As5jhtLy5laj97V2Nd
         KtjD0WDlsv4FQK96CLezut5GoGdZ8KQd4nSdXmvRLaiY9oNqSA6B/yLsWMrUGogkS1NF
         xW5+q8b85kL+9B34W27+WN2ai8AKWMJknScnESDEPVBL6qk5PAmBVNuKTeBeQMhPzT6w
         Isxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8AjV5s8aOfyy3KT30UQRTNY2SjJvqQorjtJI5nyloq0=;
        b=iONpswxy4fkDU4L4+5d61p7HARblLsYgBcD46sgbEOAt20iPAkQelpfJiDkThFgYV/
         6RGLso7tZkW2EHWXmvdS70gKQ3kZABllervqyeAOUE6/ePO5yXXtDGEN/t2XHAlkKRAJ
         HDGVBP8GVlx2MjAGkgxVMxV3uAB0re0f46Kq1i3XHSkRUu7w3gilcdcDZ0CD4qjt++Md
         CZXV1QeHx1gdg7+q4IG25tIMi7G3yKoaY2LPqSIGQpqVjbS50GMSndy2Y4ZTScm629zk
         Gx4u70kkAbEH9Etqf87LjTbDW5aeSNuhCadWzZbsURaMaTKyHuhD2tRyycLAfwswTuyX
         VUvQ==
X-Gm-Message-State: AOAM5300BzUAG8mnvxZHaY7rOT9LqR4DMN4NdRje7ohNEWQxG1Qjjv+l
        ilpOtqLCZBC9spD0iHN07Du+0kc9FTx//g==
X-Google-Smtp-Source: ABdhPJzYpwsFI868JfavXgcFuabV0GrhMPLuCnNTWahVJqRLN9HvxCe+LJha08h8v8ANBgwUzpY0ZQ==
X-Received: by 2002:aed:206c:: with SMTP id 99mr8365070qta.64.1616159530619;
        Fri, 19 Mar 2021 06:12:10 -0700 (PDT)
Received: from [192.168.1.93] (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.gmail.com with ESMTPSA id g74sm4225789qke.3.2021.03.19.06.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 06:12:10 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
Subject: Re: [PATCH v11 6/9] drivers: thermal: tsens: Replace custom 8960 apis
 with generic apis
To:     Ansuel Smith <ansuelsmth@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210319005228.1250-1-ansuelsmth@gmail.com>
 <20210319005228.1250-7-ansuelsmth@gmail.com>
Message-ID: <adc9dfb1-1667-a012-68aa-3bd4d91387bb@linaro.org>
Date:   Fri, 19 Mar 2021 09:12:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210319005228.1250-7-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/18/21 8:52 PM, Ansuel Smith wrote:
> Rework calibrate function to use common function. Derive the offset from
> a missing hardcoded slope table and the data from the nvmem calib
> efuses.
> Drop custom get_temp function and use generic api.
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> Acked-by: Thara Gopinath <thara.gopinath@linaro.org>
> ---
>   drivers/thermal/qcom/tsens-8960.c | 56 +++++++++----------------------
>   1 file changed, 15 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/thermal/qcom/tsens-8960.c b/drivers/thermal/qcom/tsens-8960.c
> index bdc64d4188bf..8c523b764862 100644
> --- a/drivers/thermal/qcom/tsens-8960.c
> +++ b/drivers/thermal/qcom/tsens-8960.c
> @@ -67,6 +67,13 @@
>   #define S9_STATUS_OFF		0x3674
>   #define S10_STATUS_OFF		0x3678
>   
> +/* Original slope - 200 to compensate mC to C inaccuracy */
> +u32 tsens_msm8960_slope[] = {
> +			976, 976, 954, 976,
> +			911, 932, 932, 999,
> +			932, 999, 932
> +			};

make -C1 throws a warning for this. You have to make the table static. 
You can keep my Acked-by once it is fixed.

Warm Regards
Thara
