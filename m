Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD64D69EDBE
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 05:03:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbjBVEDW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 23:03:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjBVEDV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 23:03:21 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BCC4B758
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 20:03:20 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id s18so3396162pgq.1
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 20:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QuI/VvwDNYNNazJWSsosiKrPGXGOzC0MjV/AUA+0Y18=;
        b=nCQyd6hFnx68A0tFIWYPEgBjsOibWoTXo/smz+3gYmBRuFPBPE4pSywkfCdKUgkvpA
         2hEWf1fS6sHfJJXEu8DWcYvgIJnpq7iCy2lvMkzx+HoVbnLXGhDO3iOZBooeJGtaR0Pd
         PIZdAXgjwX/QLrf6b4kb2lhJNJ1j/mPGS3Ik1K0eu/3Wy4urzl1+NUghMtTwh0O3P7VO
         XwlRUrcPNrxw9hmttzjw+mE8ECx7oXM2WAMltKMJ6Ph5wzLKVBrlFjqFfJs7uN86eaQv
         wJJXhF1XzUfKegtHqxyQWMa88wL+GMAeFpaouHVUjOmGIQMWTqRQH3o2TN5f/VRX0YMW
         7WDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QuI/VvwDNYNNazJWSsosiKrPGXGOzC0MjV/AUA+0Y18=;
        b=vU1s671oog9M94V/Qn7mMGfz9QQLZ3TMCJx10fynSH7mGbRlx+ky1+cFIC5xiFWf0f
         BIuPrypPzpq9F4akYV+MdGYoE8Dzwo181RZ1sUiIU0z4gqb8smITuvNh9byLHXdJxrDE
         gfsu+vLGuIjFGqZmpFaSY8qCffRB62dskrwW/L/wbyUzZKtjvyXmO7cVWL3QDUrHC+OO
         wwgcieuCqwqhx/ojIaEAOhP/FtpqDw8lt4NmaN0O3vlSUj0ADMKfCEZBNqSxpznkFTgU
         8zAe5ywQ4I9InvGeDSbLxDLvwmSlGTUaPXRlRyqeFmsczD5wmZ7PxlQawSoUnGw/QTiw
         uujw==
X-Gm-Message-State: AO0yUKWKmUDihbrex7iA+Ec0hJ1VyWNMMGsBThHw90jSjuV8fXuKrljH
        KHnwk4gksY5t/UpZ8st5bC67WQ==
X-Google-Smtp-Source: AK7set+j5AzguT+wPMqJTKHp23ybKVMqcUGOXK1UT3NyydZuoWzKn02WTplOAHKPGXm8wetjgNETZA==
X-Received: by 2002:aa7:96d0:0:b0:5a8:515a:eba4 with SMTP id h16-20020aa796d0000000b005a8515aeba4mr6768719pfq.10.1677038600006;
        Tue, 21 Feb 2023 20:03:20 -0800 (PST)
Received: from localhost ([122.172.83.155])
        by smtp.gmail.com with ESMTPSA id h5-20020a62b405000000b005ae8e94b0d5sm6764079pfn.107.2023.02.21.20.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 20:03:19 -0800 (PST)
Date:   Wed, 22 Feb 2023 09:33:17 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Sumit Gupta <sumitg@nvidia.com>
Cc:     treding@nvidia.com, krzysztof.kozlowski@linaro.org,
        dmitry.osipenko@collabora.com, rafael@kernel.org,
        jonathanh@nvidia.com, robh+dt@kernel.org, lpieralisi@kernel.org,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, mmaddireddy@nvidia.com, kw@linux.com,
        bhelgaas@google.com, vidyas@nvidia.com, sanjayc@nvidia.com,
        ksitaraman@nvidia.com, ishah@nvidia.com, bbasu@nvidia.com
Subject: Re: [Patch v2 7/9] cpufreq: tegra194: add OPP support and set
 bandwidth
Message-ID: <20230222040317.r2p6zlbumazymluc@vireshk-i7>
References: <20230220140559.28289-1-sumitg@nvidia.com>
 <20230220140559.28289-8-sumitg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230220140559.28289-8-sumitg@nvidia.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-02-23, 19:35, Sumit Gupta wrote:
> +static int tegra_cpufreq_set_bw(struct cpufreq_policy *policy, unsigned long freq_khz)
> +{
> +	struct dev_pm_opp *opp;
> +	struct device *dev;
> +	int ret;
> +
> +	dev = get_cpu_device(policy->cpu);
> +	if (!dev)
> +		return -ENODEV;
> +
> +	opp = dev_pm_opp_find_freq_exact(dev, freq_khz * KHZ, true);
> +	if (IS_ERR(opp))
> +		return PTR_ERR(opp);
> +
> +	ret = dev_pm_opp_set_opp(dev, opp);
> +	dev_pm_opp_put(opp);

What about dev_pm_opp_set_rate() instead ?

> +	return ret;
> +}

-- 
viresh
