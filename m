Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF2EC1E36BD
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 05:54:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387522AbgE0Dxy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 May 2020 23:53:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387520AbgE0Dxy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 May 2020 23:53:54 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24374C03E97D
        for <devicetree@vger.kernel.org>; Tue, 26 May 2020 20:53:54 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id t16so9608834plo.7
        for <devicetree@vger.kernel.org>; Tue, 26 May 2020 20:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IYMd1AnUAPkMGM+mZJ4SXD6TMuAQaYu5keXEtUSwigU=;
        b=OYBybCvA4Wk60gJ0QRkPpb+8kKDOtMgLg5Msuhx1IAMH/EuJPHEk2+5QswUX2XkbTA
         uIpNhFkyGJYuBSY+mdFa7w4sPg95usp/ddDeC/CnTYEaGXfwJxVvbNMfWmKCxsKQ9vBc
         1hA0YB7FkWB+E9fKuxbpHcnilnJ9Nxu4RF9fiINeKd35PwKPeOG0Z3+ZB+ytOaSX5MfI
         88jDa/DMvYvA+X8ibB8/Szk5bJCCRBs0vqECD6/c9BaQfXmZdUkGbXVBWtcX0vmKaZrX
         8vPO+yp3unIffWr4l0TtD82PTyoZO+HZSA0bCgLxchBRcspuibBMv1bpSgjor49AL4sv
         cF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IYMd1AnUAPkMGM+mZJ4SXD6TMuAQaYu5keXEtUSwigU=;
        b=WTXowr+5MGMSnH3WtJBSieL6Pb2fqoditpfC4Up/Ju7Dri8UpcDCTL/NHDOHnNzYef
         z6wXuuGDnFzbtibpESkIP0umwW0k1pjzv6UBHxhM0BSXnXORTxElEFQl/XSYAdSe6hC0
         GAZ81eAV57QYL1Bl8s6X8ZBPlAwMkp4bGtPUEvvkD3olXSgazamiZyigTwPafBxFyMFh
         d4IWmgCK9W6rV/wJM+kaS8+ba0ygl/QcQ7ZXZjd2ngvB8neIsbO3iFJeGinQ5sNtHjcu
         jjqhBmRzO+c6XQVEs4tqmy+fK3sQHB7gjNEGZVfGbDkSGeE3lhx7eAFC4siONp6SsqTX
         XitA==
X-Gm-Message-State: AOAM531F5pIv7Fq9biNxyQPKoSY8Vx72QFrtn9mVMkHwIYTwcr/+fEH0
        2XImV8SSenq7eTloYp4LSPhmKA==
X-Google-Smtp-Source: ABdhPJzneh3TIZ4iWzcoexcyoNh9amW0JOGqNov81CSCdr8FsV5jm5LYXnkl+oudXPsIFda/4RQstQ==
X-Received: by 2002:a17:90a:e38f:: with SMTP id b15mr2842638pjz.206.1590551633445;
        Tue, 26 May 2020 20:53:53 -0700 (PDT)
Received: from localhost ([122.172.60.59])
        by smtp.gmail.com with ESMTPSA id w186sm819760pff.83.2020.05.26.20.53.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 20:53:51 -0700 (PDT)
Date:   Wed, 27 May 2020 09:23:49 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     sboyd@kernel.org, georgi.djakov@linaro.org,
        bjorn.andersson@linaro.org, saravanak@google.com, mka@chromium.org,
        nm@ti.com, agross@kernel.org, david.brown@linaro.org,
        robh+dt@kernel.org, mark.rutland@arm.com, rjw@rjwysocki.net,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        dianders@chromium.org, vincent.guittot@linaro.org,
        amit.kucheria@linaro.org, ulf.hansson@linaro.org,
        lukasz.luba@arm.com, sudeep.holla@arm.com
Subject: Re: [PATCH v4 06/12] cpufreq: qcom: Update the bandwidth levels on
 frequency change
Message-ID: <20200527035349.mrvvxeg3lqv53jm2@vireshk-i7>
References: <20200504202243.5476-1-sibis@codeaurora.org>
 <20200504202243.5476-7-sibis@codeaurora.org>
 <20200505045012.zfx2e6chqo5f3e4n@vireshk-i7>
 <8fc5b72c9af6fd6a707a280cfc678677@codeaurora.org>
 <b7e184b2da5b780a4e7e6ee47963f9b4@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b7e184b2da5b780a4e7e6ee47963f9b4@codeaurora.org>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26-05-20, 23:18, Sibi Sankar wrote:
> https://patchwork.kernel.org/cover/11548479/
> GPU driver uses Georgi's series
> for scaling and will need a way to
> remove the icc votes in the suspend
> path, (this looks like a pattern
> that might be used by other clients
> as well) I could probably update
> opp_set_bw to support removing bw
> when NULL opp is specified. Similarly
> opp_set_rate will need to support
> set bw to 0 when set_rate is passed
> 0 as target freq for the same use case.

Sure, please send a patch for that.

-- 
viresh
