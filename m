Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 630831B7F21
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2020 21:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727031AbgDXTlP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Apr 2020 15:41:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727021AbgDXTlO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Apr 2020 15:41:14 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0E8C09B04A
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2020 12:41:14 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id r14so5283959pfg.2
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2020 12:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Qbux80UTz0vA817hD4tP9hl9NHJsjLKh48SDL2L8F/o=;
        b=OvWTBqlkP7TC/ZbPKUDwMuhgaD+AWHPGVEFsc9vkTNBX+V1qdIdW+igEYnSvFhaLK9
         EICcoAcgtctkQZt8fWHFfCvAkpU/GgdvOGNstLWdDXD+s/lBR9H7+w5R7U9c7qLJntGH
         1MJ0XEyyRX9XrKLk6IPcyxURkHmjOM2IKjOiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Qbux80UTz0vA817hD4tP9hl9NHJsjLKh48SDL2L8F/o=;
        b=JoH2Es3y5VZrY0JuMoQNlfK1/RJXIgHTGzZ0aGEo7HCINLrSFpydv2AgxhucvNWHxA
         EUmYU3hWDEAj8e0eG1bcS/ncI4c0Hm+P3KEE+J9Zi1jwC+dwtRnGh3MycH55i7sgFJKU
         xBhxTM6oQTL9ustw0XUyjx2XviczvKzVO0HVOnJ4kl1uhFT8Xx61bWmucVEsxdyH1YaQ
         q1Zs5nnhLIUsH5r5+sbmVx9Vkaj+8sp5CnVErlJt/yjaExIxiZs59ykcFAG6E/mAhhR6
         ICXgg9wWzsc14WsAfHHwpg5lUJ7Efx4IoEWXCXTZt89RETtHVpSbRXyxt2AU41AM7aDX
         vaKQ==
X-Gm-Message-State: AGi0PuZ4mltTDj3pB0Ur9UrublcYWjiw6gK5hHvvkZC7OSoIDMZVu+nO
        1V0hwUfivKLcPJdNvi7YhJcDpZ5FcuU=
X-Google-Smtp-Source: APiQypKUSiQYkB+1l3STtqMgcJ9AzHkpeWfGE0J7tpvxsaxtM/vlY9mCbgbOGUURLv/PRIWyx/N0Ew==
X-Received: by 2002:a62:ed14:: with SMTP id u20mr11580549pfh.69.1587757274146;
        Fri, 24 Apr 2020 12:41:14 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id nm22sm5212397pjb.38.2020.04.24.12.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 12:41:13 -0700 (PDT)
Date:   Fri, 24 Apr 2020 12:41:12 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Georgi Djakov <georgi.djakov@linaro.org>
Cc:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        robh+dt@kernel.org, rjw@rjwysocki.net, saravanak@google.com,
        sibis@codeaurora.org, rnayak@codeaurora.org,
        bjorn.andersson@linaro.org, vincent.guittot@linaro.org,
        jcrouse@codeaurora.org, evgreen@chromium.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 7/7] cpufreq: dt: Add support for interconnect
 bandwidth scaling
Message-ID: <20200424194112.GD4525@google.com>
References: <20200424155404.10746-1-georgi.djakov@linaro.org>
 <20200424155404.10746-8-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200424155404.10746-8-georgi.djakov@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 24, 2020 at 06:54:04PM +0300, Georgi Djakov wrote:
> In addition to clocks and regulators, some devices can scale the bandwidth
> of their on-chip interconnect - for example between CPU and DDR memory. Add
> support for that, so that platforms which support it can make use of it.
> 
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
> ---
> v7:
> * Drop using dev_pm_opp_set_paths(), as it has been removed.
> * Add Kconfig dependency on INTERCONNECT, as it can be module.
> 
> 
> v2: https://lore.kernel.org/r/20190423132823.7915-6-georgi.djakov@linaro.org
> 
>  drivers/cpufreq/Kconfig      |  1 +
>  drivers/cpufreq/cpufreq-dt.c | 15 +++++++++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/cpufreq/Kconfig b/drivers/cpufreq/Kconfig
> index c3e6bd59e920..db2ad54ee67f 100644
> --- a/drivers/cpufreq/Kconfig
> +++ b/drivers/cpufreq/Kconfig
> @@ -217,6 +217,7 @@ config CPUFREQ_DT
>  
>  config CPUFREQ_DT_PLATDEV
>  	bool
> +	depends on INTERCONNECT || !INTERCONNECT
>  	help
>  	  This adds a generic DT based cpufreq platdev driver for frequency
>  	  management.  This creates a 'cpufreq-dt' platform device, on the
> diff --git a/drivers/cpufreq/cpufreq-dt.c b/drivers/cpufreq/cpufreq-dt.c
> index 26fe8dfb9ce6..4ecef3257532 100644
> --- a/drivers/cpufreq/cpufreq-dt.c
> +++ b/drivers/cpufreq/cpufreq-dt.c
> @@ -13,6 +13,7 @@
>  #include <linux/cpufreq.h>
>  #include <linux/cpumask.h>
>  #include <linux/err.h>
> +#include <linux/interconnect.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/pm_opp.h>
> @@ -95,6 +96,7 @@ static int resources_available(void)
>  	struct device *cpu_dev;
>  	struct regulator *cpu_reg;
>  	struct clk *cpu_clk;
> +	struct icc_path *cpu_path;
>  	int ret = 0;
>  	const char *name;
>  
> @@ -121,6 +123,19 @@ static int resources_available(void)
>  
>  	clk_put(cpu_clk);
>  
> +	cpu_path = of_icc_get(cpu_dev, NULL);
> +	ret = PTR_ERR_OR_ZERO(cpu_path);
> +	if (ret) {
> +		if (ret == -EPROBE_DEFER)
> +			dev_dbg(cpu_dev, "defer icc path: %d\n", ret);
> +		else
> +			dev_err(cpu_dev, "failed to get icc path: %d\n", ret);
> +
> +		return ret;
> +	}
> +
> +	icc_put(cpu_path);
> +
>  	name = find_supply_name(cpu_dev);
>  	/* Platform doesn't require regulator */
>  	if (!name)

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
