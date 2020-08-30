Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 066CD256E56
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 16:05:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726547AbgH3OFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 10:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726394AbgH3OEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 10:04:40 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C340BC061573
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 07:04:36 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id a26so5141154ejc.2
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 07:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=izMbgQfEUi4HL4B+upohBntCKcFRXHLkyQlubMj8LG8=;
        b=p0ZYmxxOJHsfHd9Q2GDtq6MQ7xqTDKUo/vPf5POGGiXKf090Udjkk15rpHRabtP6++
         SyDvkw+xi0u8sHt+pP9fuDNUDejViWNLt8LLh7A3uEAsVCi/2Z12pbZzJJs6zrQsLQol
         vgis1TpqDt1mwgk6QPohinqqssokoCNxabicXMB3GfuiRZSuYQFnShP8Bk3OQ4DwN+id
         gk5Io3bxBV3+Wlf/M9A1mAqhj/vFVtE329K+GxyLYFiyKLuy3Q1NG0QlwtBgirMZcTNR
         PIY8j92twehblQgyCbQGSfkmNbQl6s3vDhIGA+6FVljK3G6JjMrDIgLBV1tohakSjuaX
         n+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=izMbgQfEUi4HL4B+upohBntCKcFRXHLkyQlubMj8LG8=;
        b=m0HlHQxPt8V8YHwmbcuTBDayADev8H49pXhc+eKybJ8PyvKmT7uUfNr6mJE9zfRcr2
         Kr1xt/fq3z/ECjmBZAlFR68niKWtXLHvt/byMj3NpyYmV8BDSm2pRJctCpLEK6Mzr+W3
         T6768TdDNWMu7KPd79szLUu4PdrX0ShB1amuZL0Hy8oCvcenMrywKpNEVY9uEmr2Jgwh
         fQopuVdB5oQqgaWT2ggZiLChWwdHvUbh4Var/wwysack1hjI1MSshUMhuUlesn9gdZeQ
         a3lY8uTu8FPxSdMiOZop1zv8FbWryNNuTVaiToAsCq3WHh+S8J+kYu5b/HKB7vVslXXa
         /txA==
X-Gm-Message-State: AOAM531UCt6YU2Y8NX9xqJET0NuVo1JgyLyp6y/QZTMk6jwnK4rdesdR
        a8MHYuSERl8VbqcXiToq72RIqZS07Z9gk755TC8hsIYusNc=
X-Google-Smtp-Source: ABdhPJz60cc6Eu/ea3CES5e/4h0O82BakquR4RA7pyDNYs8Pbcdv+oMR4aU2gv5UAPivxnq+qHhEkX0DNO7qNfP7l4M=
X-Received: by 2002:a17:907:7094:: with SMTP id yj20mr7631941ejb.471.1598796275391;
 Sun, 30 Aug 2020 07:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200820121323.564-1-linux.amoon@gmail.com> <20200820121323.564-2-linux.amoon@gmail.com>
 <7hlfi9xgch.fsf@baylibre.com> <CANAwSgTZ23jFPAO46vRg1Dx_Bzi=4Bg6KHE0ozLQGky4p_fgKQ@mail.gmail.com>
 <CANAwSgQLnqDnuQvLv4cvaeTPeBW=H_g5F2aaNue_hb4nKLdovg@mail.gmail.com>
 <f7e6ce5f-02b0-065b-ffcf-2826159f926a@baylibre.com> <1j7dto3ylq.fsf@starbuckisacylon.baylibre.com>
 <CANAwSgQ1Miu73hfdK+cgL3howpekn2xj_5qwGasQZwtQpSGj5Q@mail.gmail.com>
 <1j4koq4x38.fsf@starbuckisacylon.baylibre.com> <CANAwSgTWnHXRFRUrbdCph+eBxL2PNXe6Q4aTXxEU32i7dGS=dw@mail.gmail.com>
 <CANAwSgQV7_4VdGRMgJDMjPFvOS3Nabkqbf2ucE5vqo6zrhxPDw@mail.gmail.com>
 <CAFBinCCEJJT_kfJ4qfTEz0R7Mo3ciCGDSw_MJYi_5PyNJA6x5w@mail.gmail.com> <CANAwSgRV8y3Cc72CtppfJMPFKDSfpddzAKLeBGExn8G4OBVJ6g@mail.gmail.com>
In-Reply-To: <CANAwSgRV8y3Cc72CtppfJMPFKDSfpddzAKLeBGExn8G4OBVJ6g@mail.gmail.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sun, 30 Aug 2020 16:04:24 +0200
Message-ID: <CAFBinCCpM=ea=zzormJ_m5RcsMtE6hUkq5-UkYpNpXK8fbXdAQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Anand Moon <linux.amoon@gmail.com>
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

Hi Anand,

On Sun, Aug 30, 2020 at 3:12 PM Anand Moon <linux.amoon@gmail.com> wrote:
[...]
> +       /* Make sure the rtc irq pin is properly configured as input */
> +       rtc_irq_pins: rtc-pin-irq {
> +               mux {
> +                       groups = "GPIOAO_7";
> +                       function = "gpio_periphs";
check meson_g12a_aobus_functions in drivers/pinctrl/meson/pinctrl-meson-g12a.c
GPIOAO_7 doesn't support "gpio_periphs", instead I think it should be
"gpio_aobus"

I'm surprised that you don't seem to be getting errors from the pin
controller driver about this.
On the other hand you have not attached the full kernel log, so maybe
it's in there but hidden somewhere

> +                       bias-disable;
shouldn't there be output-disable or input-enable here?

> +               };
> +       };
> +
>         hdmi-connector {
>                 compatible = "hdmi-connector";
>                 type = "a";
> @@ -481,7 +490,8 @@ hdmi_tx_tmds_out: endpoint {
>
>  &i2c3 {
>         pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> -       pinctrl-names = "default";
> +       pinctrl-1 = <&rtc_irq_pins>;
> +       pinctrl-names = "default", "gpio_periphs";
I am not expecting this to work because it means that the I2C driver
would have to manage the "gpio_periphs" pin state (but there's no
pinctrl_* call in drivers/i2c/busses/i2c-meson.c)
instead I would try:
&i2c3 {
  pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>, <&rtc_irq_pins>;
  pinctrl-names = "default";

  ...
};

or even:
rtc0: rtc@51 {
  pinctrl-0 = <&rtc_irq_pins>;
  pinctrl-names = "default";

  ...
};


Best regards,
Martin
