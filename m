Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C567525217
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 18:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245007AbiELQJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 12:09:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352799AbiELQJN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 12:09:13 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F257D26607A
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 09:09:11 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id m20so11145682ejj.10
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 09:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VaY2rLWp3pO0OJ/5icmS8i2NVrNx34Il4vDW2evzpCs=;
        b=Zxb+Bz2pv/5QB78scWHIaA57av54R28lFDARmGDs0Gzcn9kCxyUYNfi4X1LoD6x7uT
         fjOf5lARZyafvfFxxR/zHnAz/cdZnnL8FjII30pXTJXzCogEV/R8ZCSIeoEengVehqn+
         FEdRf5j5wo93uMoFuXLCEVUrJvIpSi7MWO8FQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VaY2rLWp3pO0OJ/5icmS8i2NVrNx34Il4vDW2evzpCs=;
        b=yyGomV5xgGFwLyB/pYQ1TuP0AaU8MOa6CpLS0oU9RMzshIobL0r8XxLUT81CYkGt0U
         WLXZmkvzTuwCtBqryZja9cOTzesJNxRqt0GQbfAiD+6cVah+sAqM8hAPUVhhSUTHoMaS
         zlLUzSqZV9ozLCyiBilNaiQt4FDUjl3VssjxQTzrBfpoXJnWM6JJ2JNHjWF2KfWkVQay
         gViIe4RIozVwLSxJ1zmS0RizmdrGXyPm7f8psIQItlbXw75V18TDYdPx5Yj+2JNZpV0H
         E6aYRKd7mRXoQzEaHFsmT+KrUm26NctvIVikV7qzSoBdqU+qAH9iymp2iF3Es1J5P38b
         FQbw==
X-Gm-Message-State: AOAM531dBp1nEMOGkTbxoqhFA8amMX2bVdtZ8r3dH6Ad710+H/+Ey7J5
        kSaR6lF2vwhF7QcqGAOW4xf8ClJKftN35a52
X-Google-Smtp-Source: ABdhPJxck2ijAFCGWOwv0VZVHVmKHaRN/qAlrb8co+lA2r2VjSyBnp3Ik0vKW+nZwUNPehzIkoCKlQ==
X-Received: by 2002:a17:906:4f90:b0:6f6:b288:b3ab with SMTP id o16-20020a1709064f9000b006f6b288b3abmr569969eju.189.1652371750293;
        Thu, 12 May 2022 09:09:10 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id l11-20020a170906644b00b006f3ef214e4asm2268001ejn.176.2022.05.12.09.09.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 09:09:08 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id b19so7901198wrh.11
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 09:09:07 -0700 (PDT)
X-Received: by 2002:a05:6000:2c1:b0:20c:5e37:3ed1 with SMTP id
 o1-20020a05600002c100b0020c5e373ed1mr353564wry.342.1652371747051; Thu, 12 May
 2022 09:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220330090947.9100-1-chenxiangrui@huaqin.corp-partner.google.com>
 <a0eb6bf9-256a-29b1-2211-496df710f531@linaro.org> <CAD=FV=UjyLofXZqnj=bL89fza5JS6O5Np9W-A4V4WK+na0hdrw@mail.gmail.com>
 <b7ff08b8-60fb-7629-9399-3d5cca46ab9e@linaro.org> <CAD=FV=Vx5g_xTRZGc9wW=ZLnfsOcubTYFcnYQRC5jLm+n3en0w@mail.gmail.com>
 <606cc762-a0c2-49a4-3e5d-d2dbd4595bc7@linaro.org> <CAD=FV=W_SA-3PfDFi-Gkjk9pew5bchFNjQhXX8MkZyuy5UohEQ@mail.gmail.com>
 <CAJKOXPdt5WTg4VU-TEW3dmPHR76dKg63XVxRQfa7ZSKc_jz6Ag@mail.gmail.com>
 <CAD=FV=XQqQSQDNh-zXqEQkwsrax5Qb3OtfKZoQLkncJj_4mcQw@mail.gmail.com>
 <daf66d41-42ac-50dc-3f8d-c261da8e452d@linaro.org> <CAD=FV=WhA=n_=Ys6NfedPtNPddL81HnG6Qws_R+vq9w8Nrsn5A@mail.gmail.com>
 <ce2ea308-b63d-ad27-4cea-7353268f8ebb@linaro.org> <CAODwPW857CkH0+ZnBaUeowW4te-hSy6nrdeeX6-OLPOs5TptsQ@mail.gmail.com>
 <55dcf917-7ac0-efe9-8531-b77be682125a@linaro.org> <CAD=FV=UPKo4CxRVmdHr05rRPaNHFYfaQTqmBJAU5ZF61ccKgEA@mail.gmail.com>
 <b619b455-c944-0cc6-ca83-e65490612ed7@linaro.org> <CAD=FV=VTNk_WPw+1sVRdToZLvDH_ve9QL+-+-unNEAK0k2hGMg@mail.gmail.com>
