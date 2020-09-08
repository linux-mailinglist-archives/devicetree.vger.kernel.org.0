Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05B8326208B
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 22:13:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729941AbgIHUNE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 16:13:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729992AbgIHPLM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 11:11:12 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 557C8C0A88B7
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 07:58:24 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id a65so15081166otc.8
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 07:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9gggthlY+o0JLKVW4bDabhGMPHFWypt8dqyEIpp5HBQ=;
        b=YB1FIRYyzS+ivsL/x+45ExVO0WH4Is9QWS50BvdosbbeX3Gi9nCtUp3J82nNmljBY6
         2JWQ8OutTr8NVlmEj5knAEd5QvGTHBgwJGuOKKBrxGLIqUrSTCfdGuVlSplWSBuVYG50
         1gRt3j7MlGKO3Vgm/lbDnz/Rr6omJsM1OVD/v0oDJTX71dK7psTcnMmqtUpToxc8zybt
         4ejNbNqpq110GFV6L5J6HSaFqA/UgkLEzxllqqnoKmQ4UbGu6gRzTXzpmg+clp3rTrUT
         SlGD+3IhJ/dsetPuwDX0gLdqgHqVCPqxO1fgcGCW6gJcc09yKjpzpaQTKnrRam+Iva7t
         vlcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9gggthlY+o0JLKVW4bDabhGMPHFWypt8dqyEIpp5HBQ=;
        b=YrGmEk9eqNw+XlPaQd4BTqHQQ9NsXDVH4QPnYVKD9CIjPdhcbfitkNxIyV0KBobl6V
         ITNKQn162/wvTZyErUZD33DQmFfnMZU1N3ctforaYvXrbRL6emQmyVu8fsEnTqJVyAjk
         NB8LB1J5e297YeXFCbRQvDOAEN2moG/tZ5KumONRKclxROiHIAgFNUnkjswJpddEIBY1
         Hv4nMFmUI6yCL1AAF1celR/QH/eBQmxCLnxc0pPuB3h55pYoLqxr0hEgFeaWDAezBF68
         Seel2NO2LZrZZ1yBxLqwj81/rrLdJO3lveqM675qBysoMHIe27uNXU/p1/Zhh+0nR3Rd
         3FJw==
X-Gm-Message-State: AOAM532XYsqtRybUARJU0jcoWeQZOSPe5gs3fduE9FAjYOljRJdLRUIs
        Ql9QxY4gKkPwDcXQtoFf0LqDHw==
X-Google-Smtp-Source: ABdhPJwzWVepX/rnpXMX9hm2hay4q1Tqm8YqYT8JJBjjmrghpuG4jHcnsb8c87sfS0CmGWklIjZJNw==
X-Received: by 2002:a9d:7590:: with SMTP id s16mr1860963otk.23.1599577104131;
        Tue, 08 Sep 2020 07:58:24 -0700 (PDT)
Received: from yoga ([2605:6000:e5cb:c100:8898:14ff:fe6d:34e])
        by smtp.gmail.com with ESMTPSA id y24sm3515779ooq.38.2020.09.08.07.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 07:58:23 -0700 (PDT)
Date:   Tue, 8 Sep 2020 09:58:19 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     rjw@rjwysocki.net, viresh.kumar@linaro.org, robh+dt@kernel.org,
        agross@kernel.org, amitk@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dmitry.baryshkov@linaro.org,
        tdas@codeaurora.org
Subject: Re: [PATCH 1/7] dt-bindings: cpufreq: cpufreq-qcom-hw: Document
 SM8250 compatible
Message-ID: <20200908145819.GN3715@yoga>
References: <20200908075716.30357-1-manivannan.sadhasivam@linaro.org>
 <20200908075716.30357-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200908075716.30357-2-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 08 Sep 02:57 CDT 2020, Manivannan Sadhasivam wrote:

> Document the SM8250 SoC specific compatible for Qualcomm Cpufreq HW. The
> hardware block which carries out CPUFreq operations on SM8250 SoC is
> called EPSS.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Please follow up, after this has been accepted, with a conversion of
this binding to yaml.

Regards,
Bjorn

> ---
>  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> index 33856947c561..aea4ddb2b9e8 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> @@ -8,7 +8,7 @@ Properties:
>  - compatible
>  	Usage:		required
>  	Value type:	<string>
> -	Definition:	must be "qcom,cpufreq-hw".
> +	Definition:	must be "qcom,cpufreq-hw" or "qcom,sm8250-epss".
>  
>  - clocks
>  	Usage:		required
> -- 
> 2.17.1
> 
