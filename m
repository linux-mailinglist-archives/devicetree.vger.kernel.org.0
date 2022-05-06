Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CE3151CE5E
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 04:16:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1387623AbiEFAtu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 20:49:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234996AbiEFAtp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 20:49:45 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8D8115A3F
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 17:46:02 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id w17-20020a17090a529100b001db302efed6so5542458pjh.4
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 17:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rEvFIvhULsTu5Dt2JyC1H8DHz0diohEBqq9Wfv/TaLQ=;
        b=XiZCtbHwBXkRB9FjJAPpxFXk5S7pkWpN0/qRV09kIcMf3ndqXRdoDG5YgoelfezSJA
         f9FkIYotBF+mbHvOdQWVijAs8S1DLF/7I+oquBBMun6crSbUF2eHWJE4sg1rCbeldbvK
         PTSRPwC0N6Ki7+GO4pixHVO5+GgMrm/ibrX8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rEvFIvhULsTu5Dt2JyC1H8DHz0diohEBqq9Wfv/TaLQ=;
        b=7Fbqek/A0u2GIP+JquFaEa10p5jlxsE70hgFp7a4eNkgUzdupqf5O2Pph7o2NytS9z
         M6XNWmibreAGAmoaLr5Qby7eNq9DCOyUyWPAYBCUBrVYPacBslPLBb/MrKF08mTOZJ/T
         87/tmUWt7lRCPDA3dvJgM8w6HJmiOD07gA26NNvOHM11KNn0s3l0i/v4llzsIHdJHg06
         oky0Y7BfdPYY967tQtv+gcCDquu/e9tgB5mGIrSIOQ3xCBuTuevcXbZlJL6zH80VW/7L
         5Wzv9mPAT7qRgEHa25jmdIfrH1dfaZxHdCozfRfzsfB0uq7/Zxe/QguZXEKxM/yAaWWA
         uHLA==
X-Gm-Message-State: AOAM5338IOKdYZfrkD5msXAU5KPrJpylLocImvzWuMG6sV0elXekyrw3
        cY/60yDXSLOOPQUk1NKnhm+dag==
X-Google-Smtp-Source: ABdhPJxIX9aV1YZ3wVX8cOfdPZ4Epc6UiSnVPrfdIrdND5WRcMHiPW5HO09/5oCkj1AjqaaFVYvm8Q==
X-Received: by 2002:a17:90b:1e03:b0:1dc:5a7d:bba8 with SMTP id pg3-20020a17090b1e0300b001dc5a7dbba8mr1140413pjb.156.1651797962295;
        Thu, 05 May 2022 17:46:02 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:5605:d5cd:699b:1b26])
        by smtp.gmail.com with UTF8SMTPSA id w2-20020a1709029a8200b0015e8d4eb28bsm225278plp.213.2022.05.05.17.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 17:46:01 -0700 (PDT)
Date:   Thu, 5 May 2022 17:46:00 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
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
Subject: Re: [PATCH v12 4/4] arm64: dts: qcom: sc7280-herobrine: Add lpi
 pinmux properties for CRD 3.0/3.1
Message-ID: <YnRvyICa9kxFc/nE@google.com>
References: <1651079383-7665-1-git-send-email-quic_srivasam@quicinc.com>
 <1651079383-7665-5-git-send-email-quic_srivasam@quicinc.com>
 <YmsrB6Q89II5w1+9@google.com>
 <CAD=FV=XxeZsiOVVBDK_vmx0nhT7roB2FqcaPXsH3+jzTHFXMxw@mail.gmail.com>
 <YnKyzxPEolSVUhqD@builder.lan>
 <CAD=FV=VUL4GmjaibAMhKNdpEso_Hg_R=XeMaqah1LSj_9-Ce4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=VUL4GmjaibAMhKNdpEso_Hg_R=XeMaqah1LSj_9-Ce4Q@mail.gmail.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 05, 2022 at 05:06:08PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 4, 2022 at 10:07 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Fri 29 Apr 11:10 CDT 2022, Doug Anderson wrote:
