Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D8462EBCAC
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 11:49:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725822AbhAFKsl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 05:48:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725813AbhAFKsl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 05:48:41 -0500
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com [IPv6:2607:f8b0:4864:20::a35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8704AC061357
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 02:48:00 -0800 (PST)
Received: by mail-vk1-xa35.google.com with SMTP id l187so681114vki.6
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 02:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QhxW/qWUK1qHu3S5dKAsL/bE2CX9Mjir76mO+yFF09s=;
        b=CNtpzWHcVIutiMTLVCAVjQF6s8sXiFJfl+fPbNc8rpoExJe+4TByxzq/8dv6vqvsUl
         ZqBm9GRH+1lYMdc3Zm6sxtEjlcUNwUf76BSbbIz07pOhCbMHdeJyKjp0k19MyPeScAoX
         vi3gk6Ai9pAgR6lQSLEoA7bjw+COUAdNgarFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QhxW/qWUK1qHu3S5dKAsL/bE2CX9Mjir76mO+yFF09s=;
        b=B7PIMIAMnyCTRD9r0yhpjwknx3Ez//Dg2avSGnwzpg4KP1Qap5NG4PHmjhl3gCl18s
         rFsmYhTlkyLZ0m0vlgFPMTQmB5Y392kthR1jfnRRSpeJrgChu3uHC4deg2ZeQD5h8zFi
         XxnRm6r4BeiOISfV3uzuMS55ktzmWiVAP5MwZPxP4/Jkjv/3o9OZflfcvZTbL/GNM8GA
         AGKdS9beYLHnJT9CczyANeHXcJH1Pr8WxKVM7zh+kW2UTTdFe1AGslHy3RRm8gbMpBWp
         STFDz+faB1+svphCubF8Mvle9/medBZ+xoifWtI/GAHiwK5WS6x5fOiqeWM2UOA1TJxH
         Hpxw==
X-Gm-Message-State: AOAM532Tn07ElNqhwdpNq1XiH8TuMEkAoHaR7stlKD2zTUjTeiWeI++H
        m9Y9h+Kcr4pdX3pXIJYUM+yXkLs+n44679I7hCzn6A==
X-Google-Smtp-Source: ABdhPJy0jjS8DnZo6n0jcWiNil0zF7Su8pV8YGWDFMNynC2TIWBinJzDX9ZG164nRYdyQ+nmGzyP55SCRpsBsYZk8DQ=
X-Received: by 2002:a1f:a78c:: with SMTP id q134mr2864312vke.17.1609930079603;
 Wed, 06 Jan 2021 02:47:59 -0800 (PST)
MIME-Version: 1.0
References: <20210106084626.2181286-1-hsinyi@chromium.org>
In-Reply-To: <20210106084626.2181286-1-hsinyi@chromium.org>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Wed, 6 Jan 2021 18:47:48 +0800
Message-ID: <CANMq1KAoboK45uOhKMYZ-=TvBBQRZhEeij=ha6MqSKZiYx64eQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: mt8183: config dsi node
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 6, 2021 at 4:46 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Config dsi node for mt8183 kukui. Set panel and ports.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> index bf2ad1294dd30..4cfb3560e5d11 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -249,6 +249,36 @@ &cpu7 {
>         proc-supply = <&mt6358_vproc11_reg>;
>  };
>
> +&dsi0 {
> +       status = "okay";
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       panel: panel@0 {
> +               compatible = "boe,tv101wum-nl6";

We're going to have many panels in the kukui family, so I think I'd
prefer it if you moved the compatible string to krane-sku0 dts: it
makes it easier to figure out what's different with sku0.

Then maybe leave all the other properties in this file, as it seems
like all MIPI panels use the exact same pin/supplies?

(And add a comment here saying that the compatible needs to be set in
board dts?)

> +               reg = <0>;
> +               enable-gpios = <&pio 45 0>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&panel_pins_default>;
> +               avdd-supply = <&ppvarn_lcd>;
> +               avee-supply = <&ppvarp_lcd>;
> +               pp1800-supply = <&pp1800_lcd>;
> +               status = "okay";
> +               port {
> +                       panel_in: endpoint {
> +                               remote-endpoint = <&dsi_out>;
> +                       };
> +               };
> +       };
> +
> +       ports {
> +               port {
> +                       dsi_out: endpoint {
> +                               remote-endpoint = <&panel_in>;
> +                       };
> +               };
> +       };
> +};
> +
>  &i2c0 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&i2c0_pins>;
> @@ -547,6 +577,14 @@ pins_clk {
>                 };
>         };
>
> +       panel_pins_default: panel_pins_default {
> +               panel_reset {
> +                       pinmux = <PINMUX_GPIO45__FUNC_GPIO45>;
> +                       output-low;
> +                       bias-pull-up;
> +               };
> +       };
> +
>         pwm0_pin_default: pwm0_pin_default {
>                 pins1 {
>                         pinmux = <PINMUX_GPIO176__FUNC_GPIO176>;
> --
> 2.29.2.729.g45daf8777d-goog
>
