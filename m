Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 609FD14C1C4
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2020 21:44:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726143AbgA1Uo0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jan 2020 15:44:26 -0500
Received: from mail-pl1-f194.google.com ([209.85.214.194]:45077 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726292AbgA1Uo0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jan 2020 15:44:26 -0500
Received: by mail-pl1-f194.google.com with SMTP id b22so5563052pls.12
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2020 12:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KbJeh8/LI2mlLTbZ1tH2VO6yi1sNDNk35sjg9NyyWm8=;
        b=FNCVgdtuEjKA0XO9LyT7fFDkTLztdtZBXLK+Wji/XBIULcUc0VHBKSq9rnp57o4/uv
         Wrvz6O3JeBx7ohJxH5vzXQHWvMR/zOkDj31S7lKg05DguscHm3hzpUBEspKsfME/HFvJ
         hbOhPs4Mz+OsShEmI3DgPvYZwga6/tAccTuq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KbJeh8/LI2mlLTbZ1tH2VO6yi1sNDNk35sjg9NyyWm8=;
        b=jBZk8LpsnzSPAzqZbUWcNRnHGC/kTbBIL/KG9YJjB7X/9RPTKZCc9aITg44KK9q5Ye
         +sutKmHkmrFOgDfS50UAETu7XybwoWNt7GACVlp7861h5OKjJZuYQFap31xJaZPUX7Pq
         zSdNUlyNjP5zAyzkpgl3OQXeHvxsnslAPucUCfyLE+vb4/cCt3SKj+UPLeed12vBPybL
         Rj3cT5BkvlSH4Mkazp/TOaqxWakmjSUrJRdrCvMOPa9AiBbsfmPkTmRl7ZUqagt3KJU4
         jlwlinKUQk6sk9soSbnnKU+Kz6o8ll6KG6aIJxjWRGJ2o0XUx5UURMD7AOKtOnab315V
         z3kA==
X-Gm-Message-State: APjAAAWFjcAzjem0AoF03SVULzbxEOv6G0uaGqBovhj7RLny8wtMKKgQ
        cgE9o2VlWdt4BKmAGpVWGR2Ypg==
X-Google-Smtp-Source: APXvYqxRJmQfwf2gXkhjLY8zub6q2yqFGirhOsUJnZOp1NUzUg5k4YhfFHNWtUB/gZ/+9rYRTomoww==
X-Received: by 2002:a17:90a:bd01:: with SMTP id y1mr6823668pjr.129.1580244265708;
        Tue, 28 Jan 2020 12:44:25 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id c14sm20864917pfn.8.2020.01.28.12.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 12:44:25 -0800 (PST)
Date:   Tue, 28 Jan 2020 12:44:23 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     viresh.kumar@linaro.org, sboyd@kernel.org,
        georgi.djakov@linaro.org, saravanak@google.com, nm@ti.com,
        bjorn.andersson@linaro.org, agross@kernel.org,
        david.brown@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
        rjw@rjwysocki.net, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, dianders@chromium.org,
        vincent.guittot@linaro.org, amit.kucheria@linaro.org,
        ulf.hansson@linaro.org
Subject: Re: [RFC v3 02/10] cpufreq: blacklist SDM845 in cpufreq-dt-platdev
Message-ID: <20200128204423.GF46072@google.com>
References: <20200127200350.24465-1-sibis@codeaurora.org>
 <20200127200350.24465-3-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200127200350.24465-3-sibis@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 28, 2020 at 01:33:42AM +0530, Sibi Sankar wrote:
> Add SDM845 to cpufreq-dt-platdev blacklist.

nit: you could mention that cpufreq is handled by the
'qcom-cpufreq-hw' driver.

> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index f2ae9cd455c17..5492cf3c9dc18 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -130,6 +130,7 @@ static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "qcom,apq8096", },
>  	{ .compatible = "qcom,msm8996", },
>  	{ .compatible = "qcom,qcs404", },
> +	{ .compatible = "qcom,sdm845", },
>  
>  	{ .compatible = "st,stih407", },
>  	{ .compatible = "st,stih410", },

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
