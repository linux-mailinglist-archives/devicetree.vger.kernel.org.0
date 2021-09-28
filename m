Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4AED41A4F8
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 03:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238493AbhI1BxV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 21:53:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238482AbhI1BxU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 21:53:20 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458E4C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 18:51:42 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id b82so27483831ybg.1
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 18:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fCkVRX97AO58vMSzB6rxBPstvtvKySLspcCyTvRfATY=;
        b=Ulj5PK+zka/euanCaQqe3SYCQRdXYFX5Dx+Tn9DSqALUJqoAK2kSt6KM301PJe0z1a
         6xt5HR00yOsSXkXOsRdTtWd+9Qet2FNvdii7hOhvURR0/RPtVdHDqdZYxgRXEJfQUrQk
         xr0c52WaJMoxw+SJxJjzTZBl96TsF24866EtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fCkVRX97AO58vMSzB6rxBPstvtvKySLspcCyTvRfATY=;
        b=cuUBmc4Yq3JAUD+rIvBKbJFU4bpEdFAePduAuleSZ6OTRbaO27uIzVy3XCxH4i6xST
         RvWCLvXlmSdVsZQq526s/XIV7XMhjDypv0CW7D1n0R6Eqct8EiL+AD2UsHMOMJ13WLj5
         TazbV69eZP4mhkWGL4yRd8vsgK/q7lpO4D+eBSY//Co/cJnEi8BvU3OJI1Yxot9He9Q+
         qezFNAnmhcYMtuDiwMvuin7ZXBbRM8hPqSnmTTDr6PWqlvMw/vWJ8WcwoRDS6Q7VB1tv
         1Xr8Rawfv7htL1+a2ZQN1XN7HFkhPq1rguPGtyq80gRmi30WzaxYK44WAb+Q1pYafgW+
         oLVg==
X-Gm-Message-State: AOAM531gcXo4ePMSFJYuPg+JPZpHu/ZGR5Iln/9L6HbLKMa9Sn/JVbca
        pbIACznbCC6u2ypMkiWkw2q2d0Qvkv20SsE4OIbTow==
X-Google-Smtp-Source: ABdhPJzGaNVhLfeD2+RwSw09ku1RC+tEo5n8XvZzZjMOU+SYxBtB+Aa3wU/1bYnRVWeVvwXzdgdQqd0PR5gb9LVn9A0=
X-Received: by 2002:a25:2610:: with SMTP id m16mr3425680ybm.508.1632793901622;
 Mon, 27 Sep 2021 18:51:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210924165322.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
 <CAE-0n53uBf-qbPptg-=9TX3=FGG4PvtVARfipxriJRE6cdWt4A@mail.gmail.com>
In-Reply-To: <CAE-0n53uBf-qbPptg-=9TX3=FGG4PvtVARfipxriJRE6cdWt4A@mail.gmail.com>
From:   Philip Chen <philipchen@chromium.org>
Date:   Mon, 27 Sep 2021 18:51:31 -0700
Message-ID: <CA+cxXh=Mq8akELw4N8reZ7iBrEZ=Yzw=Yc_J+EVC8eF18eZveQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sc7180: Factor out ti-sn65dsi86 support
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

Hi

On Mon, Sep 27, 2021 at 12:59 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Philip Chen (2021-09-24 16:54:13)
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
> > new file mode 100644
> > index 000000000000..7b1034a5a8e9
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
> > @@ -0,0 +1,87 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Google Trogdor dts fragment for the boards with TI sn65dsi86 edp bridge
> > + *
> > + * Copyright 2021 Google LLC.
> > + */
> > +
> > +&dsi0_out {
> > +       remote-endpoint = <&sn65dsi86_in>;
> > +       data-lanes = <0 1 2 3>;
> > +};
> > +
> > +&edp_brij_i2c {
> > +       sn65dsi86_bridge: bridge@2d {
> > +               compatible = "ti,sn65dsi86";
> > +               reg = <0x2d>;
> > +               pinctrl-names = "default";
> > +               pinctrl-0 = <&edp_brij_en>, <&edp_brij_irq>;
>
> Why not move edp_brij_en as well? I think you want to reuse the node
> name for the other bridge, but it doesn't make sense unless that other
> patch is part of this series.

Yes, I posted v2 with the other patch enabling the second source edp bridge.

>
> > +               gpio-controller;
> > +               #gpio-cells = <2>;
> > +
> > +               interrupt-parent = <&tlmm>;
> > +               interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +               enable-gpios = <&tlmm 104 GPIO_ACTIVE_HIGH>;
