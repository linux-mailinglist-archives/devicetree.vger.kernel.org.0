Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C0934FB217
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 05:00:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240174AbiDKDCu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 23:02:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231802AbiDKDCt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 23:02:49 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87BC55FB9
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 20:00:33 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id n18so12709058plg.5
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 20:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NsvfzGeEol9JMCZvR8qAUpetZ3eFv1g/vaks5It4CXI=;
        b=FeiONeMfEmPzhMQUNqHY3YPc7caljS+ajmTS1XxQZu85GJQMTY3yM238/EGGfsNhpy
         yWWv5IvrCLmmJJaOcYIpnIW7S/iRCZvKd7mP43qMxtacteESLPrr0/jS/TtzjJ1228mh
         +n+DWkbXxjKkUiOGTNOcb+fDpo8mUyM1Zk2zccAi5qYgJjlkmFT4JZPoFYu9U7IazGxK
         rDZcTcXLCrjJH2SfZPnvO6ri01ql5B7fyeuHWHGVUBuxZgkTtppiuopCqkK/dMovhILT
         rc8Jai0TCPJSfrQ9RHsRFPsepMnfCSSUYt5cplUUdUPUMzN9P95JjqIVwAepLHlP8HyG
         vIDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NsvfzGeEol9JMCZvR8qAUpetZ3eFv1g/vaks5It4CXI=;
        b=yYOU3V5Wj6ZE7aNwRIZ9DF2lrWfw5FqQ9Fg3lWoCHVUFd825zO7IoyVBzpGPTdbBop
         njMRgF/kJK4udfgSs4fr/6XDx7Tm+va0vn9oKMG4HHGHFOd9dSbg2I+7rInq3hWN73si
         QlmI06Sk4DpAZSp3tWF+4+KWCmOuBF0YDQe/HH7RJ6d7/+wuhyzTzuwgdxbwIO9J4XGu
         D0IM49zgkK+3Pz3duWrCETQX0uq6lxgptxn6lPlMCFY1SyXYb2RqIm+oY1NHRWx2XcFE
         Jz9XRhuKLW6fS8Fq+cVzK/H9sVppTjcJNTDPESg1bBHtKcJOrBZ7KPzEtkYLFk9V4SHa
         adEA==
X-Gm-Message-State: AOAM532Mxfd0oi9gVJeTryTn3eHeMsOkkB2okFdL+T/bUAsNbZS2QHBB
        I/CAL2fW1wlFOj5BucvOGnR3Dw==
X-Google-Smtp-Source: ABdhPJyn0uAbcnzlSZQYk17M60n6PnmWB/qODT42/eYir2XUp+Rm9EXWzkmA8vcNpN+lNI+FHiKbKA==
X-Received: by 2002:a17:90a:430d:b0:1bc:f340:8096 with SMTP id q13-20020a17090a430d00b001bcf3408096mr33747085pjg.93.1649646033047;
        Sun, 10 Apr 2022 20:00:33 -0700 (PDT)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id o32-20020a635d60000000b0039cd48c7f6asm10016236pgm.32.2022.04.10.20.00.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 20:00:32 -0700 (PDT)
Date:   Mon, 11 Apr 2022 08:30:30 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Sumit Gupta <sumitg@nvidia.com>
Cc:     rafael@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        treding@nvidia.com, jonathanh@nvidia.com, linux-pm@vger.kernel.org,
        linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ksitaraman@nvidia.com,
        sanjayc@nvidia.com, bbasu@nvidia.com
Subject: Re: [Patch v4 0/4] Tegra234 cpufreq driver support
Message-ID: <20220411030030.eqq4a2xgidexowzq@vireshk-i7>
References: <20220405130119.4697-1-sumitg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220405130119.4697-1-sumitg@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05-04-22, 18:31, Sumit Gupta wrote:
> This patchset adds driver support for Tegra234 cpufreq.
> Also, added soc data and ops to support multiple SoC's and variants
> which have similar logic to {get|set} cpu frequency as Tegra194 in
> the same driver.
> >From cpufreq point, main difference between Tegra194 and Tegra234 are:
>  1) Tegra234 uses MMIO for frequency requests and not sysreg like T194.
>  2) MPIDR affinity info in Tegra234 is different from Tegra194.
>  3) Register bits of pllp_clk_count and core_clk_count are swapped.
> So, added ops hooks for Tegra234.

Applied. Thanks.

-- 
viresh