In-Reply-To: <CAD=FV=VTNk_WPw+1sVRdToZLvDH_ve9QL+-+-unNEAK0k2hGMg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 12 May 2022 09:08:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XnsVEmPLKFjz4o-CTbvcVotOgrQ2NESkoFsYp1bO4d4g@mail.gmail.com>
Message-ID: <CAD=FV=XnsVEmPLKFjz4o-CTbvcVotOgrQ2NESkoFsYp1bO4d4g@mail.gmail.com>
Subject: Re: [PATCH] CHROMIUM: arm64: dts: qcom: Add sc7180-gelarshie
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>,
        Julius Werner <jwerner@chromium.org>,
        =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>,
        Mars Chen <chenxiangrui@huaqin.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 11, 2022 at 10:49 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Wed, May 11, 2022 at 10:36 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > > * If we want to change our scheme, we'd need to sit down and come to
> > > an agreement that satisfies everyone, if such a thing is possible.
> >
> > There is open CFP for ELCE 2022 (in Ireland). Maybe we could organize
> > some session there? But we for sure would need Rob, so the arrangements
> > should rather focus on him, not on my availability.
>
> Looks plausible to me to make it.
>
>
> > > I mean, to be fair I said it _seems_ pure overhead and then said that
> > > we could do it if it makes some tools happy. ...but before doing that,
> > > I wanted to make sure it was actually valuable. I still have doubts
> > > about the assertion that the most specific compatible is guaranteed to
> > > uniquely identify hardware. So if the whole reason for doing this is
> > > to make the validation tools happy and there's no other value, then at
> > > least it's plausible to argue that the tools could simply be fixed to
> > > allow this and not shout about it.
> >
> > Instead of adding bindings, you can indeed change/fix the tools. Go
> > ahead. :)
>
> I will try to take a quick look to see what this would look like.

I looked a bit and decided that unless maintainers agreed that we
should do this that it would just be a waste of time. I guess I'll
save it for the next time I see Rob...


> > > Since there no properties associated with the
> > > top-level compatible string, it's mostly just checking did some one
> > > copy-paste the compatible string from one file (the dts file) to the
> > > other file (the yaml file) correctly. To me, that does not feel like a
> > > useful check.
> >
> > Still it can detect messing of SoC compatibles or not defining any
> > board-level compatible thus pretending that someone's board is just
> > SC7180. Imagine now user-space or bootloader trying to parse it...
> >
> > BTW, the bindings validation of top-level compatible might actually help
> > you - to be sure that DTSes have proper compatibles matching what
> > bootloader expects.
>
> I'm still not seeing the help here. Is it somehow going to be easier
> for someone to sneak in a dts file to the kernel tree that is just
> "sc7180" than it will be to sneak an entry into the bindings that is
> just "sc7180"? The people reviewing the dts and the list of allowed
> boards in the bindings are the same people, right? Every entry in the
> bindings gets used to match exactly one board, so, as I said, it's
> pretty much just a question of whether you copy-pasted properly...

After a bit of time of copy pasting, we now have a 3-patch series that
starts with:

https://lore.kernel.org/r/20220512090429.1.I9804fcd5d6c8552ab25f598dd7a3ea71b15b55f0@changeid

-Doug
