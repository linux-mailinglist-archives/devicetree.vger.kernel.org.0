Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C1534C03BA
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 22:25:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235598AbiBVVZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 16:25:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230006AbiBVVZs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 16:25:48 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F29D9C6831
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:25:21 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id u18so40125018edt.6
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ncH9c7SiYmN6itdECS9f8vr7OT3dx9aRl+ruQf7+yUg=;
        b=bie/EqstQq7cMH+SvIyYScs9hMbdl5FmT1j31NstckurYsN72clBvZSAs4si7yh9wD
         r/miD7WgoTgKOsFCyHBeU2c8gQTdgqSJy1y26X892UgDwNWsMNYp9/ub7c2lCI6GZ3co
         KlMSphSYJYjvpWZcfeXWn0GgJ+1a1Y3QNMTE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ncH9c7SiYmN6itdECS9f8vr7OT3dx9aRl+ruQf7+yUg=;
        b=EuWGOa+trSh1mQmwg+zwqiUktTne/hXs/gnrf7U3eKCp1fUsqOFsC60/wizP0Cs0V/
         NtWl7jQMpcgce1WiLcO5bf+auI+RVPSiFk+N+tXabHwqHwQuVFEavSpitao1P5ntBnE8
         23Ff1MOABOD+rP9wmqsUS49V1E7kq1mCttJYEvcHvj2nGDt3474eGNTjd76q2/IytaWO
         D4UtmX/Kreqp8PgFh4qb35IIX2EsAl8I0NQ9skfD6HIu2V3Qg0gxZP6KZT1kPDRDWjZM
         qmX4PvdVF084IQjFRtYtcP0gBQA/v95JEC6wzlKwTCqXn32XZJJ7Bi/rPmzdGhMZ5xlL
         x5NA==
X-Gm-Message-State: AOAM532U+BSixty+rA8JbLnqC0O0n2U3OXoYwXVkmH3agDp4WW5GZDly
        badsN3kWljgVB3US1Jw1A0Ag5A2S/f44t9/cZjM=
X-Google-Smtp-Source: ABdhPJzZckMV6zEkL2XrhYvJxorH138C01NejdBq0fQPWE3mgZ+gmYKS4kjNJgIA4XOEpe+gwMNAjA==
X-Received: by 2002:a50:9999:0:b0:413:2c3c:761e with SMTP id m25-20020a509999000000b004132c3c761emr2809982edb.425.1645565120194;
        Tue, 22 Feb 2022 13:25:20 -0800 (PST)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com. [209.85.128.54])
        by smtp.gmail.com with ESMTPSA id a6sm2584983edu.22.2022.02.22.13.25.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 13:25:19 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id p184-20020a1c29c1000000b0037f76d8b484so2841642wmp.5
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:25:19 -0800 (PST)
X-Received: by 2002:a05:600c:228e:b0:37c:2eef:7bf with SMTP id
 14-20020a05600c228e00b0037c2eef07bfmr4792688wmf.73.1645565118969; Tue, 22 Feb
 2022 13:25:18 -0800 (PST)
MIME-Version: 1.0
References: <1645449126-17718-1-git-send-email-quic_vpolimer@quicinc.com> <CAE-0n507XcYRz4=Uw-K37kPsLRqi_gN2L9y1wcu_X-UJP+6ySg@mail.gmail.com>
In-Reply-To: <CAE-0n507XcYRz4=Uw-K37kPsLRqi_gN2L9y1wcu_X-UJP+6ySg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 22 Feb 2022 13:25:05 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WvstZkDJcHJPAT0aez3X=uSKzDX0paQRHYD4DEktkMEQ@mail.gmail.com>
Message-ID: <CAD=FV=WvstZkDJcHJPAT0aez3X=uSKzDX0paQRHYD4DEktkMEQ@mail.gmail.com>
Subject: Re: [v1] arm64/dts/qcom/sc7280: update mdp clk to max supported value
 to support higher refresh rates
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_kalyant@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Feb 22, 2022 at 12:58 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Vinod Polimera (2022-02-21 05:12:06)
> > Panels with higher refresh rate will need mdp clk above 300Mhz.
> > Select max frequency for mdp clock during bootup, dpu driver will
> > scale down the clock as per usecase when first update from the framework is received.
> >
> > Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
>
> Please add a Fixes tag.
>
> > ---
> >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index baf1653..7af96fc 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -2895,7 +2895,7 @@
> >                                 assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>,
> >                                                 <&dispcc DISP_CC_MDSS_VSYNC_CLK>,
> >                                                 <&dispcc DISP_CC_MDSS_AHB_CLK>;
> > -                               assigned-clock-rates = <300000000>,
> > +                               assigned-clock-rates = <506666667>,
>
> Why not simply remove the clock assignment and set the rate based on the
> OPP when the driver probes?

I was curious so I dug. It turns out that it _is_ using the OPP. It's
just that the kernel driver currently assumes that the initial rate is
the max rate. :-P You can actually see in msm_dss_parse_clock() that
it walks through each of its clocks at boot and records the boot rate
and stashes it as the "max_rate". That's not a scheme I've seen done
commonly, so if nothing else it deserves a comment in the commit
message.

One other note is that I think there are _two_ places in the dtsi that
are setting this same clock rate, right? The parent node `mdss`, which
you're not touching, and the child `mdss_mdp`, which you are touching.
Seems like you should just do it in one place. If it needs to be done
by the parent then the child could just assume that the clock has
already been set by the parent.

-Doug
