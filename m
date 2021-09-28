Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A4C741BADF
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 01:15:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbhI1XQ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 19:16:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229907AbhI1XQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 19:16:57 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C669C061745
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 16:15:17 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id u32so1154358ybd.9
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 16:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a8ee7WRS14R1O+BHcNU3Zd5XnKmvSTh6mYlENaJtsFs=;
        b=eWt9X/Jqh7u9qa8ilTksY05Vlq460clfXJSJwTGEMiyi9I3duuWFlnAe+zZebsBJZV
         15AJsLYBy6uXOdaTdkQqCcbxzXR5kc395Gms9aGkaq0Jy8mio8TIgs71TZcr4azxCqV1
         VnIkSSoDunlxZXjvMWmNUm/ftdAlcIMd8PObw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a8ee7WRS14R1O+BHcNU3Zd5XnKmvSTh6mYlENaJtsFs=;
        b=WI0MNe477YACnPbSAMTit9hiORu5y3eWmz43qNFqSk7eVaBC2kI53HAZ80HI4U6DGB
         MoDtszFnftQW2fcrhsJnQOvRC60+aO2Ubo/+z4MAvjS7xuorw5HJyN3JXdcPgvZGAlgg
         gueiY6Xp1lxQDdBfw0Ny/nVuBZ5YC8rt0HusR/pibLaZRAI3wAjl4NFlMAraw91k5zBa
         yxnt1BsdPLaq00DnRhNTufyV+maNQWstYjairodcUAQ1y1RYs8PuMvJRx99GS1rIJpyC
         oF2H9cQYO2Ca3ESTyyE/taBgipz5SR+4nKLSH20cqucoTFYRk8KYS59F9rmnt2XFcExW
         FoSQ==
X-Gm-Message-State: AOAM532lueJ3tMl9Dt/GzHioK11+QdY/CVZFJNuY2BS934rPBotTX/mD
        K+fMM+jKLCr/8suUxPwdR49jwvgqjQwZ/pN76foiWA==
X-Google-Smtp-Source: ABdhPJxH6/p92YPgO/7HgmWzUCpzT3aC3l1Fe59UgZFVRHr2rRuYtxEtIzMzurOBOUFi8ko6ewEazBNVdxy/MJvI9A4=
X-Received: by 2002:a25:8885:: with SMTP id d5mr9334051ybl.14.1632870916255;
 Tue, 28 Sep 2021 16:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210927184858.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
 <20210927184858.2.I651eec59ce3cd1c4bdd64de31f9c3531f501b3a8@changeid> <CAE-0n51kTvv-UENH-jZPX-cJu-BCF8HGkCgVBUc3kkxrcUPy9Q@mail.gmail.com>
In-Reply-To: <CAE-0n51kTvv-UENH-jZPX-cJu-BCF8HGkCgVBUc3kkxrcUPy9Q@mail.gmail.com>
From:   Philip Chen <philipchen@chromium.org>
Date:   Tue, 28 Sep 2021 16:15:05 -0700
Message-ID: <CA+cxXh=BOsJKvCSFBof-PGC-aaXwyaxukVPKQv3okijnpnxXuQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: sc7180: Support Parade ps8640 edp bridge
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephen,

On Tue, Sep 28, 2021 at 1:58 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Philip Chen (2021-09-27 18:49:40)
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
> > new file mode 100644
> > index 000000000000..647afb3a7c6a
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
> > @@ -0,0 +1,105 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Google Trogdor dts fragment for the boards with Parade ps8640 edp bridge
> > + *
> > + * Copyright 2021 Google LLC.
> > + */
> > +
> > +/ {
> > +       pp3300_brij_ps8640: pp3300-brij-ps8640 {
> > +               compatible = "regulator-fixed";
> > +               status = "okay";
> > +               regulator-name = "pp3300_brij_ps8640";
> > +
> > +               regulator-min-microvolt = <3300000>;
> > +               regulator-max-microvolt = <3300000>;
> > +
> > +               gpio = <&tlmm 32 GPIO_ACTIVE_HIGH>;
> > +
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&en_pp3300_edp_brij_ps8640>;
> > +
> > +               vin-supply = <&pp3300_a>;
> > +       };
> > +};
> > +
> > +&dsi0_out {
> > +       remote-endpoint = <&ps8640_in>;
> > +};
> > +
> > +&i2c2 {
> > +       ps8640_bridge: edp-bridge@8 {
> > +               compatible = "parade,ps8640";
> > +               reg = <0x8>;
> > +
> > +               powerdown-gpios = <&tlmm 104 GPIO_ACTIVE_LOW>;
> > +               reset-gpios = <&tlmm 11 GPIO_ACTIVE_LOW>;
> > +
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&edp_brij_en>, <&edp_brij_ps8640_rst>;
>
> Ah here it is. Ignore my concern on patch #1.
>
> > +
> > +               vdd12-supply = <&pp1200_brij>;
> > +               vdd33-supply = <&pp3300_brij_ps8640>;
> > +
> > +               ports {
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
> > +
> > +                       port@0 {
> > +                               reg = <0>;
> > +                               ps8640_in: endpoint {
> > +                                       remote-endpoint = <&dsi0_out>;
> > +                               };
> > +                       };
> > +
> > +                       port@1 {
> > +                               reg = <1>;
> > +                               ps8640_out: endpoint {
> > +                                       remote-endpoint = <&panel_in_edp>;
> > +                               };
> > +                       };
> > +               };
> > +
> > +               aux_bus: aux-bus {
>
> The parade,ps8640 binding needs an update for aux-bus. Is that somewhere
> in linux-next or on the list?
Thanks for the reminder.
I'll upload a patch to fix the devicetree binding document.
But I'll wait until the support for ps8640 aux-bus is 100% verified by hardware.

>
> > +                       panel: panel {
> > +                               /* Compatible will be filled in per-board */
> > +                               power-supply = <&pp3300_dx_edp>;
> > +                               backlight = <&backlight>;
> > +
> > +                               port {
> > +                                       panel_in_edp: endpoint {
> > +                                               remote-endpoint = <&ps8640_out>;
> > +                                       };
> > +                               };
> > +                       };
> > +               };
> > +       };
> > +};
