Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA6613131CF
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 13:08:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233109AbhBHMID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 07:08:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233572AbhBHMG2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 07:06:28 -0500
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com [IPv6:2607:f8b0:4864:20::92c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C653C061786
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 04:05:48 -0800 (PST)
Received: by mail-ua1-x92c.google.com with SMTP id c44so2595292uad.12
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 04:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QZWBJIaZ/bsVP6p7XHOvoxdJcCLoPklYQ4/+m3orfc4=;
        b=ZQCT0vdtAH18I54cmEsV7LzEgSzw9x7c4g7nvwzJL635j04pCobWhbKJOmCOiqN6r+
         5IkXAW8bGhbfC93gnmBHVgGR87pJ6HRwAa1IDLcZKt1Yqdr58G+VWlMgcoevYFCQquBw
         seer1lf9o+PtoGAZrIBT5QkB1awbktnaAuGJevTXBHBkyNvWitEHL8eSa5Vf8JJ1drVf
         Mw+g6Hg+zfhAPvbAJKEFMJppA9Vz3NcLyLueIlCcKFVOU/RunduQQ8lj1XD8s7xnpiJT
         r4l+03hhnI5FUihva78gdtAaat0pNPztOjdMYftJcbX6TtqwL1jrOz+spgRGcEzlPryj
         /cng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QZWBJIaZ/bsVP6p7XHOvoxdJcCLoPklYQ4/+m3orfc4=;
        b=O7A8APP0lQu/YGbOTTcLPAPu28VsexYX6E6vCAAM4vB0yr4Rp/DqY+yzo60j3lusYy
         P0+6f0TYN7hYdGi1/DZrFXQ+AaTmN/BjXCwfmo8ZLccyKYjzOttnjsoygHwmW3UVaDdJ
         DnhX/8oNmyUaCCARKNZdqdt85+CrLQWfdy4FbS9cX9UsHyl6aZuDaFzhX2JnxxYdxQqI
         YShylDgjl1wXt4/6qGkZWnFMdbdMEVRKgvyOKoKqcYcAXLuGZSJOuTQzSCYGTBAboIOA
         19MO8L55/3O2oyiUz4qBugF7YjwM/hrAKnIxGnc1GXC6iaHL2rdbVWpeumHzbQrpDOnf
         dTCg==
X-Gm-Message-State: AOAM532FvqoGdA6ysd4Lxqtv9UYo5EJ8HSu71VpehBZujvjbOmF+h02I
        aCOpAHsO2rYIf6pN7z60Kx34E9ROkpihM51UM8gBHg==
X-Google-Smtp-Source: ABdhPJwVrctWDibuLobFdPmbjaCLg1dsBCnjJJtNeM+WcG1vzq5+3yOxb/KoilqBgxHQtxtYVgdzhzPKRVER66jAF9Y=
X-Received: by 2002:ab0:2e8d:: with SMTP id f13mr9556269uaa.15.1612785946923;
 Mon, 08 Feb 2021 04:05:46 -0800 (PST)
MIME-Version: 1.0
References: <1611198593-16287-1-git-send-email-peng.fan@nxp.com> <DB6PR0402MB2760CA4A3D7DC4D5D6C3D81A88B09@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB2760CA4A3D7DC4D5D6C3D81A88B09@DB6PR0402MB2760.eurprd04.prod.outlook.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 8 Feb 2021 13:05:10 +0100
Message-ID: <CAPDyKFpWqVAzUwH_TEX7jyTFjZk3S4_9rBpSsdkghTfisSL7HA@mail.gmail.com>
Subject: Re: [PATCH V2 0/4] imx esdhc dt/driver update
To:     Peng Fan <peng.fan@nxp.com>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 7 Feb 2021 at 14:10, Peng Fan <peng.fan@nxp.com> wrote:
>
> > Subject: [PATCH V2 0/4] imx esdhc dt/driver update
>
> Gentle ping..

I was expecting a new version from you to address the comment on the
DT bindings from Rob.

Otherwise this looks good to me.

Kind regards
Uffe

>
> Thanks,
> Peng.
>
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Patch V2:
> >  patch 1, 2, 3 is new
> >  patch 4 is not changed
> >
> > Peng Fan (4):
> >   dt-bindings: mmc: fsl-imx-esdhc: add pinctrl bindings
> >   dt-bindings: mmc: fsl-imx-esdhc: add clock bindings
> >   arm64: dts: imx8qxp: correct usdhc clock-names sequence
> >   mmc: sdhci-esdhc-imx: validate pinctrl before use it
> >
> >  .../bindings/mmc/fsl-imx-esdhc.yaml           | 36
> > +++++++++++++++++++
> >  arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 18 +++++-----
> >  drivers/mmc/host/sdhci-esdhc-imx.c            |  2 +-
> >  3 files changed, 46 insertions(+), 10 deletions(-)
> >
> > --
> > 2.28.0
>
