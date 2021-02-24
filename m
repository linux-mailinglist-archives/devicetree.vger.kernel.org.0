Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69C83323652
	for <lists+devicetree@lfdr.de>; Wed, 24 Feb 2021 04:56:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233578AbhBXDzw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 22:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233530AbhBXDzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 22:55:51 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC5AC06174A
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 19:55:11 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id j12so440363pfj.12
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 19:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=o4Xn3srsG5cZJe+1gJ2dbBTvOflBVA+QWuUBaa1OWlQ=;
        b=Zq7fWg8nPXnQDlMoLsWR9cKDMC5QjUmoqWtJG8yqDKulfABe7dXKMMxmBSUzY2AR4C
         LcfZb1pRYxpq4L84bCtNSNjcytMlUMF9dQ/2lv2GnfqlcZ/rUSeeF3ZN5cVArY3zgscT
         az6lk5OBvt3qi5/xuUTN6WvrghR4cKm+ahzliJ5gTwFlvpB0dtbjP4hQ8dC7m5Ryahne
         aVnrr9qKHuj6hv6J9Qi/jn0wIDbjwcuw3nMc+etC+WUhwyV3DcnitTvtiYMDa5erJ7bQ
         uhht68T+KmMwyCoQz7sg0t+gXqz2E37rUJ83ccSj0FRpwCx442ubVEFhqPHwcRs/oYnP
         Cv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=o4Xn3srsG5cZJe+1gJ2dbBTvOflBVA+QWuUBaa1OWlQ=;
        b=t2Ej5L+i8c+elMpVqCoZtobJzKrocltFblkHeVmjq/50aU6YS0zyxeoIx40gaI1lEM
         IpAg/PoktJtAmCfGWGzUf6DTUXVh6NLi6ZLmIWBZqphOyEM0mmzOsMcKRvlTSzqUmLoC
         HvSUSjkG8xaQXQBGtpcLmmFUnG+V2Yzfmk2m5d4ua6kuicEPlld7kJXVkZ633MOM2NZk
         alXSkV5BH2yucM4bJySDFBPN5/chU/l0rybiuMVRq28nlKLibHMDGSgSnlT3IoamTUJ+
         RrX2Rh56CIu9aWS1WcoccEqwx1hvQMGkuxcDlpY7qQlYKfQNwgg1VV5Ve0OElzcmDt5O
         EOew==
X-Gm-Message-State: AOAM531T8C1UaVS2p8uEujjIelj1CU+wp34BZqjAFm+AN8sblrDr7wzS
        HcPYIBBCHyZTVO/7fPQp4sJJPJrN8Sag1Q==
X-Google-Smtp-Source: ABdhPJxLI0p6y/ie5MjpFWg2jQw6hK8Wr0ItIZOkV7Ns0Ak/T6t9deCbXnHEQeDKeDx57I3qf8rpjA==
X-Received: by 2002:a63:5ec3:: with SMTP id s186mr13034248pgb.179.1614138910945;
        Tue, 23 Feb 2021 19:55:10 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id p11sm597526pjb.31.2021.02.23.19.55.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 19:55:10 -0800 (PST)
Date:   Wed, 24 Feb 2021 09:25:06 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Linus Torvalds <torvalds@linux-foundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scripts/dtc: Add missing fdtoverlay to gitignore
Message-ID: <20210224035506.k47bp4kzeftitmi4@vireshk-i7>
References: <20210223211252.66286-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210223211252.66286-1-robh@kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-02-21, 15:12, Rob Herring wrote:
> Commit 0da6bcd9fcc0 ("scripts: dtc: Build fdtoverlay tool") enabled
> building fdtoverlay, but failed to add it to .gitignore.
> 
> Also add a note to keep hostprogs in sync with .gitignore.
> 
> Fixes: 0da6bcd9fcc0 ("scripts: dtc: Build fdtoverlay tool")
> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Linus, please pick this up directly if you want. I'm going to be offline
> most of the next couple of days, will have a few other DT fixes to send 
> you later this week.
> 
> Rob
> 
>  scripts/dtc/.gitignore | 1 +
>  scripts/dtc/Makefile   | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
> index b814e6076bdb..8a8b62bf3d3c 100644
> --- a/scripts/dtc/.gitignore
> +++ b/scripts/dtc/.gitignore
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  dtc
> +fdtoverlay
> diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> index c8c21e0f2531..95aaf7431bff 100644
> --- a/scripts/dtc/Makefile
> +++ b/scripts/dtc/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # scripts/dtc makefile
>  
> +# *** Also keep .gitignore in sync when changing ***
>  hostprogs-always-$(CONFIG_DTC)		+= dtc fdtoverlay
>  hostprogs-always-$(CHECK_DT_BINDING)	+= dtc

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
