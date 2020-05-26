Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C10A41C3203
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2020 07:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726649AbgEDFAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 May 2020 01:00:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726635AbgEDFAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 May 2020 01:00:22 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5275FC061A0E
        for <devicetree@vger.kernel.org>; Sun,  3 May 2020 22:00:21 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id mq3so3262481pjb.1
        for <devicetree@vger.kernel.org>; Sun, 03 May 2020 22:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YzgczjfLPQLAKY8wFhDcvCuISss4Jf5RyzdYYNHrSpY=;
        b=GU9hXXVHXKLQ28+CNkXAk/EaUVQfZ8ZSHxayK8EQa/qW+bJ1KEP0wL+Oycg4FiMroZ
         4aEz3HyYFMqRONFNUZbxoPv66FZqnTHxodYB/EHkAoBkMKIkwviEt3uH+IHC+jVk27i9
         z+zhjioCHkvWDA86FTCdP/Zxd77aLxCeUNGSdf5LUSvdVx3YVaJQ5XQ6ZsTOUfbViEay
         +OlfPs8BbHojAryRBnuhCv+ZV9IWFq69mTu5Ad+lO7g9VyxRjYzIeSLI5VsrXIpno1Hv
         WBTVCYO3fAgst16SkCvUaosOZlsCFftp8UafEvcRjacctrXzHLT/jG69oSORdaMjW5sm
         FZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YzgczjfLPQLAKY8wFhDcvCuISss4Jf5RyzdYYNHrSpY=;
        b=BhelbLrNja/rcVD0EHQ7iptWdsXW8gPuuB5NjjXdM/pbq/xZmYxVk7XCT57CiMrYr3
         /r269zGh2F54IB9Mi0n1mHfQBEn5TnDJxmNrdPkE5eCraAZIj4VpUHmcqsK6xEcblOq0
         MAIFnm/FgAB8g0lL3o34jCN6UTdqifoepBqY7ZDZTioETjuSZY4YMTc7ix8twkmQhg0V
         baW1wlSYuLPxeuxU8kmdvlkVpnFXUAASyL6UFgyEVsGLucCr789soJgQIU8hgn3QQG0U
         nxjdyASPZ0Ov76Uzkc9Flle8Okp8vhSYhS9aEKYUcDd3qga02jJSbPvgR7vWthLR2V7G
         h2dw==
X-Gm-Message-State: AGi0PuaGGrWpqLPclblVQyMA0C5VNGpTyQ23MmPX9HUKm+67HGLM3py0
        EZYH0agUQcekhy8t3wZNO3hX5g==
X-Google-Smtp-Source: APiQypIY3zMvB3eb0xdBPwpvHhd5+QA0zZT3bSEbLNo9JR0nwyYcRCFxejSU9LWLUtAEmoVzqsprgQ==
X-Received: by 2002:a17:90a:3450:: with SMTP id o74mr14829736pjb.159.1588568420510;
        Sun, 03 May 2020 22:00:20 -0700 (PDT)
Received: from localhost ([122.171.118.46])
        by smtp.gmail.com with ESMTPSA id b12sm7420187pfd.165.2020.05.03.22.00.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 May 2020 22:00:19 -0700 (PDT)
Date:   Mon, 4 May 2020 10:30:17 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Saravana Kannan <saravanak@google.com>
Cc:     Georgi Djakov <georgi.djakov@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Sibi Sankar <sibis@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Jordan Crouse <jcrouse@codeaurora.org>,
        Evan Green <evgreen@chromium.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 6/7] OPP: Update the bandwidth on OPP frequency changes
Message-ID: <20200504050017.nsd7fp7gtxxwt3d7@vireshk-i7>
References: <20200424155404.10746-1-georgi.djakov@linaro.org>
 <20200424155404.10746-7-georgi.djakov@linaro.org>
 <CAGETcx9iAJRW9Y9orHNF-fC53nNob_vZKYUNEpwf_AeAdWCOjw@mail.gmail.com>
 <20200430060901.j7jjw6soo5h5xoul@vireshk-i7>
 <CAGETcx_zH_KJ7_A7Ofc2M5GfHKX_J__URJB127MSMcTeaqyzjw@mail.gmail.com>
 <20200430075356.rjtctfuenirvhxgn@vireshk-i7>
 <CAGETcx-W5XjNtgjDz2Ma_miN=cUBb5LFfhzYtKRpf6iAi4bXNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGETcx-W5XjNtgjDz2Ma_miN=cUBb5LFfhzYtKRpf6iAi4bXNw@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30-04-20, 09:32, Saravana Kannan wrote:
> You are missing the point. This is not about aggregation. This is
> about OPP voting for bandwidth on a path when the vote can/should be
> 0.
> 
> I'll give another example. Say one of the interconnect paths needs to
> be voted only when a particular use case is running. Say, the GPU
> needs to vote for bandwidth to L3 only when it's running in cache
> coherent mode. But it always needs to vote for bandwidth to DDR. With
> the way it's written now, OPP is going to force vote a non-zero
> bandwidth to L3 even when it can be zero. Wasting power for no good
> reason.
> 
> Just let the drivers/device get the bandwidth values from OPP without
> forcing them to vote for the bandwidth when they don't need to. Just
> because they decide to use OPP to set their clock doesn't mean they
> should lose to ability to control their bandwidth in a more
> intelligent fashion.

They shouldn't use opp_set_rate() in such a scenario. Why should they?

opp_set_rate() was introduced to take care of only the simple cases
and the complex ones are left for the drivers to handle. For example,
they take care of programming multiple regulators (in case of TI), as
OPP core can't know the order in which regulators need to be
programmed. But for the simple cases, opp core can program everything
the way it is presented in DT.

-- 
viresh
