Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 777FE3F71A1
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 11:23:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237508AbhHYJX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 05:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234032AbhHYJX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 05:23:57 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F27EFC0613C1
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 02:23:11 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id m28so5227005lfj.6
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 02:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=771qu+rp6BGafDpnrM7TfmSbulL3Y6LRyi6bHCZ59SE=;
        b=LjVRBD97AoDFirac+tcvdpXdVyFR41dyauVow1TKQLexDAwfhUl93uz5nFPTA5Tgq/
         9ZPcK1dIb8iqHi/R6Vchd9ZiptuDxctvYJvEApP3WVbCCahEfUmIEyoWZErvxs5scDZR
         4lXgAg0RGgXrtKIjf/JudDddln9q7MBefIvOA9ag2i/vJwJrFmtcwEvddNRLy5sy7fYm
         PIFNG9qJ0qETCf4SjltAX3BDDYOfScFt5skEZ0yJFPygs0gHofPaKp+zaevQWeq0szOa
         aq+GLpDi+zu1shjseVAYKbxXL8afhXaskx58mTLtkoxpQ7B3O9mgpoc8rE3tLlQOs3ey
         ckcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=771qu+rp6BGafDpnrM7TfmSbulL3Y6LRyi6bHCZ59SE=;
        b=JW4kBkPVG4zmPVRQ+kvlH5zxgV4DhI23Vd9w4H1GT5Fd23NarlHiyd2G+y3T+raC1Q
         Tt7Q1kY0esEip/8Uyh0niU5kxf8aYQVoftRpKraJPCuUpRhQpcHN962JbBIOrQt1RoRx
         S62ZxpStCreYEZJ6jMPqhgEMO8mYMhHgFRIUe25QCEXgUgO7Ax3ee51QaK5pcpzRx6HY
         l9L0HHGJ8TaqSb3nUdrFBSlt4T3Pj/JV0jeqffmWyAG2AkN+6NQbkKjzcJBabrfPMIU1
         1f2O62iwotHHAzKX6rXx5OPuUOMC8cGRfEFC2jou1n3uS4LXWzFESvxyz0T9rqDbG60L
         qWPw==
X-Gm-Message-State: AOAM531EltC4mlWw7enNh3qMAhD29HL32SBBqSgVBTrSJ06F+sCQopJY
        ufQxpHeO31UBL3GIINv5DTCHeQSCJF94/rzpd7724w==
X-Google-Smtp-Source: ABdhPJwYvcNUxeodfv8be5srORL/NbwXKV09h1a6yC3RGliZE4vRHmh+2BPUYpsRAlrLL+O+DDViBQwverphTfXiW6I=
X-Received: by 2002:a05:6512:318e:: with SMTP id i14mr32916390lfe.113.1629883390286;
 Wed, 25 Aug 2021 02:23:10 -0700 (PDT)
MIME-Version: 1.0
References: <1629117508-4886-1-git-send-email-haibo.chen@nxp.com>
 <CAPDyKFr2z6t0uefxioLHaszvwrc9Pkf1OJDi=jozjpEZcKP5ng@mail.gmail.com> <VI1PR04MB5294D4EE6173C4897ABF496090C69@VI1PR04MB5294.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB5294D4EE6173C4897ABF496090C69@VI1PR04MB5294.eurprd04.prod.outlook.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 25 Aug 2021 11:22:33 +0200
Message-ID: <CAPDyKFrA929iRMdZMmA1qYcYtufRzahcP7uc3Vwsw1C1MGeTJA@mail.gmail.com>
Subject: Re: [PATCH 1/6] mmc: sdhci-esdhc-imx: remove redundant code for
 manual tuning
To:     Bough Chen <haibo.chen@nxp.com>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 25 Aug 2021 at 04:16, Bough Chen <haibo.chen@nxp.com> wrote:
>
> > -----Original Message-----
> > From: Ulf Hansson [mailto:ulf.hansson@linaro.org]
> > Sent: 2021=E5=B9=B48=E6=9C=8824=E6=97=A5 21:53
> > To: Bough Chen <haibo.chen@nxp.com>
> > Cc: Adrian Hunter <adrian.hunter@intel.com>; Shawn Guo
> > <shawnguo@kernel.org>; Rob Herring <robh+dt@kernel.org>; Sascha Hauer
> > <s.hauer@pengutronix.de>; Sascha Hauer <kernel@pengutronix.de>; Fabio
> > Estevam <festevam@gmail.com>; linux-mmc <linux-mmc@vger.kernel.org>;
> > dl-linux-imx <linux-imx@nxp.com>; DTML <devicetree@vger.kernel.org>; Li=
nux
> > ARM <linux-arm-kernel@lists.infradead.org>
> > Subject: Re: [PATCH 1/6] mmc: sdhci-esdhc-imx: remove redundant code fo=
r
> > manual tuning
> >
> > On Mon, 16 Aug 2021 at 15:00, <haibo.chen@nxp.com> wrote:
> > >
> > > From: Haibo Chen <haibo.chen@nxp.com>
> > >
> > > For manual tuning method, already call esdhc_prepare_tuning() config
> > > the necessary registers, so remove the redundant code in
> > > esdhc_writew_le() for SDHCI_HOST_CONTROL2.
> > >
> > > Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> >
> > While discussions on the DT binding, etc, continue with Lucas and Rob o=
n patch
> > 3 - do you want me to apply patch1 and patch2?
>
> Yes, thanks!
> Let's wait comments for patch 3.

Alright, patch1 and pacth2 applied for next, thanks!

[...]

Kind regards
Uffe
