Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1D32284701
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 09:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727210AbgJFHTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 03:19:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727191AbgJFHTO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 03:19:14 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34984C0613D3
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 00:19:13 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id m15so776618pls.8
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 00:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=m2b+rmKRGPYGRHjXu3I4nFOGjf5oCG8gDODedqsY8HI=;
        b=MzsarqGUb28zUo1ZRQuRl2CQFRw++HYQ9UsKlDiioJRx4DDwqhZDVh8zkS5ZMaLDPN
         PuUv7/4fQPcMU4pTP8LgkCw7cXvG4Q7wMpcYZP1NRw5oFwk9avs29jXu6WJ7Kqpb3dEw
         E84b/Q8xEWKH54B99Wka5P9nno7+tj/P6JYT+sykdnSBV80ZOiZ5/Y2SSMr+KISzJyFC
         lsnZ4iPOniWwx5fMVAMlNJwUHCsFhvi4eOWqtdMmuUuYtXldriIAPaBJoOJqEX0nljck
         OurpuFskSQdMmkCc1oZiC+bdw4aFm2tydZEQQh3tvvSFD02Q6AqJuOZN5nGTssGzhquK
         Bk7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=m2b+rmKRGPYGRHjXu3I4nFOGjf5oCG8gDODedqsY8HI=;
        b=d8p2KwcqQX1tt27azELM3d3CtV6LaB8Rs6Sk+J8E2P+3SFiU+ynAMgFpa0P8YJ18D/
         ipH6CQ8Hn3ia9LlA/3HvhoRcQZXdoYR1+5eKc5WY4A6fIWhC9AzIg/R0Ia+hnawVfBAc
         tbKTYcGR2+9JWn4/dBDg9Q7iL5lcsxrIyuY+BnDoWeei01W6cPwV2XGNtIHMObIzmOgW
         n+VXYgL/PRd2odMCYKeMufPtfNQN0SyFrLmDGwJooXuFdPPaAdjAWFGtYfrfJ9fxehYg
         SmJCzmCc+ANh+VeK2Gc2M5oykjr7c6jV96aHXMvV895B+Ef7zlXbvolgYRPoYmRzzVCb
         N1+Q==
X-Gm-Message-State: AOAM532JQhbvZI717ZogsImSh4YHJKYxfdzXxoFOX5/HvInomJZp2lhm
        Nuc6WiNPnHJ7Gao++3bAwmqpTw==
X-Google-Smtp-Source: ABdhPJwDUUyCJoFXkW7uX+HT9mhqyp71hZG+SsLmVoqnODhfEK9QCzoSbQzGtxk5AUvOx2IO9tk/nQ==
X-Received: by 2002:a17:90a:a595:: with SMTP id b21mr2943649pjq.95.1601968752689;
        Tue, 06 Oct 2020 00:19:12 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id j4sm2140975pfj.143.2020.10.06.00.19.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2020 00:19:11 -0700 (PDT)
Date:   Tue, 6 Oct 2020 12:49:09 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Nicola Mazzucato <nicola.mazzucato@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        sudeep.holla@arm.com, rjw@rjwysocki.net, vireshk@kernel.org,
        robh+dt@kernel.org, daniel.lezcano@linaro.org,
        morten.rasmussen@arm.com, chris.redpath@arm.com
Subject: Re: [PATCH v2 2/2] [RFC] CPUFreq: Add support for
 cpu-perf-dependencies
Message-ID: <20201006071909.3cgz7i5v35dgnuzn@vireshk-i7>
References: <20200924095347.32148-1-nicola.mazzucato@arm.com>
 <20200924095347.32148-3-nicola.mazzucato@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200924095347.32148-3-nicola.mazzucato@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24-09-20, 10:53, Nicola Mazzucato wrote:
> I am seeking some feedback/comments on the following approach.
> 
> Intro:
> Info of performance depency for cpus will be beneficial for systems
> where f/w description of the CPU performance control domain is different
> from the clock domain, e.g. per-CPU control with multiple CPUs sharing
> clock, and kernel OSPM s/w components need to take CPU performance
> dependency into account.
> Essentially these s/w components will have to be provided with
> this information from dt and this RFC is presenting a possible way
> to do so.

I am not sure I understand what performance control mean here. Can you please
elaborate a bit more on that ? For example, with current code and understanding,
a cpufreq policy belongs to a group of CPUs which change their frequency
together, which also mean that they change their performance level together and
so I am not able to understand what's going on here. Sorry about that.

What kind of hardware configuration doesn't work with this ?

-- 
viresh
