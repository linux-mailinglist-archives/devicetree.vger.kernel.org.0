Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 626766C875
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2019 06:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726513AbfGREgD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jul 2019 00:36:03 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:42646 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbfGREgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jul 2019 00:36:03 -0400
Received: by mail-pl1-f194.google.com with SMTP id ay6so13173256plb.9
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 21:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WGpriDmKg5A7CmpDzwHXbW6ZHoMuynu6Flk/8vZcrV4=;
        b=tdM9d/DBJYMDRXBmqCsEwG0Ji9aifj2VKoNdoJhfF/pHOM6IKPiUdRjBC5AaEzz6Q6
         Kjd8huAsSQxOu49t3oV2e6erYFObTSkT5pseVTYwHXJ+uIXbhk4N3Dc6yllJgXfLoDuA
         Cmz1a6J+0vron0h04ZTfruurmpqec2vzltlAtYQAeDItiDyphalOKPvHVAtfV+QssyMd
         F2xQf6FwWGOac0MiHbrikqIwNXyRFLjae5t4FmS+qSfi2K/TMCZDPS/xxICmQxQ9TY3B
         +mLUuCezbFvWz9v7Qwce2DaBzgx6ZLcQsL6xKXbTZRaEU8vDkGcabpR2B52HkblxlX1I
         W3Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WGpriDmKg5A7CmpDzwHXbW6ZHoMuynu6Flk/8vZcrV4=;
        b=UueRIpESiKA6UFIbM61LlobBjuaGPIOqj8nk14QlFJzHnH8jeAo4N6hn9GR2NeEKod
         wq5RWYNjA9/5FBSMEzB9/xX7/wtZ4NNXK6SSg51KPdjEd80Is5+aAbZcWrNUkrSC+Aew
         6NXZNutSem3uECg47z8VdUYQmwc/Qs9bpRD0NQWqv84Lo7p6+/xzhdstXkESw7IUgkxL
         GcI5kXMoDVhExanMPDMG8OW6uxnvH4Du4EX4GHK1Rr0zCnHXAWTvYID7iE3UPrBU+x0F
         r3viChFMx3ZnGq5Hjk4TnLuiqI77c5bUDqQbLlLhzEmhS3wYEmFNJaGRkJQ4M9b46z7l
         0crw==
X-Gm-Message-State: APjAAAVGTwOgfd1YBXzgTBWNWd2rEI3cNoVfV7XOxgxOfS7QevoYcw7q
        SQgd1L6QnPC04qjL5UmjtvcViQ==
X-Google-Smtp-Source: APXvYqyMnYIn3TaRAO3QMu/Oxrwx3Xg4Hm0cjdUzW+Ak8+N2c7rzoxUsvLt1u8rE+f/7W7B/iOjqmg==
X-Received: by 2002:a17:902:8689:: with SMTP id g9mr44528906plo.252.1563424562578;
        Wed, 17 Jul 2019 21:36:02 -0700 (PDT)
Received: from localhost ([122.172.28.117])
        by smtp.gmail.com with ESMTPSA id s6sm39616477pfs.122.2019.07.17.21.36.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 21:36:00 -0700 (PDT)
Date:   Thu, 18 Jul 2019 10:05:58 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Saravana Kannan <saravanak@google.com>
Cc:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "Sweeney, Sean" <seansw@qti.qualcomm.com>,
        daidavid1@codeaurora.org, Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Android Kernel Team <kernel-team@android.com>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/6] dt-bindings: opp: Introduce opp-peak-KBps and
 opp-avg-KBps bindings
Message-ID: <20190718043558.roi4j6jw5n4zkwky@vireshk-i7>
References: <20190703011020.151615-1-saravanak@google.com>
 <20190703011020.151615-2-saravanak@google.com>
 <20190717075448.xlyg2ddewlci3abg@vireshk-i7>
 <CAGETcx-kUM7MqNYowwNAL1Q0bnFzxPEO6yMg0YTkk16=OnPdmg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGETcx-kUM7MqNYowwNAL1Q0bnFzxPEO6yMg0YTkk16=OnPdmg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17-07-19, 13:29, Saravana Kannan wrote:
> On Wed, Jul 17, 2019 at 12:54 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 02-07-19, 18:10, Saravana Kannan wrote:
> > > Interconnects often quantify their performance points in terms of
> > > bandwidth. So, add opp-peak-KBps (required) and opp-avg-KBps (optional) to
> > > allow specifying Bandwidth OPP tables in DT.
> > >
> > > opp-peak-KBps is a required property that replace opp-hz for Bandwidth OPP
> > > tables.
> > >
> > > opp-avg-KBps is an optional property that can be used in Bandwidth OPP
> > > tables.
> > >
> > > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > > ---
> > >  Documentation/devicetree/bindings/opp/opp.txt | 15 ++++++++++++---
> > >  1 file changed, 12 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/opp/opp.txt b/Documentation/devicetree/bindings/opp/opp.txt
> > > index 76b6c79604a5..c869e87caa2a 100644
> > > --- a/Documentation/devicetree/bindings/opp/opp.txt
> > > +++ b/Documentation/devicetree/bindings/opp/opp.txt
> > > @@ -83,9 +83,14 @@ properties.
> > >
> > >  Required properties:
> > >  - opp-hz: Frequency in Hz, expressed as a 64-bit big-endian integer. This is a
> > > -  required property for all device nodes but devices like power domains. The
> > > -  power domain nodes must have another (implementation dependent) property which
> > > -  uniquely identifies the OPP nodes.
> > > +  required property for all device nodes but for devices like power domains or
> > > +  bandwidth opp tables. The power domain nodes must have another (implementation
> > > +  dependent) property which uniquely identifies the OPP nodes. The interconnect
> > > +  opps are required to have the opp-peak-bw property.
> >
> >                                    ??
> 
> Sorry, what's the question? Was this an accidental email?

Too much smartness is too bad sometimes, sorry about that :)

I placed the ?? right below "opp-peak-bw", there is no property like
that. You failed to update it :)

-- 
viresh
