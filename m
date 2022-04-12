Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 286D84FE76B
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 19:43:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351731AbiDLRp3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 13:45:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358527AbiDLRpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 13:45:24 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB7CD633BE
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 10:43:05 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id y65so6504403iof.1
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 10:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dcXTBW+sUCZX4Cryulv5BVBeuZPCS9qn8OqGe1EBsRg=;
        b=OwSJ+o/DINsy0kUQ8NGR8qNvLghh3S9TSDUUroWlUdPQj+3PrbyYg6E9tq3EHEPgZi
         CU3JbEHbN78HreL+OxeGoQ2Io0q9cBLhjTapimELKg/sNn8VkU6UHH7Ywpjq0diFP2VX
         b61tLJ9Is+uMXOATce52nwkyAlWyIOlE1Dgso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dcXTBW+sUCZX4Cryulv5BVBeuZPCS9qn8OqGe1EBsRg=;
        b=iWcN7WCkiYTvXeDWFzE3LfyNS52rOxazLaCW+yavJyV/unQAiWUIQ8YLXPJF2aZyaV
         ZpuP2DB9L2M1RGuaIw0bN75LuVUsPaKgc1zygak+xEj0hLyu+1pdkrkCUJWxc489dwyP
         XvK0XHz72ib+izN4gqH25MqVE85mN9wD0mrRxKJov4U2HtoHeA5F64iFeVVjuBqY3ela
         DsW9px24Ja9cdSryZpyZhUDqlkrTNa8MIn6Pg+F+Z/lPaz9zdn1eQ/T/3Ku0eV7s7PvO
         MY/+UqNQSvyzlO9GxKyjRMiTdmfOXQObY6+FfREPnPZsiIEXkPskkr0NAQGSQY/c46fo
         /P+Q==
X-Gm-Message-State: AOAM532qp0U4fWuXsGwvLl34W8zjeJqGusc/5WLbOpTuNmjvDaiOAEp0
        q0OV/ez41XpdrGBAlPAKXaeXj3s5NNicYIy9
X-Google-Smtp-Source: ABdhPJx7Gd2YtKWtrizpyFJ8qi7Vm+sG+/Lx7111dXovb0EQ8rJJzGN1SqtmEiZmIpzznbzYSVPIAA==
X-Received: by 2002:a02:a98f:0:b0:315:19db:27a3 with SMTP id q15-20020a02a98f000000b0031519db27a3mr17372414jam.184.1649785384950;
        Tue, 12 Apr 2022 10:43:04 -0700 (PDT)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com. [209.85.166.177])
        by smtp.gmail.com with ESMTPSA id i81-20020a6bb854000000b00649c1b67a6csm22284757iof.28.2022.04.12.10.42.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 10:43:01 -0700 (PDT)
Received: by mail-il1-f177.google.com with SMTP id b5so6011573ile.0
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 10:42:58 -0700 (PDT)
X-Received: by 2002:a05:6e02:144f:b0:2ca:391d:5664 with SMTP id
 p15-20020a056e02144f00b002ca391d5664mr16693061ilo.220.1649785378331; Tue, 12
 Apr 2022 10:42:58 -0700 (PDT)
MIME-Version: 1.0
References: <1649769281-12458-1-git-send-email-quic_srivasam@quicinc.com>
 <1649769281-12458-2-git-send-email-quic_srivasam@quicinc.com>
 <YlWNt7f5EUk7I4by@builder.lan> <50953847-3c7f-ce2e-3447-87ba1893a976@quicinc.com>
In-Reply-To: <50953847-3c7f-ce2e-3447-87ba1893a976@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 12 Apr 2022 10:42:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VicFiX6QkBksZs1KLwJ5x4eCte6j5RWOBPN+WwiXm2Cw@mail.gmail.com>
Message-ID: <CAD=FV=VicFiX6QkBksZs1KLwJ5x4eCte6j5RWOBPN+WwiXm2Cw@mail.gmail.com>
Subject: Re: [PATCH v8 1/2] arm64: dts: qcom: sc7280: Add pinmux for I2S
 speaker and Headset
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Apr 12, 2022 at 7:43 AM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:
>
> On 4/12/2022 8:03 PM, Bjorn Andersson wrote:
> Thanks for your time Bjorn!!!
> > On Tue 12 Apr 08:14 CDT 2022, Srinivasa Rao Mandadapu wrote:
> >
> >> Add pinmux nodes for primary and secondary I2S for SC7280 based platforms.
> >>
> >> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> >> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> >> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 14 +++++++++++
> >>   arch/arm64/boot/dts/qcom/sc7280.dtsi     | 40 ++++++++++++++++++++++++++++++++
> >>   2 files changed, 54 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >> index ecbf2b8..1fc94b5 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >> @@ -359,6 +359,20 @@
> >>      bias-disable;
> >>   };
> >>
> >> +&mi2s1_data0 {
> >> +    drive-strength = <6>;
> >> +    bias-disable;
> >> +};
> >> +
> >> +&mi2s1_sclk {
> >> +    drive-strength = <6>;
> >> +    bias-disable;
> >> +};
> >> +
> >> +&mi2s1_ws {
> >> +    drive-strength = <6>;
> >> +};
> >> +
> >>   &pm7325_gpios {
> >>      key_vol_up_default: key-vol-up-default {
> >>              pins = "gpio6";
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> index f0b64be..6e6cfeda 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> @@ -3522,6 +3522,46 @@
> >>                              function = "edp_hot";
> >>                      };
> >>
> >> +                    mi2s0_data0: mi2s0-data0 {
> > Are these ever going to be selected individually, or could this be:
> >
> > mi2s0_state: mi2s0-state {
> >       data0 {
> >               ...;
> >       };
> >
> >       data1 {
> >               ...;
> >       };
> >
> >       mclk {
> >               ...;
> >       };
> >
> >       etc
> > };
> >
> > mi2s1-state {
> >       ...;
> > };
> >
> > And then a single pinctrl-0 = <&mi2c0_state>;
> >
> > Regards,
> > Bjorn
>
> We are not selecting individually. Actually we were following the same,
> but Doug Anderson suggested this way of handling in 1st version of patches.
>
> So changed accordingly.

Right. The problem with the syntax Bjorn is suggesting is that it's
harder for board files to override. They essentially have to replicate
your hierarchy in their board file when they're setting drive
strengths / pullups and that gives them the chance to make typos in
the names of the nodes. It also means that if someone
reorganizes/renames the pinctrl in the SoC dtsi file that it could
unintentionally break a board. I talked about this a little in commit
f9800dde34e6 ("arm64: dts: qcom: sc7280: Clean up sdc1 / sdc2
pinctrl").

-Doug
