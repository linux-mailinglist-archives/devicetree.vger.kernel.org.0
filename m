Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1893B59B8
	for <lists+devicetree@lfdr.de>; Mon, 28 Jun 2021 09:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232376AbhF1H3L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Jun 2021 03:29:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232375AbhF1H3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Jun 2021 03:29:11 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA806C061766
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 00:26:44 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id i4so8398573plt.12
        for <devicetree@vger.kernel.org>; Mon, 28 Jun 2021 00:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CsEyi+ba8SRVvbqYHH4jH1LVCacUh7q5WrGtZYt+9O0=;
        b=uS/PWnJw9EEYCs7oPju6zEF2huhjziG/Ai+HwVvEbygzN696DD0hR6oCRnY0utpird
         l9wslKvhoYQmH3iJmab+T+Abuj0VG2uHXJ9E1cksWc5ROkYG7zacDj2Peh0eUfzvmiEN
         eSN+PgeDf0S2LYqlfaPzDTZidl7eXk4EjAFOtxV9aVje/oMACppZDyKCtPC0LKToHhRR
         sljfjg637WIkilO3gLVuBmugZcTJ708YnXxdyXL0L+FhYYL/8DPeCjzi+mgSup2ZvXSq
         PTZpWbv2FeE6I+50oVZTLZg3O6aCsSsH3/rmgRjl0jxwKsJIbaZxsQdx4DYZLE0oVFmj
         Vc4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=CsEyi+ba8SRVvbqYHH4jH1LVCacUh7q5WrGtZYt+9O0=;
        b=DEBpAyb3pxawFZYtYTtjU0+O5RMM/OS2C6BePwyunFTfJ6t5YWZ2ZdGSzjp3QG5W1P
         MYHAyWUpd8eQrCMYux6bbEEgVEmrQBG8kaQyq4sRsxGxXZzv9UHkth00ucVxrMjx8izL
         4XmpKKlLKXw701mkNGCt+prO5i7YIHI4Tc2+dMbzwLfU5N3sgS+wVUsNwUw86Pno5LQH
         FmO5bcz8Z1ieSZLFzZMcTkAoW2BsV1q8sYf30Ev2LpG0Ljiw0x8DwCG64PYNXxOcCERA
         6dovN7uSwAZibC1MWnbyasbyQKukxghv6PRYYto/p2sh7YgoxvkybrC4d6sWc2/iydTS
         WFKA==
X-Gm-Message-State: AOAM530PuX73D6NDVbs6jvKe/U/sHJmp2GM/UMuRnalLYZssw81wOIW4
        PAaOIiCiR/AKTBSEm7S9OX4sTA==
X-Google-Smtp-Source: ABdhPJzvj3RyJoV/06Ww25nVFOFF8bC770v05nPHwgY/XXaIshX/WE20M/moTS6WjQFUX7/ZSyTbWg==
X-Received: by 2002:a17:90a:4d4e:: with SMTP id l14mr26329436pjh.129.1624865204126;
        Mon, 28 Jun 2021 00:26:44 -0700 (PDT)
Received: from localhost ([136.185.134.182])
        by smtp.gmail.com with ESMTPSA id h24sm13522053pfn.180.2021.06.28.00.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 00:26:43 -0700 (PDT)
Date:   Mon, 28 Jun 2021 12:56:41 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Yuan <hector.yuan@mediatek.com>, Sudeep.Holla@arm.com
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Subject: Re: [PATCH v12 1/2] cpufreq: mediatek-hw: Add support for CPUFREQ HW
Message-ID: <20210628072641.amqk5d3svwolvhic@vireshk-i7>
References: <1622307153-3639-1-git-send-email-hector.yuan@mediatek.com>
 <1622307153-3639-2-git-send-email-hector.yuan@mediatek.com>
 <20210614104058.jdwb7godqzhf7rgd@vireshk-i7>
 <1624781848.1958.16.camel@mtkswgap22>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1624781848.1958.16.camel@mtkswgap22>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27-06-21, 16:17, Hector Yuan wrote:
> On Mon, 2021-06-14 at 16:10 +0530, Viresh Kumar wrote:
> > On 30-05-21, 00:52, Hector Yuan wrote:
> > > +static int mtk_get_related_cpus(int index, struct cpufreq_mtk *c)
> > > +{
> > > +	struct device_node *cpu_np;
> > > +	struct of_phandle_args args;
> > > +	int cpu, ret;
> > > +
> > > +	for_each_possible_cpu(cpu) {
> > > +		cpu_np = of_cpu_device_node_get(cpu);
> > > +		if (!cpu_np)
> > > +			continue;
> > > +
> > > +		ret = of_parse_phandle_with_args(cpu_np, "performance-domains",
> > > +						 "#performance-domain-cells", 0,
> > > +						 &args);
> > > +		of_node_put(cpu_np);
> > > +		if (ret < 0)
> > > +			continue;
> > > +
> > > +		if (index == args.args[0]) {
> > > +			cpumask_set_cpu(cpu, &c->related_cpus);
> > > +			mtk_freq_domain_map[cpu] = c;
> > > +		}
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > 
> > I really hope this can be moved to a common place as more than one
> > drier should be required to parse this thing.
> > 
> 
> Yes, this can be a common part for all performance domain users. But may
> I know whats your suggestion? Put this API in another file or? Thanks

Rob, Sudeep: You guys have a suggestion on where can we keep a routine for this
?

-- 
viresh
