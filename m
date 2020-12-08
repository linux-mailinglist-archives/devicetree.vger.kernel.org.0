Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E61D2D2453
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 08:27:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727010AbgLHH0z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 02:26:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725871AbgLHH0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 02:26:54 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B45FDC061749
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 23:26:14 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id 69so3552528pgg.8
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 23:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xIO9JpAUTkGihgKfEbKVJG87paWf400pgZOMT6qA8FE=;
        b=kqnmJKaFMQuWu6HFIqgafDBOiqqHESjea4lcVKgJ0l9uGDpUCLpa8XvTbA6HbFvE4p
         MNG602dmJPD4fkUykE1mNYHhG/HbZIzwHJ2ugWFjryaw+RgY60Z64rFI39/UKaUd0P/E
         N5c7APiqSA3IjR60Ie0bEKUZTwI8uSatcRxFIVoSGkjp3f65UUjSh5TbJuVyziyTZR/Z
         wc1mCMGP0v1lPFNZy3R+IybyDB2hIrKyY2NKuFmiWURyl3PoHWIQv4Nowm5tukQlF2VA
         0QllOhEqjJOs8py44htGROATBKVmIrQc9vdFIri1ZAGQylv8pdEXyvDpVklXOMykBWb3
         hPFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xIO9JpAUTkGihgKfEbKVJG87paWf400pgZOMT6qA8FE=;
        b=hLv0Z6oVmszRbvwiBREVZbxi5pLUjpC+7jACkMs1LvYmTgOoL+ZCAaV/DMlHmuc2S7
         5yIE1rLeL4RWwEOKU4GpryDdZv6ZeQdDuR16EZyHIHbSnxe6eWyGdHSbX+0MBYN2BM/V
         9avwVgshmkWsDUWZQ2csT09fcOkla8Wnus2MKqbEc/7hqyNii7CHDikpN8YfPXosw4N1
         +6BKn3BVf3uo7hQABlPasMFSooZ0uZUo7OICEvEr2jyrNFXMMCEUCx/3jacAsO9REcqQ
         88ER8GIksw0W+HqjDgw2rfP1kTkLjAimzhZSmuBNDrd7oe5GuO2aBTZJK6yRO26WGy5q
         bang==
X-Gm-Message-State: AOAM530yMPKOGa8HC9wm1nLX7ywdXG//33jsamKehKuG3bxYkv/PYvPy
        2znj1jGBKLz/StvJgDwJgL97CA==
X-Google-Smtp-Source: ABdhPJygsLIE8kXIDMBPSc4wcTQOzDstg4xV38cF/UKmPk0Qdzt8EiD+wh7Q4PaOhB+xCiQMoWO2Ag==
X-Received: by 2002:a65:4544:: with SMTP id x4mr22229571pgr.183.1607412374264;
        Mon, 07 Dec 2020 23:26:14 -0800 (PST)
Received: from localhost ([122.172.136.109])
        by smtp.gmail.com with ESMTPSA id l66sm14409613pgl.24.2020.12.07.23.26.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 23:26:13 -0800 (PST)
Date:   Tue, 8 Dec 2020 12:56:11 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Nicola Mazzucato <nicola.mazzucato@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        sudeep.holla@arm.com, rjw@rjwysocki.net, vireshk@kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, nm@ti.com,
        daniel.lezcano@linaro.org, morten.rasmussen@arm.com,
        chris.redpath@arm.com
Subject: Re: [PATCH v4 3/4] scmi-cpufreq: get opp_shared_cpus from opp-v2 for
 EM
Message-ID: <20201208072611.ptsqupv4y2wybs6p@vireshk-i7>
References: <20201202172356.10508-1-nicola.mazzucato@arm.com>
 <20201202172356.10508-4-nicola.mazzucato@arm.com>
 <20201208055053.kggxw26kxtnpneua@vireshk-i7>
 <0e4d3134-f9b2-31fa-b454-fb30265a80b5@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0e4d3134-f9b2-31fa-b454-fb30265a80b5@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-12-20, 07:22, Nicola Mazzucato wrote:
> On 12/8/20 5:50 AM, Viresh Kumar wrote:
> > On 02-12-20, 17:23, Nicola Mazzucato wrote:
> >>  	nr_opp = dev_pm_opp_get_opp_count(cpu_dev);
> >>  	if (nr_opp <= 0) {
> >> -		dev_dbg(cpu_dev, "OPP table is not ready, deferring probe\n");
> >> -		ret = -EPROBE_DEFER;
> >> -		goto out_free_opp;
> >> +		ret = handle->perf_ops->device_opps_add(handle, cpu_dev);
> >> +		if (ret) {
> >> +			dev_warn(cpu_dev, "failed to add opps to the device\n");
> >> +			goto out_free_cpumask;
> >> +		}
> >> +
> >> +		ret = dev_pm_opp_set_sharing_cpus(cpu_dev, opp_shared_cpus);
> >> +		if (ret) {
> >> +			dev_err(cpu_dev, "%s: failed to mark OPPs as shared: %d\n",
> >> +				__func__, ret);
> >> +			goto out_free_cpumask;
> >> +		}
> >> +
> > 
> > Why do we need to call above two after calling
> > dev_pm_opp_get_opp_count() ?
> 
> Sorry, I am not sure to understand your question here. If there are no opps for
> a device we want to add them to it

Earlier we used to call handle->perf_ops->device_opps_add() and
dev_pm_opp_set_sharing_cpus() before calling dev_pm_opp_get_opp_count(), why is
the order changed now ?

> otherwise no need as they would be duplicated.

I am not sure why they would be duplicated in your case. I though
device_opps_add() is responsible for dynamically adding the OPPs here.

> > And we don't check the return value of
> > the below call anymore, moreover we have to call it twice now.
> 
> This second get_opp_count is required such that we register em with the correct
> opp number after having added them. Without this the opp_count would not be correct.

What if the count is still 0 ? What about deferred probe we were doing earlier ?

-- 
viresh