> >
> > > Hi,
> > >
> > > On Thu, Apr 28, 2022 at 5:02 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> > > >
> > > > On Wed, Apr 27, 2022 at 10:39:43PM +0530, Srinivasa Rao Mandadapu wrote:
> > > > > Add LPASS LPI pinctrl properties, which are required for Audio
> > > > > functionality on herobrine based platforms of rev5+
> > > > > (aka CRD 3.0/3.1) boards.
> > > > >
> > > > > Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> > > > > Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> > > > > Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> > > >
> > > > I'm not super firm in pinctrl territory, a few maybe silly questions
> > > > below.
> > > >
> > > > >  arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts | 84 +++++++++++++++++++++++
> > > > >  1 file changed, 84 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > > > > index deaea3a..dfc42df 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> > > > > @@ -111,6 +111,90 @@ ap_ts_pen_1v8: &i2c13 {
> > > > >   * - If a pin is not hooked up on Qcard, it gets no name.
> > > > >   */
> > > > >
> > > > > +&lpass_dmic01 {
> > > > > +     clk {
> > > > > +             drive-strength = <8>;
> > > > > +     };
> > >
> > > Ugh, I've been distracted and I hadn't realized we were back to the
> > > two-level syntax. Definitely not my favorite for all the reasons I
> > > talked about [1]. I guess you took Bjorn's silence to my response to
> > > mean that you should switch back to this way? :(
> > >
> > > Bjorn: can you clarify?
> > >
> >
> > I didn't think through the fact that &mi2s0_state was specified in the
> > .dtsi and as such will be partially be overridden by the baord dts.
> >
> >
> > I do prefer the two level style and describing full "states", but as you
> > say whenever we provide something that will have to be overwritten it's
> > suboptimal.
> >
> > As such, I think your flattened model is preferred in this case
> 
> How about for future patches we just provided labels at both levels
> (I'm not suggesting we churn this patch series more):
> 
> lpass_dmic01_sleep: dmic01-sleep {

is the outer label ('lpass_dmic01_sleep') actually needed if we don't
intend to replicate the hierarchy?

>   lpass_dmic01_sleep_clk: clk {
>     pins = "gpio6";
>     function = "dmic1_clk";
>   };
> 
>   lpass_dmic01_sleep_data: data {
>     pins = "gpio7";
>     function = "dmic1_data";
>   };
> };
> 
> Then you can in your pinctrl reference you can just reference the
> top-level node but boards can override without having to replicate
> hierarchy...
> 
> > but it
> > makes me dislike the partial definition between the dtsi and dts even
> > more (but I don't have any better suggestion).
> 
> One other proposal I'd make is that maybe we should change the rules
> about never putting drive strength in the soc.dtsi file. While it
> should still be OK for boards to override the drive strength, it seems
> like a whole lot of biolerplate code to have every board override
> every pin and say that its drive strength is 2. Similarly, if there's
> a high speed interface (like eMMC) where a drive strength of 2 is
> nonsense for any board, it doesn't seem ridiculous to specify a
> default drive strength of something higher in the soc.dtsi file.

Indeed, that could make sense.

> I would like to say the same thing goes for for pulls, but it's
> unfortunately uglier for pulls. :( For instance, nearly everyone has
> an external pullup for i2c busses. The strength of the pullup needs to
> be tuned for the i2c bus speed and the impedance of the line. Thus, it
> would ideally make sense to specify this in the soc.dtsi file.
> Unfortunately, if we do that and some board _wants_ to use the
> internal pulls (maybe they're running at a really low speed and/or
> forgot to add external pulls) then they have to do an ugly
> "/delete-property/ bias-disable" because adding the "bias-pull-up"
> doesn't delete the other property and you end up with both. :( That
> seems bad, so I guess I'd vote to keep banning bias definitions in the
> soc.dtsi file.

I agree, having to use 'delete-property' to change a pull setting
doesn't seem a good idea.
