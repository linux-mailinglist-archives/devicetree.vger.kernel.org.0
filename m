Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B56B2E3538
	for <lists+devicetree@lfdr.de>; Mon, 28 Dec 2020 09:45:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726462AbgL1Ipc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Dec 2020 03:45:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726282AbgL1Ipc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Dec 2020 03:45:32 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0405EC061794
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 00:44:49 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id ce23so13278927ejb.8
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 00:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ppXu0qV4C54uI/fuy6D+G5bxDztbKunvaXhWrsDm5jA=;
        b=MVNsb34DoioU+GZLKWnbbTanHXUVLEp2UFgx+Y9LtRUauDXqjv55yzRxdLQ0HiY0au
         AHEB1Qv6P7i5Ph/Tg93PD7hvxNV8K9iVtofT5P4yiM06O5xA6PbyDmUYg1RP5ynGwDwb
         WDhWG2ZL0DiMbJgpqetw8N9hf9+rxZXWYz570=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ppXu0qV4C54uI/fuy6D+G5bxDztbKunvaXhWrsDm5jA=;
        b=lBomr/ZCeS/BQvec1AcKen1CxJl8ae6Vr4Yx9PYeP2HQMC+bZIBNg7XZjwkKw29Qhg
         yfEZI7g/2UB7JVSzyWajYOTphxOFmMiuAoIgP9I1VBBcaVvRXGnceTk78GNj3mTYy0oB
         uYvfWeKkRbHC8UVOrqzf9LoqZT50U0l+Avh+qCZKJ50UsoxIvT5Zhj8nZNAo1vk4JklX
         ukxmwp9mFBkrIsQroKggDdQmnAC57lNcLauTJMi7HI/qWuf+qlHKeyY9OoU5aX6iCVNF
         0Y5mY/AQUG29VACKAz9TYc/fLNQpBrwTbsxe9rgP4YbF2VUUU867DAIRU+EERgJa5ZZa
         CvsA==
X-Gm-Message-State: AOAM5337ZzfRFusspr/cJ/7mWnCc19lOeN3Hj9qGhk0AQrdPU8HQAUxF
        udiiyuWG//jsiK+J2xgxL9eJvokwfddaPQzJhJH3Kg==
X-Google-Smtp-Source: ABdhPJyCHehA/zup+bEMF6neYLPp/jzGVF3ynfCMew8B2Ml1R0wH0iBvAuLZd9dxxXiAF+oI5mnC4Uw08Xbc4fkNso4=
X-Received: by 2002:a17:906:c310:: with SMTP id s16mr40964548ejz.186.1609145087787;
 Mon, 28 Dec 2020 00:44:47 -0800 (PST)
MIME-Version: 1.0
References: <20201223110343.126638-1-jagan@amarulasolutions.com>
 <20201223110343.126638-5-jagan@amarulasolutions.com> <20201223115933.GC21091@kozik-lap>
 <CAMty3ZA0zrHS_wVKm8gdqU1q5ONokoT7aG_MBcWtXTJK59Bozg@mail.gmail.com>
 <CAJKOXPfNP+6uv6PXmyTCimRd1hrQUbosnY--55yUQh4G4jfZWw@mail.gmail.com>
 <CAMty3ZBWteW2OZMNwFT5hSRegy-AARqqkR7SAz53fDoM3j5Ong@mail.gmail.com>
 <CAJKOXPey8+k7_uT4LLTwo8-UY51+TwUgWhtkPDRW3AD-BCi1Bw@mail.gmail.com>
 <CAMty3ZAo+9L4rtkJgBkimJu4SPv=gycVUFaUYtL_RSAhs7yGWw@mail.gmail.com> <CAJKOXPdwHGmi+2-w4ymCN6D6RbBrfwk0imiHwXHTQ6nXR=x5yA@mail.gmail.com>
In-Reply-To: <CAJKOXPdwHGmi+2-w4ymCN6D6RbBrfwk0imiHwXHTQ6nXR=x5yA@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 28 Dec 2020 14:14:36 +0530
Message-ID: <CAMty3ZDWfxONq77HTH2nRcLHnHOvRDsmsp7nWm7+h3m9yFnxzQ@mail.gmail.com>
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

On Mon, Dec 28, 2020 at 2:04 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, 28 Dec 2020 at 09:21, Jagan Teki <jagan@amarulasolutions.com> wrote:
> > > > #include "imx8mm.dtsi"
> > > > #include "imx8mm-beacon-som.dtsi"
> > > > #include "imx8mm-beacon-baseboard.dtsi"
> > > >
> > > > (SoC dtsi, SoM dtsi, Carrier board dtsi)
> > > >
> > > > > design which makes any sense. We do not create empty DTS files which
> > > > > only include one more DTSI. The contents of
> > > > > imx8mm-engicam-ctouch2.dtsi should be directly in
> > > > > imx8mm-icore-mx8mm-ctouch2.dts. That's the same problem as with v1 -
> > > > > you overcomplicate simple stuff. It really looks like you ignored the
> > > > > comments from v1 in multiple places.
> > > >
> > > > As explained above, the design is pretty much the same as the existing SoM's.
> > > >
> > > > imx8mm-engicam-ctouch2.dtsi is not just a dtsi file where nodes are
> > > > enabled. It has nodes enabled for Carrier board, so keeping nodes
> > > > separately will
> > >
> > > The files represent real devices or their components. So you have a
> > > SOM - a DTSI file. You have a carrier board - a DTS file. That's
> > > simple design which is mostly followed, unless something over
> > > complicated passes the review.
> > >
> > > > 1. More verbose for which IP's are available in the carrier board
> > >
> > > No difference when carrier DTSI is the DTS. Exactly the same.
> > >
> > > > 2. Easy to extend if someone can create another SoM with a similar Carrier.
> > >
> > > Not really, if they include carrier DTSI they need to override a lot.
> > > So usually (including practice - I did it) they *copy* the carrier to
> > > create their own design.
> >
> > But what if the new board has slite change to use exiting carrier like
> > what ctouch2 10" OF. Can we add ctouch2 dtsi as a separate file for
> > this case?
>
> If you submit another DTS using the imx8mm-engicam-ctouch2.dtsi - with
> its own differences of course (not copying other DTS...) - then having
> a DTSI makes sense. In current form, still NAK for all the reasons I
> explained more than once.

Okay, thanks for the review.

Jagan.
