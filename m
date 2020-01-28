Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E756F14C1CA
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2020 21:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726291AbgA1UpZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jan 2020 15:45:25 -0500
Received: from mail-pl1-f193.google.com ([209.85.214.193]:35056 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726276AbgA1UpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jan 2020 15:45:24 -0500
Received: by mail-pl1-f193.google.com with SMTP id g6so5585239plt.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2020 12:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Q5Xif2KZlxqItit3sw6ycecM4cOFBN2t+5fxteCDrK8=;
        b=lvsLAulhE7xtj+a4t9yoxvpe/kvn+YMj8o6UOLOucYmc3eJzopzxqhlatisRJT0HQ8
         87JojLTO6qVJvhgZ8mFygTHptKMCk8Gzt7+FHu72+pmkldWZM8IccdP2PjN1R681lVVX
         +x9FghhVKCTgIuxKgK9GMpQV4p7rZ8mazCWQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Q5Xif2KZlxqItit3sw6ycecM4cOFBN2t+5fxteCDrK8=;
        b=F/6zkzYYKgjCyxYiwwklrLiUlMAAbQDF9g5YXrwCvdWEC0eB30Rflz7VhYG2LMzvQz
         JgIxvcJFz8/29CEqr4DI4ToyOlk604ps6psnXQpTtEaELaCyqVM9syxIPbXd9aigI/R6
         fJ0qopJvU9MhQFYKVZW6lSGtfrV8J5Zmnz2xkjUXfzi64w3LhLZ0o4cLe1bhgDHe7OOg
         E+ZE6//HuvkM6LWE6nz9cD9BWqPJUcYOaqxrdAEL4QZ6NMFe5gylFi5+cC0CqmzL0F3y
         XjSLmbULXkzQ0miJc+Wfkw2np4osuhMdLVnGCNnVOqOmKSkX3r0cQFMKlwlbP9gBMr4T
         +2rA==
X-Gm-Message-State: APjAAAUPZnmneNubSKDgk3CA8hjk9SGCDFaTsUy6ixoINp4Z0vcHNznf
        +IQOFC6fQKc9NnWsOkkj4+rRLg==
X-Google-Smtp-Source: APXvYqwUTBN9TmhGuD1UiwT6ZcOmPkm1axw7mAwi6JPAz2IO8gca1uGK48ZbZszQ8uLcqbmvsakqBQ==
X-Received: by 2002:a17:90a:ba98:: with SMTP id t24mr6937143pjr.12.1580244324192;
        Tue, 28 Jan 2020 12:45:24 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id 72sm17034196pfw.7.2020.01.28.12.45.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 12:45:23 -0800 (PST)
Date:   Tue, 28 Jan 2020 12:45:22 -0800
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
Subject: Re: [RFC v3 03/10] cpufreq: blacklist SC7180 in cpufreq-dt-platdev
Message-ID: <20200128204522.GG46072@google.com>
References: <20200127200350.24465-1-sibis@codeaurora.org>
 <20200127200350.24465-4-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200127200350.24465-4-sibis@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 28, 2020 at 01:33:43AM +0530, Sibi Sankar wrote:
> Add SC7180 to cpufreq-dt-platdev blacklist.

nit: you could mention that cpufreq is handled by the
'qcom-cpufreq-hw' driver.

> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 5492cf3c9dc18..580abc777d9d8 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -130,6 +130,7 @@ static const struct of_device_id blacklist[] __initconst = {
>  	{ .compatible = "qcom,apq8096", },
>  	{ .compatible = "qcom,msm8996", },
>  	{ .compatible = "qcom,qcs404", },
> +	{ .compatible = "qcom,sc7180", },
>  	{ .compatible = "qcom,sdm845", },
>  
>  	{ .compatible = "st,stih407", },

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
