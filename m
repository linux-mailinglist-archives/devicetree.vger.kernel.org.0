Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8ADB3020BF
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 04:17:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727025AbhAYDQ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jan 2021 22:16:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727011AbhAYDQK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jan 2021 22:16:10 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EE6AC061574
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 19:15:28 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id 31so6706934plb.10
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 19:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ztmrgbb7cCJUci7yiQuKf8XZW3frFdpHz0f7D21G6xM=;
        b=gUMp94t55sKPN+eJOCz9ZjzVGBjwEo9WUdXw1e2PA0mhHQaKuzw6bHYv4KnJby9rsO
         N9oJNzMYiRIPZgS0JOsdlb8Bkw3p5OTdzYhvggUTL7u5gZ/ZwXweV8t8dd4GZ5kIfGbW
         i7Z6C80o1m5iWemm16iTBh0edxBGkT2lpv3Y9JvCmsujRAjIaZ9cP3g5sVhmNvhVHeAL
         RxEE2uLbQi2iNylc6HKcTZYpy9NOKqasMyULU+ZdDYb4qmuPB4rlF3m3G98xO8eAqTqY
         X70DP62IbQaPZfbz47mdWWRTGB4WYfxFxJr9xpgI+qYvp2dRcW2Ad4NdBya8oxKWgKyA
         TKGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ztmrgbb7cCJUci7yiQuKf8XZW3frFdpHz0f7D21G6xM=;
        b=Hzrh43rlMKHghg3mHWDmvs1SISkah/bV/zLIodvBeu48i3H5eVfs7uoLygKbvAgayU
         GbY5EDs3oW/56VeQ70pT5zXOzxFvWcM0STG+CVoO3TtTL7f+0Gq0LxmDlRY2bPRMzQf6
         +M27C8ag8tFn5/hbWWuuCijYqtfVdDtn2jHHpKe4Gi8oyI/0NZQ5BOlCKsVxzXbCFKjD
         n4kxW1Zjax4dfSaK8YUMzpF1YRYpALc2j0WybXe7pU/zuExW9m8qEOu2u9aadru1AA2a
         yqjBhrEBokKy8ntVYlDPXP8NFckK81xTlMTPYtC9m6KFfkCISUyHbCmUhLGwiaOjrD3Q
         TdZw==
X-Gm-Message-State: AOAM533WNjeRICY+HCK9yvliotlVUPivcJKm6aiT9GMeivRjHX1a05iE
        YetaF5h+U29Caosr2Op2p9WoHg==
X-Google-Smtp-Source: ABdhPJzbBNuQpgydZm26pYlKIWTxY6AisfNU89T5/TNIlm9CAoIl9SN9HRQd2d7lEWOM3Ly9ai2ZwQ==
X-Received: by 2002:a17:90a:e602:: with SMTP id j2mr19923521pjy.191.1611544527796;
        Sun, 24 Jan 2021 19:15:27 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id o76sm14560661pfg.164.2021.01.24.19.15.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Jan 2021 19:15:27 -0800 (PST)
Date:   Mon, 25 Jan 2021 08:45:25 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
        Bill Mills <bill.mills@linaro.org>, devicetree@vger.kernel.org,
        Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH V6 2/6] scripts: dtc: Build fdtoverlay tool
Message-ID: <20210125031525.iomtztlzfjftwfj7@vireshk-i7>
References: <cover.1611312122.git.viresh.kumar@linaro.org>
 <2dfec4acb1bfbab08b431908ace0a77cc3279434.1611312122.git.viresh.kumar@linaro.org>
 <20210123003518.GG4400@yekko.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210123003518.GG4400@yekko.fritz.box>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-01-21, 11:35, David Gibson wrote:
> On Fri, Jan 22, 2021 at 04:20:32PM +0530, Viresh Kumar wrote:
> > We will start building overlays for platforms soon in the kernel and
> > would need fdtoverlay going forward. Lets start building it.
> > 
> > The fdtoverlay program applies (or merges) one or more overlay dtb
> 
> Saying "merges" here is probably misleading, since as I mentioned
> elsewhere fdtoverlay can *not* merge overlays, only apply them to a
> base tree.

Right, my mistake.

-- 
viresh
