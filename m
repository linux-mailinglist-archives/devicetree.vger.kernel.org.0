Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFE9A2F447E
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 07:25:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725747AbhAMGZH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 01:25:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725681AbhAMGZH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 01:25:07 -0500
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7698C061575
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 22:24:26 -0800 (PST)
Received: by mail-io1-xd31.google.com with SMTP id u17so2037111iow.1
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 22:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r+rZiUxa75DfhWXq44OmQ1F4tGpkEw8ORSHsmTicRcE=;
        b=JFiM8RG8XSRrW3ab5ySv6OUatFOSMbi4lIYeEvkiXzdyt0r1apGzkX8fgX4vLhsLI8
         33ZsFUslMW96hwjMxILosImy5w7xdCSmtqPtrH8ttZNXNAYGOOgyrnGD5RVHvGyLrrrQ
         yp+8Sva32JoVhQkBmqKTqKjRH0WUyfDxTosVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r+rZiUxa75DfhWXq44OmQ1F4tGpkEw8ORSHsmTicRcE=;
        b=KpyLiXb16OVKkdAZmd7ZSAnct1IA/G1F8dELjutQTojo658PjaOrWHlIWFZmqaGWyA
         PuAFWRHHQale9p6JdKviFubqODVR8B1JKkHQHnRBzvlVYMG+YeEVSuaW7YiYLZwqvway
         dVwZJ/pnXBzBQ2lU1DkpIYf2sxv5jGLmPMHhP+PRpizibtES9hLX2V6eICB7pouWoDLr
         4VQ4rMqkF7p1XyAwlVhOLa+mjoVCxt/xNp0hpUHNvw0nlY6t5k4Tzxth9cNCuFbZmb7q
         06rvi+QFuq1oaS1hKZAxc5CMkMClwR88TD/ayf8S01YMfBnBM0YW4kuaOEbKLX4UyEDU
         rrvg==
X-Gm-Message-State: AOAM531E78AVPSXeruXKxxHg/wgHp8X+yURdRWHYQeNhsD6k3e8AX+iB
        QwRKQLTl7i5MKcxDO3WTLoHfQD7eUZSLC1qERCpMSg==
X-Google-Smtp-Source: ABdhPJzuXlWioU2zuqVGBTa282fKGBg3oC954Gq+TfvFlg9O3kQD3IBPji7bWo5ogwmPozPDO873J/3usf8A4vnbL1A=
X-Received: by 2002:a6b:f810:: with SMTP id o16mr621066ioh.20.1610519066015;
 Tue, 12 Jan 2021 22:24:26 -0800 (PST)
MIME-Version: 1.0
References: <20210107052206.2599844-1-hsinyi@chromium.org> <20210107052206.2599844-2-hsinyi@chromium.org>
 <20210113032031.GA1460993@robh.at.kernel.org>
In-Reply-To: <20210113032031.GA1460993@robh.at.kernel.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 13 Jan 2021 14:23:59 +0800
Message-ID: <CAJMQK-hCm05S6QCWz6i-vuJKj8GKcaQFYPBYYAd4B8NBL8q5Yw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: mt8183: Add krane-sku0 board.
To:     Rob Herring <robh@kernel.org>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 11:20 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Jan 07, 2021 at 01:22:06PM +0800, Hsin-Yi Wang wrote:
> > Similar to krane-sku176 but using a different panel source.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> > Change:
> > v2: move compatible to board dts
> > ---
> >  .../devicetree/bindings/arm/mediatek.yaml     |  1 +
> >  arch/arm64/boot/dts/mediatek/Makefile         |  1 +
> >  .../dts/mediatek/mt8183-kukui-krane-sku0.dts  | 23 +++++++++++++++++++
> >  3 files changed, 25 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane-sku0.dts
> >
> > diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > index 53f0d4e3ea982..3276f7a2ce672 100644
> > --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> > +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> > @@ -120,6 +120,7 @@ properties:
> >            - const: mediatek,mt8183
> >        - description: Google Krane (Lenovo IdeaPad Duet, 10e,...)
> >          items:
> > +          - const: google,krane-sku0
> >            - const: google,krane-sku176
> >            - const: google,krane
> >            - const: mediatek,mt8183
>
> This says you must have all 4 compatible strings in the order listed.
> That doesn't match your dts. I assume you want the first 2 under an
> 'enum' so there's 3 strings with the first one being sku0 or sku176?
>
Right. I'll fix in the next version. Thanks
> Rob
