Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 297832E079C
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 10:00:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726055AbgLVJAY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 04:00:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726032AbgLVJAY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Dec 2020 04:00:24 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B6B7C0617A6
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 00:59:44 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id r4so7082781pls.11
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 00:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=RHvyko5iU5xg8Cz45AVBchwM4SDGk3Y/8Etp7zQo/0E=;
        b=LfPP06TVJTEK4xWL0o4Uusz6IXwXzk8z3S6CPrE/vyZ9qoOMFRUyzQJWUKQxWhuG/E
         wY5edJUerDgkww2zd4lzbce6lRCficFwzejWrQiDZi/xwHlgy96zpj6C8ioFq0ZrQXBk
         mSOkM2U+2pDJWLqA+j7R2srsKaCnOdyMwev89OKW8IKEfkAPs6AL+3xqznBpqvwnQ0NT
         fjm9Rb+Xfn10diw8TlqXQy8/GkenTeXEg9jbL1dOeVHP/+gjymWREs9O4mMhUSRkCgx+
         FWO4nhtVc54saAG5QAt6VsqTuAXLPGXWUixoDkMsUGzE1xB0aRN/Z6i4X+no1fBNw+u5
         gkcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RHvyko5iU5xg8Cz45AVBchwM4SDGk3Y/8Etp7zQo/0E=;
        b=Lhscc9QfTnKZ4HLmgzzb9TClsrue1IYXv9V3Kv57fVZzyCVrLtcDjEAayVZJvqnw+4
         MX0Ub+3GsVw9MjLogLSMNrAZL5fqD5SAhWenQ15CVdRjqKFmuIoZh2kFcncJ00E0C7hm
         r/ekuhiH5gDGTrB+o0Aeta64Q9O79/5cqRinBb8mFIaCZjQRg8obgzCcoiN7WRvdR0q+
         gusrOh12NUHac8HhSogodrAn0FdRWswt0sxMN9lFsa1zr8fq8nYR9b3PVUnOH1CCAhzx
         j++IvZveux5dmybMSRvbaTdR7WRUWetJgdJnA5/2sARYSbQ5ta3w+SprPy5X8CGvZ1al
         RtYw==
X-Gm-Message-State: AOAM5335K66yUVbiQssL9sEfMJedzn33lUDTJ9G97s4QWz8jdv4u8Qmh
        2bTqw730jnVRYMoOtwzSPA8u5Q==
X-Google-Smtp-Source: ABdhPJykL54UnjW4ciN4fGRWEBJgf6zWsJDjMds2/uHeESPpVfQNNcqkwOSZPGazCeKG973ySyugcg==
X-Received: by 2002:a17:902:c584:b029:da:cc62:22f1 with SMTP id p4-20020a170902c584b02900dacc6222f1mr20408042plx.54.1608627583415;
        Tue, 22 Dec 2020 00:59:43 -0800 (PST)
Received: from localhost ([122.172.20.109])
        by smtp.gmail.com with ESMTPSA id x4sm19796659pgg.94.2020.12.22.00.59.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 00:59:42 -0800 (PST)
Date:   Tue, 22 Dec 2020 14:29:40 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Nicolas Chauvet <kwizart@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Kevin Hilman <khilman@kernel.org>,
        Peter De Schrijver <pdeschrijver@nvidia.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-media@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 14/48] opp: Filter out OPPs based on availability of a
 required-OPP
Message-ID: <20201222085940.y625zxee4tevbqm5@vireshk-i7>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-15-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201217180638.22748-15-digetx@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17-12-20, 21:06, Dmitry Osipenko wrote:
> A required OPP may not be available, and thus, all OPPs which are using
> this required OPP should be unavailable too.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/opp/core.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)

Please send a separate patchset for fixes, as these can also go to 5.11 itself.

> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index d9feb7639598..3d02fe33630b 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -1588,7 +1588,7 @@ int _opp_add(struct device *dev, struct dev_pm_opp *new_opp,
>  	     struct opp_table *opp_table, bool rate_not_available)
>  {
>  	struct list_head *head;
> -	int ret;
> +	int i, ret;
>  
>  	mutex_lock(&opp_table->lock);
>  	head = &opp_table->opp_list;
> @@ -1615,6 +1615,15 @@ int _opp_add(struct device *dev, struct dev_pm_opp *new_opp,
>  			 __func__, new_opp->rate);
>  	}
>  
> +	for (i = 0; i < opp_table->required_opp_count && new_opp->available; i++) {
> +		if (new_opp->required_opps[i]->available)
> +			continue;
> +
> +		new_opp->available = false;
> +		dev_warn(dev, "%s: OPP not supported by required OPP %pOF (%lu)\n",
> +			 __func__, new_opp->required_opps[i]->np, new_opp->rate);

Why not just break from here ?

> +	}
> +
>  	return 0;
>  }
>  
> -- 
> 2.29.2

-- 
viresh
