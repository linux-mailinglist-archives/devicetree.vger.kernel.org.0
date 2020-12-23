Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4545F2E1C11
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 13:07:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728413AbgLWMHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 07:07:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728367AbgLWMHm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 07:07:42 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDAD4C0613D6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 04:07:01 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id b9so22583480ejy.0
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 04:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hjKQjuQoKD2q9gzo/lVA/yHzN3PsEkizr5B2xb2YIp4=;
        b=Om+TVYSLlUSRd9v/7enNjZ+qvVI7YBMFg2+Otq0uvS0ALs3h6MeZbZAmajWOdNmnb0
         CMAF1/L24nYQqpCVtx0bvEGBnhas0AAP3muts724MexC4LfmU+1zvBsrH/NP0CGXwew5
         1rFNC1+/aelZ9qP5qb5qkrfG5qUBr6VF67XKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hjKQjuQoKD2q9gzo/lVA/yHzN3PsEkizr5B2xb2YIp4=;
        b=uaNmoLDkBmfHAJOsZSIto9lfFFi8XFFWb0HAJ+lpTRKOvoDKpFMI6Wgu4XD37O2AWV
         UQ2nRIe+2TaIS1xIvWVA8Npj75mXGUG7I10CGyb2PdycAvcDJWtTrli+URTyobg9WXWZ
         bjRl10IZeExPlRBhQaCGKjw+3IO4C+Sj2athiI16f/6TyLcvXTfk8XB6Wd6zt+uWoRu+
         A3bMBZ7889WdEGbxT+Mv0Mt0nbWQPJ9r5M/kqmxEXDGuiW12ypp2MvCKVQv7+SlbvUQn
         9CxYQy378pvx8hv/e3YphhmZgjzQPt5JUxrbY5EPDIT6pnx1Pm7sHXShv1QW13x4Rpiq
         UhyQ==
X-Gm-Message-State: AOAM531f26KknksySKGoDwUHJGJ8nGFzAe5eyWweHAIvDfVx2G+uUDGy
        XbaHEoemC62JSnW9gxEeUlbgxhIY+snazs0A2CJbhg==
X-Google-Smtp-Source: ABdhPJzx4HRDP+pH7MueBvvBYlfjpuVLflUi0cShbm5TTZfT7h0hDzahuGKg+YA5nPb/AjSKWikuUMRENBNsrYwQoaY=
X-Received: by 2002:a17:906:1c92:: with SMTP id g18mr17024396ejh.522.1608725220384;
 Wed, 23 Dec 2020 04:07:00 -0800 (PST)
MIME-Version: 1.0
References: <20201223110343.126638-1-jagan@amarulasolutions.com>
 <20201223110343.126638-5-jagan@amarulasolutions.com> <20201223115933.GC21091@kozik-lap>
In-Reply-To: <20201223115933.GC21091@kozik-lap>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 23 Dec 2020 17:36:49 +0530
Message-ID: <CAMty3ZA0zrHS_wVKm8gdqU1q5ONokoT7aG_MBcWtXTJK59Bozg@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini
 C.TOUCH 2.0
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Matteo Lisi <matteo.lisi@engicam.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 23, 2020 at 5:29 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Wed, Dec 23, 2020 at 04:33:41PM +0530, Jagan Teki wrote:
> > Engicam C.TOUCH 2.0 is an EDIMM compliant general purpose Carrier
> > board.
> >
> > Genaral features:
> > - Ethernet 10/100
> > - Wifi/BT
> > - USB Type A/OTG
> > - Audio Out
> > - CAN
> > - LVDS panel connector
> >
> > i.Core MX8M Mini is an EDIMM SoM based on NXP i.MX8M Mini from Engicam.
> >
> > i.Core MX8M Mini needs to mount on top of this Carrier board for
> > creating complete i.Core MX8M Mini C.TOUCH 2.0 board.
> >
> > Add support for it.
> >
> > Signed-off-by: Matteo Lisi <matteo.lisi@engicam.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v3:
> > - don't maintain common nodes and include it, if no feature diff
> > Changes for v2:
> > - enabled fec1 node
> > - updated commit message
> > - dropped engicam from filename since it aligned with imx6 engicam
> >   dts files naming conventions.
> > - add i2c nodes
> > - fixed v1 comments
> >
> >  arch/arm64/boot/dts/freescale/Makefile        |  1 +
> >  .../dts/freescale/imx8mm-engicam-ctouch2.dtsi | 82 +++++++++++++++++++
> >  .../freescale/imx8mm-icore-mx8mm-ctouch2.dts  | 21 +++++
> >  3 files changed, 104 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-ctouch2.dtsi
>
> You split some common part to ctouch2.dtsi so it can be reused in
> multiple places. I saw so far only one usage, where are the others?

To be clear, ctouch2.dtsi not mean for common it is C.TOUCH2 carrier
board dtsi. The other carrier is C.TOUCH2 10.1" Open Frame(display),
since DSI is not yet mainlined, I didn't add this yet.

Jagan.
