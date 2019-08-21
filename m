Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F2A19717E
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:25:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727799AbfHUFYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:24:20 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:42351 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727796AbfHUFYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:24:20 -0400
Received: by mail-pg1-f193.google.com with SMTP id p3so617252pgb.9
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WVZuNtomVVNJU6oxBSPSh7G1rqbdcZx30YER/VTqJy0=;
        b=FUz7pN44X6Tv4OeVuIV52guGzHMnmYin+wu9ELjFCcSR+0aws/OWfCadkkuqfVdCLK
         mNGaUIjPJikw+d22fQPAE5PlaRRwxBqtQCNgdjrOUKqL9EfbQ1ymZLXKWp+ZFONNvI14
         x1VgB8USTvIJaFXzt8Hz4wYclyoDS/928mCrxNzBO+0HQlj3T5Hx0qoSQhket12hKZeI
         s16MRBgF1ca01Adh+FAA3GF9KpeEZmlXGoI/XQeC3HdXX9Cdp8CyR87ufMKOltSiMDZG
         ua5tdZPmMtv/brEPvUX9c837I/Tc59DwbMtYUcNjcOe17AS1TP/D/TqIjIOX+aT8YGgb
         AepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WVZuNtomVVNJU6oxBSPSh7G1rqbdcZx30YER/VTqJy0=;
        b=tetDPwqcu874d3Fxp0G78QFoQCIpLqpApvyazVGUc9+tFdHq/mz6Lfid77lhVefcio
         fWqLIj2PUlvu5Lh5Ln+s7mv2pYjTOLmOnKncmE1xMWseQ5mb8LE8H6YOqQtzCV6cGXvP
         19min23KdVKVJO0buPs6UNVChYFkBXZufZiVkGI6rj9osO29jsmSu0cpTc9ac802u8ji
         9h17JrBLGmy8BTdIdF60xq+n6CLu3USlbq+OG+kuWCY9zCQSTqZKly9iDVNQUErQfyv4
         Y3B+g/b9K+KuJffCsI0clcee0HRdTROUNZ3Px4k8USWkcRC1jBXTkeuMglprB5U1zOGo
         8Qgg==
X-Gm-Message-State: APjAAAVRfcmZv91oCRyRHBsqsJz6Y+CX4TdYOyatO77pZRbELCdx8clQ
        RkuUY3HnYwDd/y/yihmGrgX+1A==
X-Google-Smtp-Source: APXvYqz5Xtr2EJgM6D6fSLIQb46x2LJP6fotbNZ4KkYGPV/au8MPrF7OtOBzkPcoKZLYmwj4ZF66QA==
X-Received: by 2002:a17:90a:2325:: with SMTP id f34mr3758425pje.128.1566365059850;
        Tue, 20 Aug 2019 22:24:19 -0700 (PDT)
Received: from localhost ([122.172.76.219])
        by smtp.gmail.com with ESMTPSA id e7sm22939634pfn.72.2019.08.20.22.24.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 22:24:19 -0700 (PDT)
Date:   Wed, 21 Aug 2019 10:54:17 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Saravana Kannan <saravanak@google.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "Sweeney, Sean" <seansw@qti.qualcomm.com>,
        David Dai <daidavid1@codeaurora.org>, adharmap@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Android Kernel Team <kernel-team@android.com>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 2/3] OPP: Add support for bandwidth OPP tables
Message-ID: <20190821052417.gby4borlnxv2xacr@vireshk-i7>
References: <20190807223111.230846-1-saravanak@google.com>
 <20190807223111.230846-3-saravanak@google.com>
 <20190820061300.wa2dirylb7fztsem@vireshk-i7>
 <CAGETcx9BV9qj17LY30vgAaLtz+3rXt_CPpu4wB_AQCC5M7qOdA@mail.gmail.com>
 <CAGETcx-xQika2MgTgA3Gft3u2_uXgvoYThXwEpW_G03QTEh-yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGETcx-xQika2MgTgA3Gft3u2_uXgvoYThXwEpW_G03QTEh-yQ@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20-08-19, 15:36, Saravana Kannan wrote:
> On Tue, Aug 20, 2019 at 3:27 PM Saravana Kannan <saravanak@google.com> wrote:
> >
> > On Mon, Aug 19, 2019 at 11:13 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > On 07-08-19, 15:31, Saravana Kannan wrote:
> 
> > > > +     ret = of_property_read_u32(np, "opp-peak-kBps", &bw);
> > > > +     if (ret)
> > > > +             return ret;
> > > > +     new_opp->rate = (unsigned long) bw;
> > > > +
> > > > +     ret = of_property_read_u32(np, "opp-avg-kBps", &bw);
> > > > +     if (!ret)
> > > > +             new_opp->avg_bw = (unsigned long) bw;
> > >
> > > If none of opp-hz/level/peak-kBps are available, print error message here
> > > itself..
> >
> > But you don't print any error for opp-level today. Seems like it's optional?
> >
> > >
> > > > +
> > > > +     return 0;
> > >
> > > You are returning 0 on failure as well here.
> >
> > Thanks.
> 
> Wait, no. This is not actually a failure. opp-avg-kBps is optional. So
> returning 0 is the right thing to do. If the mandatory properties
> aren't present an error is returned before you get to th end.

You are right :)

-- 
viresh
