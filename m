Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82FA925705F
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 22:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726282AbgH3UGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 16:06:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgH3UGK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 16:06:10 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1A61C061573
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 13:06:10 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id o16so4847450ilq.0
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 13:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3z5XdXsgvD+nH7zCf5Gwtyiq31V0gPdWkz0sp8uWVaY=;
        b=tEcjKtkOLoWym+8QvlohWzXDduWWS4m9nWpY6QDnGvKIl4nyhUW04uniBLOhiW03nE
         mDr+nT6OiupIb+cAADY3pPB8c+YSVYEKKjOUmcXwPKjItjACnr9NXVaWhiGQYta47Gs6
         64bnHSXKfygzzTsmibzszE7oUPafm7j7zmJsd+0aIn1Z4wKW7lz2TCUuGHh35yF2IyHz
         ONkQX/bRrAZma925jXwnTHVdr8ddC33RatYf6I5+PDke61vtNwO97b/GE0CBxhsPRh9W
         Ll8iS0bNDuxm31j94TL7CaetooRq7v5BFZqAWrWpmyzREGjo7Nbek34igYMIeJRv/ZIf
         7TMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3z5XdXsgvD+nH7zCf5Gwtyiq31V0gPdWkz0sp8uWVaY=;
        b=dESeg3im8Z11kbY6MEX/2wHW5+sSCn+6N8oRMqA23nMU1H3YLkP9PGYX6wlHT3TaFs
         Jsedgs7QbQYLi5oX7P+CJnEo0KFbZfvDMYM13H1IRSAloxQZFNljiZQUjhj/Hajc/3Jx
         /eSKwAbYZE+lmxckEvuyyKSOKYcmmMtQsqwiAH+e3L19GTx7T1OYM65fVMOqiyKlGLo0
         7eZ/RCvY/iJ3TB0rXffL546JzqiW5OJ6Ptf6jnWLz9abZA91heNz09DuSOIJ0rngQXKP
         z6g9lRVE4He+XFEz1If4ZO6MZ1FrC9z1kESg5sIpr4quq0mMocPwtAgYdY3QOQ21XuqL
         NO2Q==
X-Gm-Message-State: AOAM53379QLevjBTdhjC22/sk12d05CQ9d9IXvUpmnMK2gHGo1eb1cvF
        fRy0pQwppAjRxxDfw2QgofyIHCWKpBjJyx4S0Rk=
X-Google-Smtp-Source: ABdhPJy2xzukOmZ6jrpihqoZ6Lo/wS1efaLMrUJNQstm/cK3YHqa5tts6ZqEA3sNyC5n2UPVnXv+3lEim//csX/BZsQ=
X-Received: by 2002:a92:d8cb:: with SMTP id l11mr6141767ilo.221.1598817970039;
 Sun, 30 Aug 2020 13:06:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200820121323.564-1-linux.amoon@gmail.com> <20200820121323.564-2-linux.amoon@gmail.com>
 <7hlfi9xgch.fsf@baylibre.com> <CANAwSgTZ23jFPAO46vRg1Dx_Bzi=4Bg6KHE0ozLQGky4p_fgKQ@mail.gmail.com>
 <CANAwSgQLnqDnuQvLv4cvaeTPeBW=H_g5F2aaNue_hb4nKLdovg@mail.gmail.com>
 <f7e6ce5f-02b0-065b-ffcf-2826159f926a@baylibre.com> <1j7dto3ylq.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgQ1Miu73hfdK+cgL3howpekn2xj_5qwGasQZwtQpSGj5Q@mail.gmail.com>
 <1j4koq4x38.fsf@starbuckisacylon.baylibre.com> <CANAwSgTWnHXRFRUrbdCph+eBxL2PNXe6Q4aTXxEU32i7dGS=dw@mail.gmail.com>
 <CANAwSgQV7_4VdGRMgJDMjPFvOS3Nabkqbf2ucE5vqo6zrhxPDw@mail.gmail.com>
 <CAFBinCCEJJT_kfJ4qfTEz0R7Mo3ciCGDSw_MJYi_5PyNJA6x5w@mail.gmail.com>
 <CANAwSgRV8y3Cc72CtppfJMPFKDSfpddzAKLeBGExn8G4OBVJ6g@mail.gmail.com> <CAFBinCCpM=ea=zzormJ_m5RcsMtE6hUkq5-UkYpNpXK8fbXdAQ@mail.gmail.com>
In-Reply-To: <CAFBinCCpM=ea=zzormJ_m5RcsMtE6hUkq5-UkYpNpXK8fbXdAQ@mail.gmail.com>
From:   Anand Moon <linux.amoon@gmail.com>
Date:   Mon, 31 Aug 2020 01:35:58 +0530
Message-ID: <CANAwSgTf0jCPtfLP7bc1VxATdGbdSMR4DKjojJWtpqrwCeS27A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Martin.

On Sun, 30 Aug 2020 at 19:34, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Anand,
>
> On Sun, Aug 30, 2020 at 3:12 PM Anand Moon <linux.amoon@gmail.com> wrote:
> [...]
> > +       /* Make sure the rtc irq pin is properly configured as input */
> > +       rtc_irq_pins: rtc-pin-irq {
> > +               mux {
> > +                       groups = "GPIOAO_7";
> > +                       function = "gpio_periphs";
> check meson_g12a_aobus_functions in drivers/pinctrl/meson/pinctrl-meson-g12a.c
> GPIOAO_7 doesn't support "gpio_periphs", instead I think it should be
> "gpio_aobus"
>
Thanks for this information, I really learned a lot on this feature..

> I'm surprised that you don't seem to be getting errors from the pin
> controller driver about this.
> On the other hand you have not attached the full kernel log, so maybe
> it's in there but hidden somewhere
>
> > +                       bias-disable;
> shouldn't there be output-disable or input-enable here?
>
Thanks for this information and correction.

> > +               };
> > +       };
> > +
> >         hdmi-connector {
> >                 compatible = "hdmi-connector";
> >                 type = "a";
> > @@ -481,7 +490,8 @@ hdmi_tx_tmds_out: endpoint {
> >
> >  &i2c3 {
> >         pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> > -       pinctrl-names = "default";
> > +       pinctrl-1 = <&rtc_irq_pins>;
> > +       pinctrl-names = "default", "gpio_periphs";
> I am not expecting this to work because it means that the I2C driver
> would have to manage the "gpio_periphs" pin state (but there's no
> pinctrl_* call in drivers/i2c/busses/i2c-meson.c)
> instead I would try:
> &i2c3 {
>   pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>, <&rtc_irq_pins>;
>   pinctrl-names = "default";
>
>   ...
> };
>
> or even:
> rtc0: rtc@51 {
>   pinctrl-0 = <&rtc_irq_pins>;
>   pinctrl-names = "default";
>
>   ...
> };
>

Thanks for the input on the IRC,
I followed Neil's suggestion to work for me.

Best regards,
-Anand
