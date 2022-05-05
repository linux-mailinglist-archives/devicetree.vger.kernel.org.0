Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C13151BAD6
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:44:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350198AbiEEIrb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:47:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350204AbiEEIr3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:47:29 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 299394A913
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:43:48 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id x12so3136729pgj.7
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 01:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JIdmnFxfb9y9uHPy+Bax7qz9vXFbVwF1Bmo9V5O3V2Q=;
        b=v6fe119NMTQTXytrwJqYkuEXKXCwN7r39KRnuTZBCEpJubliaHL/QlzGlxJSXzXI1g
         vyLpUZ7cxn8RbrdU1naRF3Su3yAe4uBSni970hDFDrPQoPM+DiPcFto1uEMsPglQNtS+
         VggCs1/eYFg9WECyAO68n/bccWpSRuawb/HyCZmzwtR9W15qOf/XDuCw9DAba/3qwxZQ
         N4xP/CB5yZx3OhiYnw9vWfgkRnU5EJHk6eHJxRheByaAWZtTV8y7gWtQ2JO+0xveR0RF
         ePaDOiZskAVw6r2r/PuZ+tQmJlSCP80NJiTy8oY+VXra8Yd83GnuiNYzjYJAUIaVip2M
         oB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JIdmnFxfb9y9uHPy+Bax7qz9vXFbVwF1Bmo9V5O3V2Q=;
        b=hYrR6TRU+G8PoILyZC/Oy+bddXLZ02iuCCIXc75FHXaF99iJMSHl2J1Ibkfg+wWC5N
         0sz1kav1UeCY4JqHolbAo58D2H1CXRu/ttbeYGluEX3WVaSnrmVFEszmxnm2bNR53Wy1
         1ZnylbVRnFd4tQBnCQ0tiFgIe2a/rXLJfZlp+kvtTgjd0ejQUkWylHOFbXsNTPgDZ1dC
         Ig3y5vIO+uNagx1st4ZNBz4WRYUmz2wfZ183d4IrAyBPe4rg0AjOHQ10ejDyZfkTNyKU
         nI0jELay4GKryg41sYcYpWKqrgf+CPW99NAR7aHIPFZi3d/tLXtTbbhuxgAtR14yzsKz
         91cw==
X-Gm-Message-State: AOAM530T3oaAXq2CNEDxJYILQ4CPA1Zekj6GL4aLKnOPsFY/xLSRNIwe
        FZkSSaDZJ+JiNzdv6uvdb5QTOw==
X-Google-Smtp-Source: ABdhPJyppwlHO3JoFGsjQtoSnaiRUdjztvdif3JofPWDcB7jlUyARstMHYURp1XYu6MD5ijz5x6ywg==
X-Received: by 2002:a05:6a00:1411:b0:4fd:e594:fac0 with SMTP id l17-20020a056a00141100b004fde594fac0mr24945149pfu.79.1651740227677;
        Thu, 05 May 2022 01:43:47 -0700 (PDT)
Received: from localhost ([122.162.234.2])
        by smtp.gmail.com with ESMTPSA id b1-20020a1709027e0100b0015e8d4eb2c8sm891578plm.274.2022.05.05.01.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 01:43:47 -0700 (PDT)
Date:   Thu, 5 May 2022 14:13:45 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>
Cc:     rafael@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, khilman@baylibre.com,
        angelogioacchino.delregno@collabora.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH v5 2/9] cpufreq: mediatek: Add opp notification support
Message-ID: <20220505084345.e3qt3ocdft75tbxv@vireshk-i7>
References: <20220504130540.5902-1-rex-bc.chen@mediatek.com>
 <20220504130540.5902-3-rex-bc.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220504130540.5902-3-rex-bc.chen@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04-05-22, 21:05, Rex-BC Chen wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> >From this opp notifier, cpufreq should listen to opp notification and do

What happened with the extra ">" here ?

>  static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  {
>  	struct device *cpu_dev;
> @@ -396,6 +458,17 @@ static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info, int cpu)
>  	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
>  	dev_pm_opp_put(opp);
>  
> +	info->opp_cpu = cpu;
> +	info->opp_nb.notifier_call = mtk_cpufreq_opp_notifier;
> +	ret = dev_pm_opp_register_notifier(cpu_dev, &info->opp_nb);
> +	if (ret) {
> +		dev_err(cpu_dev, "cpu%d: failed to register opp notifier\n", cpu);
> +		goto out_disable_inter_clock;
> +	}
> +
> +	mutex_init(&info->reg_lock);

You should always initialize a resource before its users. The notifier
callback, which can get called right after
dev_pm_opp_register_notifier() returns, will use this mutex.

> +	info->opp_freq = clk_get_rate(info->cpu_clk);
> +
>  	/*
>  	 * If SRAM regulator is present, software "voltage tracking" is needed
>  	 * for this CPU power domain.
> @@ -451,6 +524,9 @@ static void mtk_cpu_dvfs_info_release(struct mtk_cpu_dvfs_info *info)
>  	}
>  
>  	dev_pm_opp_of_cpumask_remove_table(&info->cpus);
> +
> +	if (!IS_ERR_OR_NULL(info->cpu_dev))

cpu_dev can never be error here.

> +		dev_pm_opp_unregister_notifier(info->cpu_dev, &info->opp_nb);
>  }
>  
>  static int mtk_cpufreq_init(struct cpufreq_policy *policy)

I also asked you last time to stack things in a order so they are
easier for me to apply. Bugfixes, followed by simple cleanups, which
don't make behavioral changes, followed by real patches.

Now you have sent this patch at an early stage, which blocks me from
applying anything after this.

I can see the earlier comments weren't all considered, and it doesn't
look nice.

-- 
viresh
