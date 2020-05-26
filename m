Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 733031DA187
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2020 21:57:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726407AbgEST5r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 15:57:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726352AbgEST5r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 May 2020 15:57:47 -0400
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com [IPv6:2607:f8b0:4864:20::c43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E42D4C08C5C1
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 12:57:46 -0700 (PDT)
Received: by mail-oo1-xc43.google.com with SMTP id s139so238089oos.1
        for <devicetree@vger.kernel.org>; Tue, 19 May 2020 12:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8iNeQP5ee6psuw10GRS3UP54RfEa+IGu/iBWGhrLxKw=;
        b=N+43DCJQN8eRl4QR709SgnvQJDPivxRNw908Qr+hkSugZJHzk/eCoGdncp5dkhCKM2
         iSFGue4ic/IGMTuIaptNEzw8jROo2A6izzos64C+mUufZLyjPQDW1mIEHj71ky5+QwyA
         oAfI+5edsFHUxJfdmN9shXYeKyYNPMwdvmFfnu4g3TwVm2URiBp6DQetqEffDHPmACQu
         G8NlrDXE0/gWk7R+nYgf4bpC+Hzb2MtCWaQdCAJzZ11mxtqRFTZg9ZNs2v950dYR7NoC
         8D1Rfg/+C23GfTOnQAaz7cD08zjRs68dmKrkfJ4sa9YzLiV5gvghZNNVLHATF4s/oB/o
         RszQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8iNeQP5ee6psuw10GRS3UP54RfEa+IGu/iBWGhrLxKw=;
        b=UaF308jxeT7FVtpp6kqqHb7yTRy1o4bB/wURsZO/XZUIghyk59y44a6uDrjrJOC2yf
         F42L+cdL2stB+l9NPSbTd7YuDgWKEunl4NzRBo+D9tHBpSmcbfvLBCJ5BCNLVSYb3Di7
         91x+IcZdH+K8fjdOr2Q8b208tX+YXCcoacuyfoza8z0apd4y/jQH88veClsyXOlpTkMf
         zezR4AaxIh3i3Ddkuxpcu36vnczObdiiHG4OC8CKbe2lc4ES4AkLZcPJZkzw+gJwDHwf
         JiGVRtnet1I5TBstjEj+gKppB6VhU+asdzZnlQK64IRW7aFlmFCzUaNU2gwRiU6BMECL
         V2Ig==
X-Gm-Message-State: AOAM531l4fo0jDSQhCO0wwBsjBP31lgUqDw/6cwuLqD2cRrmroFjTWoe
        pbr7vwH6WMfMFPvqat6JqOmi7q6eUYdQFdn5QH4lgQ==
X-Google-Smtp-Source: ABdhPJzjHSQQr1SlJ5IQ6LUFgUIMFmZsvjjUAG5WFib50tVK5ijRaPJrWzmIkn2S4Imd7hxzqW7QZ0STrMI3Ehc5DLQ=
X-Received: by 2002:a4a:615d:: with SMTP id u29mr668618ooe.15.1589918265798;
 Tue, 19 May 2020 12:57:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200512125327.1868-1-georgi.djakov@linaro.org>
 <20200512125327.1868-10-georgi.djakov@linaro.org> <20200519185836.GA469006@bogus>
In-Reply-To: <20200519185836.GA469006@bogus>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 19 May 2020 12:57:09 -0700
Message-ID: <CAGETcx8+NZYT863ySLf6XvgLBm8PM_4euue2=zbDscgmDFh+7g@mail.gmail.com>
Subject: Re: [PATCH v8 09/10] dt-bindings: interconnect: Add interconnect-tags bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Georgi Djakov <georgi.djakov@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Sibi Sankar <sibis@codeaurora.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Jordan Crouse <jcrouse@codeaurora.org>,
        Evan Green <evgreen@chromium.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 19, 2020 at 11:58 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 12, 2020 at 03:53:26PM +0300, Georgi Djakov wrote:
> > From: Sibi Sankar <sibis@codeaurora.org>
> >
> > Add interconnect-tags bindings to enable passing of optional
> > tag information to the interconnect framework.
> >
> > Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> > Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
> > ---
> > v8:
> > * New patch, picked from here:
> >   https://lore.kernel.org/r/20200504202243.5476-10-sibis@codeaurora.org
> >
> >  .../devicetree/bindings/interconnect/interconnect.txt        | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/interconnect/interconnect.txt b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > index 6f5d23a605b7..c1a226a934e5 100644
> > --- a/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > +++ b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > @@ -55,6 +55,11 @@ interconnect-names : List of interconnect path name strings sorted in the same
> >                        * dma-mem: Path from the device to the main memory of
> >                                   the system
> >
> > +interconnect-tags : List of interconnect path tags sorted in the same order as the
> > +                 interconnects property. Consumers can append a specific tag to
> > +                 the path and pass this information to the interconnect framework
> > +                 to do aggregation based on the attached tag.
>
> Why isn't this information in the 'interconnect' arg cells?
>
> We have 'interconnect-names' because strings don't mix with cells. An
> expanding list of 'interconnect-.*' is not a good pattern IMO.

Also, is there an example for interconnect-tags that I missed? Is it a
list of strings, numbers, etc?

-Saravana
