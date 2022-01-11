Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FD2448AA99
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 10:33:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349284AbiAKJdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 04:33:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349277AbiAKJdg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 04:33:36 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB90C061748
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 01:33:31 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id u25so64704278edf.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 01:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X8bneVZ+qC15M11+UEogNTqMcApOjWyY+lQpeNZkiXo=;
        b=MDG3t1FDU8XXB0ZGubfHzYuh/BCkX+jsYiXrFKFfWtqDltvGakGb2KF668ymmoEEQp
         05b9nH/on0byJC71ajqLPicmF45UQb2HJdLibllWuzqE2y7BexMLJLy8lZvHaRNM1ccn
         8C9i1xwsQW0Qz9obrqWG37k0NhMOyc89UIhDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X8bneVZ+qC15M11+UEogNTqMcApOjWyY+lQpeNZkiXo=;
        b=sOAzK9eS6FtAAcQIxU7EJUGwesynDiZuI5ltariXzd8Gsx+38rIk5Iv0Ng5BeEaREa
         nNN2fbdXVVLm6pcY4NKAyL5fB0ynMHPBoi7xf4NM94+z/RfvefuNRneyeW7J3YX0Y2hs
         Lz2ifgnDMvFnp2Wbkls8xQaFHJcZKCkbPZ7lbIeE+WEmSeQdgU7Z0SvRukhMrzcv8U53
         x0oancx4DNGyL0qBFdDam1f6QDsxyrfX5x2Fj8Qjot9ZKYXjCVmh56DHRzbmgeGiQa2Y
         qIbrO9yTML9IqMeJyIwCcnZBoCvzXft6nsBPpPy6KSVYYaShI0tTK9RT7+fgcuo459Jk
         Wkmg==
X-Gm-Message-State: AOAM5327yh7kd+TdzkLf5yb/1ftZbrR++O0XJV8cUIZjAA1PiKPe22gn
        DK9ywk+HNJVgra3qEJ1GYWIaSCky5G3xpP0T2JLF6Q==
X-Google-Smtp-Source: ABdhPJyFng5l8FDcltBOzaC7Q+BUfc4C2MuIm8fya/CGbULn+72c0lC2c+/0gRyMdBsFYI1M/uk1b8A58qoDK8H9wBI=
X-Received: by 2002:a05:6402:5214:: with SMTP id s20mr3549866edd.13.1641893610416;
 Tue, 11 Jan 2022 01:33:30 -0800 (PST)
MIME-Version: 1.0
References: <20220110152714.58220-1-jagan@amarulasolutions.com> <9912c743-8acb-c59a-760a-a9b79ed48784@intel.com>
In-Reply-To: <9912c743-8acb-c59a-760a-a9b79ed48784@intel.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 11 Jan 2022 15:03:19 +0530
Message-ID: <CAMty3ZDF8jjoOx_qHsFAVKGDPqrOaiwSFkCikrHZQLRd-OV0pQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: exynos: Link DSI panel at port@1 for TM2 board
To:     Andrzej Hajda <andrzej.hajda@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrzej,

On Tue, Jan 11, 2022 at 2:05 PM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>
> +CC: dri-devel
>
> On 10.01.2022 16:27, Jagan Teki wrote:
> > TM2 board DSI pipeline has input from MIC and output to
> > s6e3ha2 panel.
> >
> > The existing pipeline has child nodes of ports, panel and
> > MIC is remote-endpoint reference of port@0 of ports.
> >
> > Adding panel as another child node to DSI is unconventional
> > as pipeline has ports child. However it can be true if MIC
> > is added inside port node like this.
> >
> > dsi {
> >       compatible = "samsung,exynos5433-mipi-dsi";
> >       #address-cells = <1>;
> >       #size-cells = <0>;
> >
> >       port {
> >               dsi_to_mic: endpoint {
> >                       remote-endpoint = <&mic_to_dsi>;
> >               };
> >       };
> >
> >       panel@0 {
> >               compatible = "samsung,s6e3hf2";
> >                  reg = <0>;
> >                  vdd3-supply = <&ldo27_reg>;
> >                  vci-supply = <&ldo28_reg>;
> >                  reset-gpios = <&gpg0 0 GPIO_ACTIVE_LOW>;
> >                  enable-gpios = <&gpf1 5 GPIO_ACTIVE_HIGH>;
> >       };
> > };
> >
> > The above pipeline is proper but it requires the DSI input MIC
> > pipeline to update.
> >
> > This patch is trying to add panel at port@1 so-that the entire
> > pipeline before to panel output is untouched.
> >
> > Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >   arch/arm64/boot/dts/exynos/exynos5433-tm2.dts | 16 ++++++++++++++++
> >   1 file changed, 16 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts b/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
> > index aca01709fd29..e13210c8d7e0 100644
> > --- a/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
> > +++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2.dts
> > @@ -53,6 +53,16 @@ &cmu_disp {
> >   };
> >
> >   &dsi {
> > +     ports {
> > +             port@1 {
> > +                     reg = <1>;
> > +
> > +                     dsi_out_panel: endpoint {
> > +                             remote-endpoint = <&dsi_in_panel>;
> > +                     };
> > +             };
> > +     };
> > +
> >       panel@0 {
> >               compatible = "samsung,s6e3ha2";
> >               reg = <0>;
> > @@ -60,6 +70,12 @@ panel@0 {
> >               vci-supply = <&ldo28_reg>;
> >               reset-gpios = <&gpg0 0 GPIO_ACTIVE_LOW>;
> >               enable-gpios = <&gpf1 5 GPIO_ACTIVE_HIGH>;
> > +
> > +             port {
> > +                     dsi_in_panel: endpoint {
> > +                             remote-endpoint = <&dsi_out_panel>;
> > +                     };
> > +             };
>
>
> As I already wrote in Exynos thread, DSI host has already parent-child
> relation with the panel - DSI host knows well who is connected to it.
> Adding another links between them is redundant and has no value added.
>
> I have already answered in Exynos thread[1] how could you deal with the
> issue, you have.
>
> [1]:
> https://lore.kernel.org/dri-devel/e541c52b-9751-933b-5eac-783dd0ed9056@intel.com/

I have commented on this thread for better understanding. Please have
a look and respond.

Thanks,
Jagan.
