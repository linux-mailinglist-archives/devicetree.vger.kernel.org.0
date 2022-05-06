Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD0251CD61
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 02:06:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240202AbiEFAKJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 20:10:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1387217AbiEFAKH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 20:10:07 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A91424ECD5
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 17:06:26 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id dk23so11563710ejb.8
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 17:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MIqpVTVHlo6DTmks9PgaRxjH9KsrXWoNaS9uh51VnYI=;
        b=iHvC3Bp/yZjV6/3facmjrej5Ie9usQb83qVPvzExp04r1roEmXwSpQZCBtdphVUkn7
         POw8j/oDDE9PdGus9LduRz7GzkZAfHZPZuZzgVRHsyheT5kxbgAaQB1cXrnAjggHBQ08
         NIAtWJAu8HT1XDGaJ4soyBeenWFAl9t7LLvH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MIqpVTVHlo6DTmks9PgaRxjH9KsrXWoNaS9uh51VnYI=;
        b=efzTCHemcWnRbqJJMPGpJegQQbF+FPpsQsBOlehG9VRHYIsMZFjAdYwdqm6N5faTC1
         CypJiB8qLzmDFA4ii8I5HH6AFjWaSttZBt+aLtKVzXBVxkqX9iSwp0GD/w91flGj58ib
         PpAqRRTlIvui5XdO7ARLv6BBbI+pY/GS7J/vHTpUT4JHkhnACuXxbh49oG0OwYc1ra9C
         7fyi2/IN2BsNhZ0FpUAqQYkMz7/cy7AcqMzNYD3rgN0XL5t/fMO4L8YnimgLJMKLmbgC
         Im3EF80pj12hoRxfWEBc70vsyekLg7Y/DmjwytBbHSBYTgwx5XXROUakGcTS1AXrNLvO
         3Keg==
X-Gm-Message-State: AOAM530iqKZeYO0YKPARZSqQ+tyxSUQPVpxRU3gYdtbedKMCOs+gQjws
        udOvD/NFarDOVzsTq/ph/V81djKQTk7Hbe65mR8=
X-Google-Smtp-Source: ABdhPJyzjMOpWhMaC/md9YFeym3CnbgMFCvk6Y8zdU3rwNJaGCu0Yy9I5eRBCjlme1VQaNk/Mcv0Uw==
X-Received: by 2002:a17:906:d924:b0:6f5:132c:1a0d with SMTP id rn4-20020a170906d92400b006f5132c1a0dmr619666ejb.744.1651795584899;
        Thu, 05 May 2022 17:06:24 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id g9-20020a1709063b0900b006f3ef214db6sm1283352ejf.28.2022.05.05.17.06.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 17:06:23 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id b19so7974221wrh.11
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 17:06:22 -0700 (PDT)
X-Received: by 2002:a5d:6d09:0:b0:20c:53a9:cc30 with SMTP id
 e9-20020a5d6d09000000b0020c53a9cc30mr410473wrq.513.1651795582324; Thu, 05 May
 2022 17:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <1651079383-7665-1-git-send-email-quic_srivasam@quicinc.com>
 <1651079383-7665-5-git-send-email-quic_srivasam@quicinc.com>
 <YmsrB6Q89II5w1+9@google.com> <CAD=FV=XxeZsiOVVBDK_vmx0nhT7roB2FqcaPXsH3+jzTHFXMxw@mail.gmail.com>
 <YnKyzxPEolSVUhqD@builder.lan>
In-Reply-To: <YnKyzxPEolSVUhqD@builder.lan>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 5 May 2022 17:06:08 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VUL4GmjaibAMhKNdpEso_Hg_R=XeMaqah1LSj_9-Ce4Q@mail.gmail.com>
Message-ID: <CAD=FV=VUL4GmjaibAMhKNdpEso_Hg_R=XeMaqah1LSj_9-Ce4Q@mail.gmail.com>
Subject: Re: [PATCH v12 4/4] arm64: dts: qcom: sc7280-herobrine: Add lpi
 pinmux properties for CRD 3.0/3.1
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_rohkumar@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
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

On Wed, May 4, 2022 at 10:07 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Fri 29 Apr 11:10 CDT 2022, Doug Anderson wrote:
>
> > Hi,
> >
> > On Thu, Apr 28, 2022 at 5:02 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> > >
> > > On Wed, Apr 27, 2022 at 10:39:43PM +0530, Srinivasa Rao Mandadapu wrote:
> > > > Add LPASS LPI pinctrl properties, which are required for Audio
> > > > functionality on herobrine based platforms of rev5+
> > > > (aka CRD 3.0/3.1) boards.
> > > >
> > > > Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> > > > Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> > > > Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> > >
> > > I'm not super firm in pinctrl territory, a few maybe silly questions
> > > below.
> > >
> > > >  arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts | 84 +++++++++++++++++++++++
> > > >  1 file changed, 84 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > > > index deaea3a..dfc42df 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > > > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > > > @@ -111,6 +111,90 @@ ap_ts_pen_1v8: &i2c13 {
> > > >   * - If a pin is not hooked up on Qcard, it gets no name.
> > > >   */
> > > >
> > > > +&lpass_dmic01 {
> > > > +     clk {
> > > > +             drive-strength = <8>;
> > > > +     };
> >
> > Ugh, I've been distracted and I hadn't realized we were back to the
> > two-level syntax. Definitely not my favorite for all the reasons I
> > talked about [1]. I guess you took Bjorn's silence to my response to
> > mean that you should switch back to this way? :(
> >
> > Bjorn: can you clarify?
> >
>
> I didn't think through the fact that &mi2s0_state was specified in the
> .dtsi and as such will be partially be overridden by the baord dts.
>
>
> I do prefer the two level style and describing full "states", but as you
> say whenever we provide something that will have to be overwritten it's
> suboptimal.
>
> As such, I think your flattened model is preferred in this case

How about for future patches we just provided labels at both levels
(I'm not suggesting we churn this patch series more):

lpass_dmic01_sleep: dmic01-sleep {
  lpass_dmic01_sleep_clk: clk {
    pins = "gpio6";
    function = "dmic1_clk";
  };

  lpass_dmic01_sleep_data: data {
    pins = "gpio7";
    function = "dmic1_data";
  };
};

Then you can in your pinctrl reference you can just reference the
top-level node but boards can override without having to replicate
hierarchy...

> but it
> makes me dislike the partial definition between the dtsi and dts even
> more (but I don't have any better suggestion).

One other proposal I'd make is that maybe we should change the rules
about never putting drive strength in the soc.dtsi file. While it
should still be OK for boards to override the drive strength, it seems
like a whole lot of biolerplate code to have every board override
every pin and say that its drive strength is 2. Similarly, if there's
a high speed interface (like eMMC) where a drive strength of 2 is
nonsense for any board, it doesn't seem ridiculous to specify a
default drive strength of something higher in the soc.dtsi file.

I would like to say the same thing goes for for pulls, but it's
unfortunately uglier for pulls. :( For instance, nearly everyone has
an external pullup for i2c busses. The strength of the pullup needs to
be tuned for the i2c bus speed and the impedance of the line. Thus, it
would ideally make sense to specify this in the soc.dtsi file.
Unfortunately, if we do that and some board _wants_ to use the
internal pulls (maybe they're running at a really low speed and/or
forgot to add external pulls) then they have to do an ugly
"/delete-property/ bias-disable" because adding the "bias-pull-up"
doesn't delete the other property and you end up with both. :( That
seems bad, so I guess I'd vote to keep banning bias definitions in the
soc.dtsi file.

Anyway, I'd love your opinion on this.

-Doug
