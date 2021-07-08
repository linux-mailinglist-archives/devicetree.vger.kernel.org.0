Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C3C43BF6F2
	for <lists+devicetree@lfdr.de>; Thu,  8 Jul 2021 10:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231241AbhGHIoC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 04:44:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231185AbhGHIoC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 04:44:02 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA0B8C061574
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 01:41:19 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id s18so5208312pgg.8
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 01:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=siIuMvkXC2AVcIAZnzYzjDZWFrnTkQc9eTe2lFO2xjo=;
        b=DujFxJpm3hWBqoWJv2Di1EJVj7ZvxBbelgppRj+l57Sj16YYV7daiUYS7bSKQLK47V
         XYvc6MyAQLcUI98nH2Nyg+89rhjM1gpBmr3vQhv4MK9VXmhxAK7w03V23ZAtaWDomdIX
         CH2ol5Xp3PT3v9YV282aWB8em1upmDM9DTQvqHOVutPqDwERWmM6xcPCa5RuGCHnm7tH
         tdEQTLo9mOR4KFYjiPDjs636VQIQhu1dpwF/tcjd7CtSpZ/vipUc1ejrpi9pSBw5GZT/
         wli1J17dDAN+Yby8fYAWDEbj1E3310hTETxEe71uBPFbMjWUrHc9dvw3Pe4eybBaO5Ts
         xGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=siIuMvkXC2AVcIAZnzYzjDZWFrnTkQc9eTe2lFO2xjo=;
        b=RUi9Xd+31C6TqR6zAB0OKqAMqhU+P9HftnCboaRohvUBqhMulNwwARW7m58MLMCoBR
         m7RemH1P8Tw7zGFY5Wr0IVb3BScybex5aKUMeBlCGoQlAbt4SxmWW6x6dsGXF0+Xd+F8
         ow6fqNJmtoYuuX87VHoC2izaBoT9FT2S+pvILZDkY9F8gLBez5IyS4rl3gxQ/Nfy2cCh
         umpk0IszLmyJLmsuVV09SG4tYHTsnebDIJG/hP5KfYW8f1Tl9m1+XUKtYdFP1Y+JZAcm
         hEqiFsxfsZY6FXhhG/C5Vv9OvqnDoTNCA+Zx/chY90IDFYp3g/9ncbwZpVQJsZCeZolh
         vy5Q==
X-Gm-Message-State: AOAM531ZmUuOx2lCT9+slilEj0I/GsxBFyJ8jCGffvLgtMTVbVRdHRFl
        woVqLQB6VKtGAmr1YfrGXl8YKw==
X-Google-Smtp-Source: ABdhPJwNkrsYNZXeC2SoeK/gWKgSM6Q8IZozaSiKHUBGMkYNoeLiZIgsEUZu1iiiGpZWvV3hjOCAtA==
X-Received: by 2002:a63:7152:: with SMTP id b18mr30661407pgn.224.1625733679256;
        Thu, 08 Jul 2021 01:41:19 -0700 (PDT)
Received: from localhost ([106.201.108.2])
        by smtp.gmail.com with ESMTPSA id 10sm1881109pjc.41.2021.07.08.01.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jul 2021 01:41:18 -0700 (PDT)
Date:   Thu, 8 Jul 2021 14:11:17 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Cc:     bjorn.andersson@linaro.org, agross@kernel.org, rjw@rjwysocki.net,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        amit.kucheria@linaro.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, jami.kettunen@somainline.org,
        paul.bouchara@somainline.org,
        ~postmarketos/upstreaming@lists.sr.ht, jeffrey.l.hugo@gmail.com
Subject: Re: [PATCH v6 7/9] cpufreq: qcom-hw: Allow getting the maximum
 transition latency for OPPs
Message-ID: <20210708084117.gk2b4cfbr774xuvy@vireshk-i7>
References: <20210701105730.322718-1-angelogioacchino.delregno@somainline.org>
 <20210701105730.322718-8-angelogioacchino.delregno@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210701105730.322718-8-angelogioacchino.delregno@somainline.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01-07-21, 12:57, AngeloGioacchino Del Regno wrote:
