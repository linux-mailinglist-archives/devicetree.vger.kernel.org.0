Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D970D308587
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 07:16:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232059AbhA2GMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 01:12:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232046AbhA2GMi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 01:12:38 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AA43C061574
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 22:11:58 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id o16so5969232pgg.5
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 22:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MPN0BMsB39RPUu08cmjTxw4xAhgm3Lx59PJQqiAOE/s=;
        b=YL81QMgl8PDwNUbMmxmzvHD3/zDUbZKJMgHYDVDZ0NHnMYB04g71KRqSNVPq8mbbUX
         VHmfM2Jw7HgU5ImzEvSzjkUzxvOvXLNo5jv3Zf2sU5Q+Zetl0TNtvq+Qk8alZHLhg9op
         se6rYIv3poPwKalEWI7Vm+0Ly3eUurnHyXC6C5t9EW2CMK7j0KESadPEaboCBjXp96Xv
         /9TQNRP3kiwEzSRgFBzbUyVB0Z2OM/MpV7xpGQrYkvXetH65KBSgg0KrlFb4o5/7Ob4+
         7MiL9Lf1szFFmZiyl919eGlmHVexj+tJr5RZKxLSESvMG2Q6sRHiQCZqlmN/Fr6io7Vh
         5ezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MPN0BMsB39RPUu08cmjTxw4xAhgm3Lx59PJQqiAOE/s=;
        b=GmPOMijFiS6m4k0XtTDSd+owJyB0JxgBsQm4nyqIxhn0wrLws2YsunWO3ue3Nee4xw
         ZK+uyrPARhwWz6B6aUyEZY6uyBGxmKQLWvyjF4+T3oKogc/7CDc57+nRjfKcGR6rFNMu
         m1B0XXGp8kSMQvO4LF7telW+XNzaY0FKH7cuTjOEHLeb5G51ptYOldEZQY5NQBzq6Zp/
         O/hh99++D04fr54sen1rmS6ad+/eyZin27tjypHOHRj6BY1PBJ1Wl55Kto9wfHfkI4qb
         AqROncLtsaHFE+DmBRzGBJlccZLESVWTP8Pm/3rWC/Fiq39lf+n5snDD+9jNNj2x/Ulk
         KmfA==
X-Gm-Message-State: AOAM532ufAQPOGDktNxguVz0B6IkOkQV0ix0NUDXpQaCXll7RZ2RN0Zx
        5YduSMhmXOI8BHEQkpT2VWHEHA==
X-Google-Smtp-Source: ABdhPJx+2sbR1KRS2HPfOiR+ckB3CwTCvzfubhc4jw/RU/l3MxCHAqtZBG8fIebeH99F9BGtE2kpXg==
X-Received: by 2002:a63:4859:: with SMTP id x25mr3158130pgk.289.1611900717799;
        Thu, 28 Jan 2021 22:11:57 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id mj21sm6342074pjb.12.2021.01.28.22.11.56
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 22:11:57 -0800 (PST)
Date:   Fri, 29 Jan 2021 11:41:54 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
        Bill Mills <bill.mills@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        devicetree@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH V6 2/6] scripts: dtc: Build fdtoverlay tool
Message-ID: <20210129061154.z5gnipkqhanppjqb@vireshk-i7>
References: <cover.1611312122.git.viresh.kumar@linaro.org>
 <2dfec4acb1bfbab08b431908ace0a77cc3279434.1611312122.git.viresh.kumar@linaro.org>
 <1f6408aa-9900-fe4a-d885-028ff8329707@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1f6408aa-9900-fe4a-d885-028ff8329707@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29-01-21, 00:03, Frank Rowand wrote:
> On 1/22/21 4:50 AM, Viresh Kumar wrote:
> > We will start building overlays for platforms soon in the kernel and
> > would need fdtoverlay going forward. Lets start building it.
> > 
> > The fdtoverlay program applies (or merges) one or more overlay dtb
> > blobs to a base dtb blob. The kernel build system would later use
> > fdtoverlay to generate the overlaid blobs based on platform specific
> > configurations.
> > 
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > ---
> >  scripts/dtc/Makefile | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
> > index 4852bf44e913..5f19386a49eb 100644
> > --- a/scripts/dtc/Makefile
> > +++ b/scripts/dtc/Makefile
> > @@ -1,13 +1,17 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  # scripts/dtc makefile
> >  
> > -hostprogs-always-$(CONFIG_DTC)		+= dtc
> > +hostprogs-always-$(CONFIG_DTC)		+= dtc fdtoverlay
> >  hostprogs-always-$(CHECK_DT_BINDING)	+= dtc
> >  
> >  dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
> >  		   srcpos.o checks.o util.o
> >  dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
> > 
> 
> Please add this comment:
> 
> # The upstream project builds libfdt as a separate library.  We are choosing to
> # instead directly link the libfdt object files into fdtoverly

My bad, I checked this again and you gave the exact same comment
during V4 as well. Sorry about missing this earlier.

-- 
viresh
