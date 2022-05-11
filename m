Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D80CE523BDC
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 19:49:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345801AbiEKRtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 13:49:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345808AbiEKRtj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 13:49:39 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 889142380F7
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 10:49:37 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id g23so3385531edy.13
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tQuubGtd0mpwX+LKmxSAA3U7GpvwZ1mzYyhs1YQaY+k=;
        b=OJiCbw7IG/ulyvP3DKIxIckp8YkedTNelTyv73ImcVlXH3o1WDCtU6WUPBfUnB04oc
         o6Rh5fEGdkI0pj1ypnFHm7dDZaVYR5GrS11x0bZ08EMb6TE5lzGBQ1+zTcLDG8jbLnOF
         j0FlqePjxKypeItKizgIs/aZ1MADcYSNuSzsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tQuubGtd0mpwX+LKmxSAA3U7GpvwZ1mzYyhs1YQaY+k=;
        b=q4zwPQD+qshE9oGlP259qIkFA3kKic7ae6KDoIcH/9iH4Wv1Y0ZS47vBb8Kz2a/u4g
         C5N/TCMpJlp01bACH9vJ2ACWSt+/KdVBvShqasBWoMVGr+sn7K9ho3E8dGT/5FJNHy62
         NOxzPE5iSX6GmlTjaSc036pvR6fMuPRcewzL2WhF5NDEl5cv8Sf47bTYkO0lOR1jcAkp
         LEViXiWaZz6Y7N3sfz5EYkB3cv9AuHLh7yaNlA/rHAXd32Hyi3GfNGPQ1znokyK8pmN1
         XlZNy00nE641pFeikDzm3V9JdzHkNIU0cVex6ufPeGojf+r3jtx3EB4I+qRq7tVX0feo
         BBvQ==
X-Gm-Message-State: AOAM531lHbKUBePTY8O59WyVwXxibkYhNFv6zlmb7fviqAQVJmeh+NPh
        E7oyvgdaglc+KPuOQ+O58FTTx+L/qpPXtig5+nE=
X-Google-Smtp-Source: ABdhPJzo/dEe52h+Rl8nPm4JVY23iHyfVCmYcf3yGIQeUAQROJtKM4YdGtZ/xxBfzMX8fNBt7BdaJQ==
X-Received: by 2002:aa7:d70a:0:b0:425:e56d:c1b9 with SMTP id t10-20020aa7d70a000000b00425e56dc1b9mr29993879edq.78.1652291375782;
        Wed, 11 May 2022 10:49:35 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id j23-20020a1709064b5700b006f3ef214e6esm1205949ejv.212.2022.05.11.10.49.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 10:49:34 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id r188-20020a1c44c5000000b003946c466c17so1058697wma.4
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 10:49:33 -0700 (PDT)
X-Received: by 2002:a7b:c4c8:0:b0:394:26c5:b79e with SMTP id
 g8-20020a7bc4c8000000b0039426c5b79emr6094352wmk.15.1652291373235; Wed, 11 May
 2022 10:49:33 -0700 (PDT)
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
 <b619b455-c944-0cc6-ca83-e65490612ed7@linaro.org>
In-Reply-To: <b619b455-c944-0cc6-ca83-e65490612ed7@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 11 May 2022 10:49:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VTNk_WPw+1sVRdToZLvDH_ve9QL+-+-unNEAK0k2hGMg@mail.gmail.com>
Message-ID: <CAD=FV=VTNk_WPw+1sVRdToZLvDH_ve9QL+-+-unNEAK0k2hGMg@mail.gmail.com>
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 11, 2022 at 10:36 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> > * If we want to change our scheme, we'd need to sit down and come to
> > an agreement that satisfies everyone, if such a thing is possible.
>
> There is open CFP for ELCE 2022 (in Ireland). Maybe we could organize
> some session there? But we for sure would need Rob, so the arrangements
> should rather focus on him, not on my availability.

Looks plausible to me to make it.


> > I mean, to be fair I said it _seems_ pure overhead and then said that
> > we could do it if it makes some tools happy. ...but before doing that,
> > I wanted to make sure it was actually valuable. I still have doubts
> > about the assertion that the most specific compatible is guaranteed to
> > uniquely identify hardware. So if the whole reason for doing this is
> > to make the validation tools happy and there's no other value, then at
> > least it's plausible to argue that the tools could simply be fixed to
> > allow this and not shout about it.
>
> Instead of adding bindings, you can indeed change/fix the tools. Go
> ahead. :)

I will try to take a quick look to see what this would look like.


> > Since there no properties associated with the
> > top-level compatible string, it's mostly just checking did some one
> > copy-paste the compatible string from one file (the dts file) to the
> > other file (the yaml file) correctly. To me, that does not feel like a
> > useful check.
>
> Still it can detect messing of SoC compatibles or not defining any
> board-level compatible thus pretending that someone's board is just
> SC7180. Imagine now user-space or bootloader trying to parse it...
>
> BTW, the bindings validation of top-level compatible might actually help
> you - to be sure that DTSes have proper compatibles matching what
> bootloader expects.

I'm still not seeing the help here. Is it somehow going to be easier
for someone to sneak in a dts file to the kernel tree that is just
"sc7180" than it will be to sneak an entry into the bindings that is
just "sc7180"? The people reviewing the dts and the list of allowed
boards in the bindings are the same people, right? Every entry in the
bindings gets used to match exactly one board, so, as I said, it's
pretty much just a question of whether you copy-pasted properly...

-Doug
