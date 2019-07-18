Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE4C6D2BD
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2019 19:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727730AbfGRR0u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jul 2019 13:26:50 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:40165 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727687AbfGRR0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jul 2019 13:26:50 -0400
Received: by mail-ot1-f67.google.com with SMTP id y20so13931816otk.7
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2019 10:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kHot347YLWE5nkm+ELe1ZYMvJsx/cZ07S4YDS0ZiX4U=;
        b=s5g1DyonFBqTLhJwl7Sl2aNMuX3Z9Tb6oahSwY6QyEWQmcNZ2SWhH8/MhiOzWgra4W
         n7tWEqkN7/dEqVLquoLllVRJtb3X27VKoRq7T5bGOrwjBRnia4Gt8kZdFSKfuAZ5n0s/
         5hRS9hcVjmm4FDGkJmXutN9jM+rb/7SxCj8SdLOW2JSn20yN2y4B72kvSn67Y0aISFZO
         K156I4nEPJMmpFMFfyyu6lQbwq5N1FVSFcYd107uvw9huZmEu150LjM3Nuexp41b/NO0
         XVwPCVMQXsRSWoeWr+e2c+KBMJO1tF8M1B/VFMSSw6gQMmhLWEFmXaSpUH9+eta7vS0l
         uuhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kHot347YLWE5nkm+ELe1ZYMvJsx/cZ07S4YDS0ZiX4U=;
        b=cdzFTLVB738lCb2JtIQDmNhwzHwglfSDDS4U8PHh4HLFrWlxQfRkH2QgRH6OPdRl4d
         wVzyiYlAml+j5cLiU3ckKOVXBNF5ykJjDIPeuYoKuBpbLpM0nkYKr7oNjVIkRTCd5bGh
         l3EN2OIOxut33Sg8BhN6wtxnajcZFYxJp/VwgJF9YWTQOUMcAhhYbgeMyrL6eCFv9p3i
         iI+Mou/CH1uI63xjzLPlQI3VyHtPXrTEsPez6kE+yArTOgZZzWndwbbcSRj9hwb3Z/eC
         NLhEZE7voHBHaN8X790WgYvLIE48EvdCE2MiRjNKJNkPA9h1JBisLK7SwI4WlXV6qTX6
         JDmw==
X-Gm-Message-State: APjAAAVZ3RjTkuJQ6qG7SGaw8fYt2NL1wFWfHqAmU7gYIMlltwheVnzN
        28af+8wkflBxlPAg9ihEzONd504sIsB4lz2Xh8QJZA==
X-Google-Smtp-Source: APXvYqxx0wUv2PcQOeCnA7yH8Brpx911ipQxgRjsUz11FM8fMvCQ8Z/c5zcaSYTzAc9Lky0K9vcLBi7grFvfvHSwzro=
X-Received: by 2002:a05:6830:12d6:: with SMTP id a22mr7109834otq.236.1563470809129;
 Thu, 18 Jul 2019 10:26:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190703011020.151615-1-saravanak@google.com> <20190703011020.151615-2-saravanak@google.com>
 <20190717075448.xlyg2ddewlci3abg@vireshk-i7> <CAGETcx-kUM7MqNYowwNAL1Q0bnFzxPEO6yMg0YTkk16=OnPdmg@mail.gmail.com>
 <20190718043558.roi4j6jw5n4zkwky@vireshk-i7>
In-Reply-To: <20190718043558.roi4j6jw5n4zkwky@vireshk-i7>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 18 Jul 2019 10:26:13 -0700
Message-ID: <CAGETcx_XtA_-cjU6Ra1Jh4zgWJXBpHY+g_FdWvnFTW84e46D_w@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: opp: Introduce opp-peak-KBps and
 opp-avg-KBps bindings
To:     Viresh Kumar <viresh.kumar@linaro.org>
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
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 17, 2019 at 9:36 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 17-07-19, 13:29, Saravana Kannan wrote:
> > On Wed, Jul 17, 2019 at 12:54 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > >
> > > On 02-07-19, 18:10, Saravana Kannan wrote:
> > > > Interconnects often quantify their performance points in terms of
> > > > bandwidth. So, add opp-peak-KBps (required) and opp-avg-KBps (optional) to
> > > > allow specifying Bandwidth OPP tables in DT.
> > > >
> > > > opp-peak-KBps is a required property that replace opp-hz for Bandwidth OPP
> > > > tables.
> > > >
> > > > opp-avg-KBps is an optional property that can be used in Bandwidth OPP
> > > > tables.
> > > >
> > > > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/opp/opp.txt | 15 ++++++++++++---
> > > >  1 file changed, 12 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/opp/opp.txt b/Documentation/devicetree/bindings/opp/opp.txt
> > > > index 76b6c79604a5..c869e87caa2a 100644
> > > > --- a/Documentation/devicetree/bindings/opp/opp.txt
> > > > +++ b/Documentation/devicetree/bindings/opp/opp.txt
> > > > @@ -83,9 +83,14 @@ properties.
> > > >
> > > >  Required properties:
> > > >  - opp-hz: Frequency in Hz, expressed as a 64-bit big-endian integer. This is a
> > > > -  required property for all device nodes but devices like power domains. The
> > > > -  power domain nodes must have another (implementation dependent) property which
> > > > -  uniquely identifies the OPP nodes.
> > > > +  required property for all device nodes but for devices like power domains or
> > > > +  bandwidth opp tables. The power domain nodes must have another (implementation
> > > > +  dependent) property which uniquely identifies the OPP nodes. The interconnect
> > > > +  opps are required to have the opp-peak-bw property.
> > >
> > >                                    ??
> >
> > Sorry, what's the question? Was this an accidental email?
>
> Too much smartness is too bad sometimes, sorry about that :)
>
> I placed the ?? right below "opp-peak-bw", there is no property like
> that. You failed to update it :)

Ah, "typo". I'll fix it.

-Saravana
