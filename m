Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA5A1FD78
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 03:50:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727058AbfEPBqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 21:46:22 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:40402 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726425AbfEOXl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 19:41:28 -0400
Received: by mail-pl1-f196.google.com with SMTP id g69so620930plb.7
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 16:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZjzAq2AO1sRBqrHJUjIMR4JCd00dysDTYDWKUQqEjMQ=;
        b=bXMgsHQyNMU2fM0Ue9SNrNhQp2QCv7JSxc5jzX0IZmgsg2OidZNzsm8l3jUm1uE6nJ
         lWaqMUHtNuGJqztJtHFz8qq0mDt/CiCZpfad5s4Lar/0LSp9YNJ4LfCfOyPKjC1m6mz1
         3ptuYCoxX+8Jb5kFkHkJRuLa8Cb48QvPHkyzvL/aOFptkBfoE1sfSG/DH75K0zkMGOCk
         UKLn1z8DM2/dwHP26TVmBpEDMUleMKoGHiO5SPFdigIH4tDV5uYGfhAUHlUkpBA9aeGT
         zfHAkEmYsHIQ8owAl5TDHSjfDoC//9ZGpi9UGnLUd1nHfq3vJ58bJ/rhc01P05NZBFF2
         oyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZjzAq2AO1sRBqrHJUjIMR4JCd00dysDTYDWKUQqEjMQ=;
        b=A+fCqrgtCMnDAJw/M0DZ7CRfSt/qX731bm1eoIpVTwvaI7KQ8nBetkGX8+Q6Jlrv0y
         w/zN5m/7EydQo1z0ptdtpWMt78Iot/bug5SL8GOWvcU3VH4B0KXm5c6ko4nY7HrD+TPO
         Y7rG/5oR1ZpV5q9echtRkTNnWF+ZTx9n+DXPUoDkQhIqkNgFA9ad+1RF7nMpkoZp5ZNk
         vDtMqVs45fKhp6k0JA775SEBVddskwPueP+U9/UNJGn9ksrxsi+lYaNKZ/qcoPwoiurH
         reXkKsyJRbOcHB1r/8ZLE14+EsOQa99bEmagWmwjwaZ+icDO9dx1BoXyHaQZYFI5jLQA
         vJXA==
X-Gm-Message-State: APjAAAVaX2o8UMNw8JYzrcQaoTMLz/ksRkINe4gOYp0YG8t8IC//RiZq
        NDQi8gFmEeg/6EkYzz1D91wjTg==
X-Google-Smtp-Source: APXvYqyRpmmXxhxDQ6tCx1u6g4+IFs/LWvWFlwdifLuOAObsUDyvgkOgAz2yesijZ/zlqJKH0WhsiQ==
X-Received: by 2002:a17:902:2d03:: with SMTP id o3mr11064877plb.309.1557963687169;
        Wed, 15 May 2019 16:41:27 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id g22sm4011790pfo.28.2019.05.15.16.41.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 15 May 2019 16:41:25 -0700 (PDT)
Date:   Wed, 15 May 2019 16:41:23 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Rob Clark <robdclark@gmail.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [RFC 2/3] arm64: dts: qcom: sdm845-cheza: Re-add reserved memory
Message-ID: <20190515234123.GP31438@minitux>
References: <20190509184415.11592-1-robdclark@gmail.com>
 <20190509184415.11592-3-robdclark@gmail.com>
 <CAD=FV=WXW3aApS=c7baxhtfr1Nf-UnBN2s=rEBBkjj4=TCdT+g@mail.gmail.com>
 <CAJs_Fx5PDj+T+DVixzHjun_wCG5fhZsxH8xUqRwmkfwN87UP_A@mail.gmail.com>
 <CAD=FV=Vgiej=+hCZ_Eekoa4FJfpKxhOge8Wy29EEmtjB8JeF9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAD=FV=Vgiej=+hCZ_Eekoa4FJfpKxhOge8Wy29EEmtjB8JeF9g@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 15 May 14:50 PDT 2019, Doug Anderson wrote:

> Hi,
> 
> On Tue, May 14, 2019 at 9:10 PM Rob Clark <robdclark@chromium.org> wrote:
> 
> > On Mon, May 13, 2019 at 3:48 PM Doug Anderson <dianders@chromium.org> wrote:
> > >
> > > Hi,
> > >
> > > On Thu, May 9, 2019 at 11:44 AM Rob Clark <robdclark@gmail.com> wrote:
> > >
> > > > From: Douglas Anderson <dianders@chromium.org>
> > > >
> > > > Let's fixup the reserved memory to re-add the things we deleted in
> > > > ("CHROMIUM: arm64: dts: qcom: sdm845-cheza: Temporarily delete
> > > > reserved-mem changes") in a way that plays nicely with the new
> > > > upstream definitions.
> > >
> > > The message above makes no sense since that commit you reference isn't
> > > in upstream.
> > >
> > > ...but in any case, why not squash this in with the previous commit?
> >
> > Yeah, I should have mentioned this was my intention, I just left it
> > unsquashed since (at the time) it was something I had cherry-picked on
> > top of current 4.19 cros kernel..
> >
> > anyways, I pushed an (unsquashed, converted to fixup!'s) update to:
> >
> > https://github.com/freedreno/kernel-msm/commits/wip/cheza-dtb-upstreaming
> >
> > which has updates based on you're review comments (at least assuming I
> > understood them correctly).. plus some unrelated to cheza-dt patches
> > on top to get things actually working (ie. ignore everything on top of
> > the fixup!'s)
> 
> Looks OK to me.  Are you going to post this?  Bjorn / Andy: do you
> guys have opinions here?
> 

I think this is a good opportunity to get people with Cheza off 4.19, so
I'm all for landing this upstream.

Regards,
Bjorn

> 
> > I didn't see any comments on the 'delete zap-shader' patch, so
> > hopefully that means what I did there was a sane (or at least not
> > insane) way to handle android/linux tz vs what we have on cheza?
> 
> I wasn't CCed, so I assumed you were looking for feedback from others
> on that one.  ;-)  Oh, but I guess Jordan and Bjorn also weren't
> CCed...  In any case, I replied now.
