Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAF76598E23
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 22:37:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346112AbiHRUe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 16:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242803AbiHRUez (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 16:34:55 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1D4E6110B
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 13:34:54 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id kb8so5341660ejc.4
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 13:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=2hDqEKcdmlYS+rmxMoV7evAJDeqAhao6y+38M8d8WAw=;
        b=JmjuAiUEh8LDFy22IDRUpw9ZDS42dlK7Mq1k8lu9nRgQ6JsQ5jjykvqGPtpZF8+ShW
         cKfizZF4FHBZ2y1NhmQwtx84tp+fPWsDRigx0GmT5jv9eAYEds53keBKYdHiyj6wUDkm
         Dn5cUN82C37nyUdf4CFexaOv2B6CfP4Ot+w3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=2hDqEKcdmlYS+rmxMoV7evAJDeqAhao6y+38M8d8WAw=;
        b=J3LAWKcRnH973o2KEavwbh0UEhBoB83jjj7ZTfw+tTIF/4Skm2S8P3+44fortHsXiS
         HcqVHJrCh2P+bsN/METN57iG2TJXw/kiKrkUNBMYb7Ae9eAeitfFWkKxiE2PZyjBTOo5
         GJgJDTxEEgF/gCrOS7TaxnI0/4YxIMdvAbzo2+25rJmPyFktxXLNH8769E+u01NGbmuf
         tmCHS9oofcUd3leUY6xXJUTZvlQBTB1mpwpIRQ/uTjN0chChHoKDVTqSA3mEuA71Xzzq
         Fnw83Vsxf81akIYleUDHwHlFi+uZOufFW09PXLZvg/0KQQDj/UAcYzerqZTlsr0MXHmN
         h2mA==
X-Gm-Message-State: ACgBeo0+45UC5IuCq2M8cNDltqu5SboqmY5pUdQo+qvo21xlipzWIkbf
        2QB/KbopwY6eN5LScyLNVFL6oWgpxmwVtwSZ
X-Google-Smtp-Source: AA6agR7bGXK44GmjJjhmu5TpvqfVlu6pOnRU9ZisHAb2xdvOMEOnmqMfrBij5us7OJC6wCZwMJdiEQ==
X-Received: by 2002:a17:907:7b95:b0:72f:9c64:4061 with SMTP id ne21-20020a1709077b9500b0072f9c644061mr2856868ejc.351.1660854893192;
        Thu, 18 Aug 2022 13:34:53 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id bd11-20020a056402206b00b00445f3ba4674sm1736325edb.63.2022.08.18.13.34.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 13:34:52 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id ba1so2992236wrb.5
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 13:34:52 -0700 (PDT)
X-Received: by 2002:a05:6000:1541:b0:222:cf65:18d7 with SMTP id
 1-20020a056000154100b00222cf6518d7mr2401685wry.659.1660854892286; Thu, 18 Aug
 2022 13:34:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220818084216.1.I5c2b6fea19c4c0dec67fd4931f03df8e5ccaca95@changeid>
 <CAE-0n52GzxXEsToWzfU1TMuASuC6TKK7NXxYbBQWxNmM74FxZA@mail.gmail.com>
In-Reply-To: <CAE-0n52GzxXEsToWzfU1TMuASuC6TKK7NXxYbBQWxNmM74FxZA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 18 Aug 2022 13:34:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WNuqtpnCr2Zn0z_L1OCiwD8dNzhDxvhfHYuYVmciPbuQ@mail.gmail.com>
Message-ID: <CAD=FV=WNuqtpnCr2Zn0z_L1OCiwD8dNzhDxvhfHYuYVmciPbuQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add sleep state for alc5682 codec
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     "Joseph S. Barrera III" <joebar@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Alexandru Stan <amstan@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Aug 18, 2022 at 11:46 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Joseph S. Barrera III (2022-08-18 08:42:19)
> > Add sleep state to acl5682. In default, gpio28 (HP_IRQ) is bias-pull-up.
> > To save power, in the new sleep state, gpio28 is bias-disable.
> >
> > sleeping, /sys/kernel/debug/gpio shows gpio28 as "no pull". When codec
>
> Is something missing? The sentence starts with 'sleeping'.
>
> > is awake (microphone plugged in and in use), it shows gpio28 as "pull up".
> >
> > Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
> > ---
> >
> >  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> > index b5f534db135a..94dd6c34d997 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> > @@ -755,8 +755,9 @@ hp_i2c: &i2c9 {
> >         alc5682: codec@1a {
> >                 compatible = "realtek,rt5682i";
> >                 reg = <0x1a>;
> > -               pinctrl-names = "default";
> > +               pinctrl-names = "default", "sleep";
> >                 pinctrl-0 = <&hp_irq>;
> > +               pinctrl-1 = <&hp_sleep>;
> >
> >                 #sound-dai-cells = <1>;
> >
> > @@ -1336,6 +1337,18 @@ pinconf {
> >                 };
> >         };
> >
> > +       hp_sleep: hp-sleep {
> > +               pinmux {
> > +                       pins = "gpio28";
> > +                       function = "gpio";
> > +               };
> > +
> > +               pinconf {
> > +                       pins = "gpio28";
> > +                       bias-disable;
> > +               };
>
> Does removing the bias cause an irq to trigger? I'm worried that this
> change may cause a spurious irq upon entering or exiting sleep, maybe
> both actually. The irq is double edged so we really want it to stay
> stable at one level whenever the gpio interrupt hardware is sensing the
> line.
>
> From what I can tell the pin is powered by AVDD-supply

Officially DBVDD I think, but (at least on the trogdor hardware) they
are the same rail.

> and I can't tell
> if that is ever powered off while the driver is probed. Probably not?

It doesn't seem to be. The driver I'm looking at turns on all the
regulators at probe time and never turns them off.

> If
> the power to the pin on the codec is never turned off then there isn't a
> power leak from what I can tell.

I tend to agree with Stephen's analysis. We actually need to keep the
pullup enabled unless we are actually turning power off to the codec,
which we don't seem to be doing.

I guess I'm a little surprised that we don't even seem to turn any of
this codec's regulators off in S3. That seems like it would be drawing
power that we don't want. Maybe the "low power" mode of the codec is
low enough and we need to avoid powering it off to avoid pops / hisses
in S3 or something? If that's true, this might be one of those places
where the "LPM" of the regulators might actually be useful...


-Doug
