Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18803278068
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 08:15:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727183AbgIYGPv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 02:15:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727086AbgIYGPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 02:15:51 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0B13C0613D4
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 23:15:50 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id 197so1643441pge.8
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 23:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sFDqhTWwq0aXbG+fWoeTT2wJdl6mRz17hLrTzSVAK+8=;
        b=WTIVIGAF8OuXN7pfm1xe0I3K+SU7Q8sUkg5Vex08vfqC+KKp92yK0Uxe3SaT97bMWi
         qvK6AHoegm7OPPTjLaJmZDHLHLjg0DplxVTXor8kynxX9WTzKdq/VXEOHA7dUW3hD3O9
         4ktDnP01VzHZslBWMpJlU5ef0raOz135iKFjEy/hrcfIrQ2rg0YqmkHPVHddlCe4zqsj
         1ukeQdXUTvcU8B1Wt/Ae7Svtaux4DpHl9gzQkQQmbplPJxeIjOTtFJmTDzwJ3CkKmSyZ
         5jzpWdI/OTghnqcxouBUNla4KuWi+GKh4t3M0Nf1F9ayUk3Zic5s0tk3xX+pVpG7H6qe
         3yHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sFDqhTWwq0aXbG+fWoeTT2wJdl6mRz17hLrTzSVAK+8=;
        b=YpCKfF0zrEE1SYpgkQYKrxcnLPUT1xMlnmp05O/UDhBQ/r6ZHA+cZwhi23x1EomUJu
         xlQEpg8TWWQpQhvszLfeB4Ypkje6EeJXUwpDCZDrF8pR/zLim7rtsGGosQu+5Z5NwrCg
         hEB51zz6qB9k7krlh3HJbssLSjVW4cwS1HKMwy2r9U9bKWwARAORUPn9DVsY09iUluav
         JPLCTeck3EE+gLo47Aqu9ZECgl8RqnCnkuEWc7467TEEe/A2npm4lA3NG5h4afezDNic
         f04km10mVU4H+zP4WXQDqbQKrwmtw2Qc7HZWEpCRiXJ0dmV4tx66NX3yjlkarnpH2gfS
         5Zdw==
X-Gm-Message-State: AOAM533QlqkSENtqNBKY8YXNw/j7LY5UG+xkA8gNCoMPkSTV/xhFwLBF
        qR/B+2M1cc1VyhDKZFfRUjT1kQ==
X-Google-Smtp-Source: ABdhPJwLTkRlOrK4LFHv28M0c20AUtX5UgY6Rg7+xHPiT/uw8gq2AOfK8YUc1BXr+ogR2OkzhZVJhw==
X-Received: by 2002:a62:7fcf:0:b029:151:15e0:ab82 with SMTP id a198-20020a627fcf0000b029015115e0ab82mr2726264pfd.80.1601014550164;
        Thu, 24 Sep 2020 23:15:50 -0700 (PDT)
Received: from localhost ([122.181.54.133])
        by smtp.gmail.com with ESMTPSA id t3sm1001649pje.43.2020.09.24.23.15.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 23:15:49 -0700 (PDT)
Date:   Fri, 25 Sep 2020 11:45:43 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Yuan <hector.yuan@mediatek.com>
Cc:     Rob Herring <robh@kernel.org>, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Subject: Re: [PATCH v7 2/2] dt-bindings: cpufreq: add bindings for MediaTek
 cpufreq HW
Message-ID: <20200925061543.5hxs3ija2y53gzea@vireshk-i7>
References: <1599712262-8819-1-git-send-email-hector.yuan@mediatek.com>
 <1599712262-8819-3-git-send-email-hector.yuan@mediatek.com>
 <20200922202852.GA3134161@bogus>
 <1600866614.21446.18.camel@mtkswgap22>
 <1601000847.21446.34.camel@mtkswgap22>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1601000847.21446.34.camel@mtkswgap22>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25-09-20, 10:27, Hector Yuan wrote:
> Hi, Viresh & Rob Sir:
> 
> I will change frequency domain to below and define it in cpufreq_hw
> schema rather than cpu node.
> 
> mediatek,freq-domain-0 = <&cpu0>, <&cpu1>;

I think it would be better to do it the standard way we have done it elsewhere.
i.e. follow Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt, that
is similar to what you did earlier.

-- 
viresh
