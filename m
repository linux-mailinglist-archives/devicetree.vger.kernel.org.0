Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 743D040F1E0
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 08:07:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244975AbhIQGI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Sep 2021 02:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244959AbhIQGI2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Sep 2021 02:08:28 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FB2AC061766
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 23:07:06 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 77-20020a9d0ed3000000b00546e10e6699so416985otj.2
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 23:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=uFxktZTFTvrgPpVfXvx5wJ9NT0aZLesc6X5ChP1iv7A=;
        b=i/ncKKPIpr+3o9b6pA0DCzCBl8WUKX1Ag2tuxiTlv5DFjg2x0hUOLgQi34zNW/rawU
         vC6nF7DwJ49OTMrhSPq1WDne735OUV/Q9jbN/spxDPPRnkqpOh/AHISPiJjUeoj/vdLZ
         y4j4lxX/R/X0aM40ICqquVM9oB2b3UQr+OXIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=uFxktZTFTvrgPpVfXvx5wJ9NT0aZLesc6X5ChP1iv7A=;
        b=PUZhIwioxX1M0vrWokrQLst2v9S6QjaWx4354aCX/XgQ81luO+cijY2PKvcx8U2exc
         WrAoMf1Ai99ejpWnZFVRgobLO19jl8rdPxsEqgEGyv/3ErmoHVgancVJ2WJyhUFGXeTQ
         enl5lNDwTh7+l5S1yKIe9HNNv8sMCfD5dcwceGOJCktHSpP5TYCKFfy19CFKhIBQCoWj
         hQg6O5YAh4wx/RTTliFcfHmYw3IwhOBWaLIotACVyid9Egzxvos4D1VS7sqHwEC1ypWD
         SAb4af/vbbv6yMR4qgOnvkguSoYgxWImXaLj8nXOHnmNzsDZP4o3wg5kBCDv2/dnAmJz
         d0MA==
X-Gm-Message-State: AOAM531GQqXHyJfPUk5Y/KFE0y1PDQGTOZykDBHfOHK9TB96MAOsXYLh
        P06bQyEOR23rM7YP309VyRYU9P2fn2hHgv2CxfgwMg==
X-Google-Smtp-Source: ABdhPJxQEesmDcj/3cYONDWgEpdGmnZZmuk8Te4FWZg9ahd8D1bR5hpR8n7vTHM4r69wQilPoaiFgB2r7HIGEK65gJE=
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr7898467ots.77.1631858825850;
 Thu, 16 Sep 2021 23:07:05 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 16 Sep 2021 23:07:05 -0700
MIME-Version: 1.0
In-Reply-To: <baa5c4b4dd19e0a24d28b8bff559b868@codeaurora.org>
References: <1631798498-10864-1-git-send-email-skakit@codeaurora.org>
 <1631798498-10864-3-git-send-email-skakit@codeaurora.org> <CAE-0n53i4pU==W-dc=md_x+0Tqbd1gtwkPBFode+rtupSFi0WQ@mail.gmail.com>
 <baa5c4b4dd19e0a24d28b8bff559b868@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 16 Sep 2021 23:07:05 -0700
Message-ID: <CAE-0n53x6oB+Rj1_1QDNMVJowyCUeXgGBMmZ1SW1rTMmcEwD4A@mail.gmail.com>
Subject: Re: [PATCH V5 2/2] arm64: dts: sc7280: Add volume up support for sc7280-idp
To:     skakit@codeaurora.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        David Collins <collinsd@codeaurora.org>, kgunda@codeaurora.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting skakit@codeaurora.org (2021-09-16 21:08:11)
> On 2021-09-17 00:32, Stephen Boyd wrote:
> > Quoting Satya Priya (2021-09-16 06:21:38)
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >> b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >> index 371a2a9..cbbb0ee 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> >> @@ -12,6 +12,26 @@
> >>  #include "pm8350c.dtsi"
> >>  #include "pmk8350.dtsi"
> >>
> >> +/ {
> >> +       gpio-keys {
> >> +               compatible = "gpio-keys";
> >> +               label = "gpio-keys";
> >> +
> >> +               pinctrl-names = "default";
> >> +               pinctrl-0 = <&key_vol_up_default>;
> >> +
> >> +               volume-up {
> >> +                       label = "volume_up";
> >> +                       gpios = <&pm7325_gpios 6 GPIO_ACTIVE_LOW>;
> >> +                       linux,input-type = <1>;
> >> +                       linux,code = <KEY_VOLUMEUP>;
> >
> > Is there an include for this define? Looks like
> > <dt-bindings/input/input.h> should be added as well? Did you try
> > compiling?
> >
>
> Yeah, it needs <dt-bindings/input/linux-event-codes.h> to be included.
> This header was included in pmk8350.dtsi which is added in this file.

Alright, got it. If you can include this header in this dts file it
would be better so we don't rely on implicit includes from other files
to get macros. With that change you can add my

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
