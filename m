Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8C321D306
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2020 11:42:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727890AbgGMJmu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jul 2020 05:42:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726725AbgGMJmt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jul 2020 05:42:49 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD59C061794
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 02:42:49 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id p1so5287325pls.4
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 02:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kucW4jxemtt/pXZ+E7AnSMC/PbTa/AsJZUR8UTzZMJ4=;
        b=lcI55YvoWw3tjd74BpYl3dOvn6cD8IGpI18wAuSDdfI4sk/yUrXuYryw5dMDR3ba1H
         wsDroptgzsdRf6HDnuuC9KtEUmxNLkSugmrrZZWJ+TrxRInGvzQu+V8U1KyCGsgmzQxz
         utd2+/BqJCDwDxIeA96VNW5V1m1uo/asivNCEOTBFLElvOGHzz5oKsGQpwERc+BFy2EJ
         tVygl8BjJ+ZYkfzJlScudQJmmd2ndfRU8setyiwGZRWSA7yS4TGV1osn/KyuhFmsufe5
         QoYRNH63+CWoFr39Gaeeza7qt7cIfKrbEIIgbUzn1Fny9/V/FPtfPgrwrwYUwxshYy9F
         RIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kucW4jxemtt/pXZ+E7AnSMC/PbTa/AsJZUR8UTzZMJ4=;
        b=JyqHapAcnYUVDEIunku+fuXLbB4qCDA2WTqT1lm7DJxWyOS1AbSAcDT6mTpxShqNo9
         h6UdbPfLTIy0ay7Z9yRENPLHNbv7Lz43z52eyvryHeP3cCB25rcbOjHcighui3ttWMpJ
         vwo1edpn1SBvcQY0VmLyplwBnveD8X4uvACCCuJNX0l14ANMYy4un+lO2OQfLM1jd7D3
         6rAd8pUT4tig1PRFOZdvLLfzq4f2gIdabRkO9P2JaqWaDctjkzta/lLuGa7YonfHQpYp
         fV4saub6EAtxpb6o8xfWNt3vP01cKafpccQUkNzowN4mzntinLS6+7tpvudUq0RCJkG8
         KgLA==
X-Gm-Message-State: AOAM533YPEmDIMPXLjqqMVLqlxzrGodznmj8n4ijpUoXeo08qxqqhI3J
        EZk3HKnoDhV+LmZB3/m6zPQ5HQ==
X-Google-Smtp-Source: ABdhPJwSWiNCy4GMY/Ku2oHof1ytCHYjNesOLFGJYXH8bvQqNhWsN8dMZuvobXI86tTO3CgigTkIpw==
X-Received: by 2002:a17:902:e9d2:: with SMTP id 18mr69294722plk.40.1594633368761;
        Mon, 13 Jul 2020 02:42:48 -0700 (PDT)
Received: from localhost ([122.172.34.142])
        by smtp.gmail.com with ESMTPSA id h18sm6620431pfr.186.2020.07.13.02.42.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Jul 2020 02:42:48 -0700 (PDT)
Date:   Mon, 13 Jul 2020 15:12:45 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Cc:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        srv_heupstream@mediatek.com
Subject: Re: [PATCH v7 5/8] opp: Modify opp API, dev_pm_opp_get_freq(), find
 freq in opp, even it is disabled
Message-ID: <20200713094245.ktx3oj3i225r74qh@vireshk-i7>
References: <1594348284-14199-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1594348284-14199-6-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1594348284-14199-6-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10-07-20, 10:31, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> Modify dev_pm_opp_get_freq() to return freqeuncy
> even this opp item is not available.
> So that we can get the information of disable opp items.
> 
> Change-Id: I54dacf13050397f5080ccdb8b07d6220e7461e4e
> CR-Id:
> Feature:
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/opp/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index eed42d6b2e6b..5213e0462382 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -118,7 +118,7 @@ EXPORT_SYMBOL_GPL(dev_pm_opp_get_voltage);
>   */
>  unsigned long dev_pm_opp_get_freq(struct dev_pm_opp *opp)
>  {
> -	if (IS_ERR_OR_NULL(opp) || !opp->available) {
> +	if (IS_ERR_OR_NULL(opp)) {
>  		pr_err("%s: Invalid parameters\n", __func__);
>  		return 0;
>  	}

Please cleanup this patch for all the extra stuff that isn't required mainline
and send it again to me separately from this series.

-- 
viresh
