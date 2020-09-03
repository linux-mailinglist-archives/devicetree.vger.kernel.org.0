Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CCBD25BB43
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 08:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727794AbgICGxW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 02:53:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbgICGxT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 02:53:19 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A409C061246
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 23:53:19 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id g29so1351969pgl.2
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 23:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xHx59Kc0fj+SU2ePT6xEUvz7NPe3tqHc1i2XcwEDs+Y=;
        b=JNfXGJzozbWYeHWf2PYzDgPhBhfvYOR2UYqy7SloT/XlLEjGfapyF5snCEAO/uishI
         CqWUNTc1vNGodba2rYLzuFAUZZCU0bCFr5/EFwsxD/1/DOaMURyfLDLB08Y/AYrAJmak
         DFFtjkOL1Ky1yL4Vz++1SHPhp+LOKe1KZCGIORom+xB2HtJ+RgBx/9fZJH/pHFbn4GQh
         4vPxPNFLFA6dFHYSuLJ6Hy2DRebkSATSqb40gDQTb724VcvXsrhcRSDT2dwlZbknIZqY
         ukgoDtmQsk8rfomr7/D1MtlnKUxToBph1zKcDI956uaHVwDh3iDEeI32lp/mZQTMNq25
         6qAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xHx59Kc0fj+SU2ePT6xEUvz7NPe3tqHc1i2XcwEDs+Y=;
        b=Tn4GYe5pqBD2R8jHy9cL/Mx7CJ7AdBGqrW1OQVxEt9mLOrTHsn3pC/yQJbvAY660gP
         bUobfMvD6Y2SiWOIUGC9JYyc4d9xIB65zO9SZ8Fal0uPUS8qCzsWsr9ZDMDsbTBC2qo1
         BPnr9H6tzUT798HOdxKeJ0uCMO6YWHKqNTsxwqidJmcjjblJctEuDDbbo0YYo9heSdZ3
         HK0si0FhsBfRmrgFeSVIpDLN91ZTgXia5KwUqe6YWA2ZaKOEQ1EIkAJUvh+Z4/OOxUR7
         ie+x6V1yoAp1AnNYalZO4U6KkDTmN1Z+HfeWp11gGRhpPu/ZrmqPm5yoDlczfnZhiaiB
         naNg==
X-Gm-Message-State: AOAM530E7dwFrDmx1w+bgUpH2T1WeNeuZTY7nR2oXJ2nGt/yPJMQYoAt
        tmUwIsTqdQ/6av1w8kihDXmX3Q==
X-Google-Smtp-Source: ABdhPJwfjYiSXMyvm2VlezoTqGO5XqHG/HH+RdLIKD5CPb5y26URaJi8etuNmI++djlaKbA7swZBbQ==
X-Received: by 2002:a63:e010:: with SMTP id e16mr1711737pgh.202.1599115998350;
        Wed, 02 Sep 2020 23:53:18 -0700 (PDT)
Received: from localhost ([122.167.135.199])
        by smtp.gmail.com with ESMTPSA id l21sm1419055pgb.35.2020.09.02.23.53.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 23:53:17 -0700 (PDT)
Date:   Thu, 3 Sep 2020 12:23:14 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     ansuelsmth@gmail.com
Cc:     'Sibi Sankar' <sibis@codeaurora.org>, vincent.guittot@linaro.org,
        saravanak@google.com, 'Sudeep Holla' <sudeep.holla@arm.com>,
        "'Rafael J. Wysocki'" <rjw@rjwysocki.net>,
        'Rob Herring' <robh+dt@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: R: [RFC PATCH v3 0/2] Add Krait Cache Scaling support
Message-ID: <20200903065314.y3ynhwydahaeg6o6@vireshk-i7>
References: <20200821140026.19643-1-ansuelsmth@gmail.com>
 <20200824104053.kpjpwzl2iw3lpg2m@vireshk-i7>
 <b339e01f9d1e955137120daa06d26228@codeaurora.org>
 <039d01d67f6a$188700d0$49950270$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <039d01d67f6a$188700d0$49950270$@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31-08-20, 09:41, ansuelsmth@gmail.com wrote:
> On 31-08-20, Sibi wrote:
> > On 2020-08-24 16:10, Viresh Kumar wrote:
> > > +Vincent/Saravana/Sibi
> > >
> > > On 21-08-20, 16:00, Ansuel Smith wrote:
> > >> This adds Krait Cache scaling support using the cpufreq notifier.
> > >> I have some doubt about where this should be actually placed (clk or
> > >> cpufreq)?
> > >> Also the original idea was to create a dedicated cpufreq driver (like
> > >> it's done in
> > >> the codeaurora qcom repo) by copying the cpufreq-dt driver and adding
> > >> the cache
> > >> scaling logic but i still don't know what is better. Have a very
> > >> similar driver or
> > >> add a dedicated driver only for the cache using the cpufreq notifier
> > >> and do the
> > >> scale on every freq transition.
> > >> Thanks to everyone who will review or answer these questions.
> > >
> > > Saravana was doing something with devfreq to solve such issues if I
> > > wasn't mistaken.
> > >
> > > Sibi ?
> > 
> > IIRC the final plan was to create a devfreq device
> > and devfreq-cpufreq based governor to scale them, this
> > way one can switch to a different governor if required.
> 
> So in this case I should convert this patch to a devfreq driver- 

I think this should happen nevertheless. You are doing DVFS for a
device which isn't a CPU and devfreq looks to be the right place of
doing so.

> Isn't overkill to use a governor for such a task?
> (3 range based on the cpufreq?)

I am not sure about the governor part here, maybe it won't be required
?

-- 
viresh