> In order to fine-tune the frequency scaling from various governors,
> allow to set a maximum transition latency from OPPs, which may be
> different depending on the SoC.

You are doing much more than just this, why ?

> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> ---
>  drivers/cpufreq/qcom-cpufreq-hw.c | 35 +++++++++++++++++++++++--------
>  1 file changed, 26 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/cpufreq/qcom-cpufreq-hw.c b/drivers/cpufreq/qcom-cpufreq-hw.c
> index 54b79fe772b6..0b80c65a22a8 100644
> --- a/drivers/cpufreq/qcom-cpufreq-hw.c
> +++ b/drivers/cpufreq/qcom-cpufreq-hw.c
> @@ -1331,6 +1331,7 @@ static int qcom_cpufreq_hw_cpu_init(struct cpufreq_policy *policy)
>  	void __iomem *base;
>  	struct qcom_cpufreq_data *data;
>  	char fdom_resname[] = "freq-domainX";
> +	unsigned int transition_latency;
>  	int cpu_count, index, ret;
>  
>  	cpu_dev = get_cpu_device(policy->cpu);
> @@ -1381,22 +1382,31 @@ static int qcom_cpufreq_hw_cpu_init(struct cpufreq_policy *policy)
>  	data->soc_data = of_device_get_match_data(&pdev->dev);
>  	data->base = base;
>  	data->res = res;
> +	policy->driver_data = data;
>  
> -	/* HW should be in enabled state to proceed */
> -	if (!(readl_relaxed(base + data->soc_data->reg_enable) & 0x1)) {
> -		dev_err(dev, "Domain-%d cpufreq hardware not enabled\n", index);
> -		ret = -ENODEV;
> -		goto error;
> -	}
> -
> -	qcom_get_related_cpus(index, policy->cpus);
> +	cpu_count = qcom_get_related_cpus(index, policy->cpus);
>  	if (!cpumask_weight(policy->cpus)) {
>  		dev_err(dev, "Domain-%d failed to get related CPUs\n", index);
>  		ret = -ENOENT;
>  		goto error;
>  	}
>  
> -	policy->driver_data = data;
> +	if (!data->soc_data->uses_tz) {
> +		ret = qcom_cpufreq_hw_osm_setup(cpu_dev, policy,
> +						cpu_count, index);
> +		if (ret) {
> +			dev_err(dev, "Cannot setup the OSM for CPU%d: %d\n",
> +				policy->cpu, ret);
> +			goto error;
> +		}
> +	}
> +
> +	/* HW should be in enabled state to proceed */
> +	if (!(readl_relaxed(base + data->soc_data->reg_enable) & 0x1)) {
> +		dev_err(dev, "Domain-%d cpufreq hardware not enabled\n", index);
> +		ret = -ENODEV;
> +		goto error;
> +	}

The commit log doesn't speak about any of the above.

>  
>  	ret = qcom_cpufreq_hw_read_lut(cpu_dev, policy);
>  	if (ret) {
> @@ -1411,6 +1421,12 @@ static int qcom_cpufreq_hw_cpu_init(struct cpufreq_policy *policy)
>  		goto error;
>  	}
>  
> +	transition_latency = dev_pm_opp_get_max_transition_latency(cpu_dev);
> +	if (!transition_latency)
> +		transition_latency = CPUFREQ_ETERNAL;
> +
> +	policy->cpuinfo.transition_latency = transition_latency;
> +
>  	dev_pm_opp_of_register_em(cpu_dev, policy->cpus);
>  
>  	if (policy_has_boost_freq(policy)) {
> @@ -1421,6 +1437,7 @@ static int qcom_cpufreq_hw_cpu_init(struct cpufreq_policy *policy)
>  
>  	return 0;
>  error:
> +	policy->driver_data = NULL;
>  	kfree(data);
>  unmap_base:
>  	iounmap(base);
> -- 
> 2.32.0

-- 
viresh
