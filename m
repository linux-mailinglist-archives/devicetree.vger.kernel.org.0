Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC6A1298D7
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2019 17:44:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726756AbfLWQos (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Dec 2019 11:44:48 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43040 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726754AbfLWQor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Dec 2019 11:44:47 -0500
Received: by mail-wr1-f67.google.com with SMTP id d16so17202499wre.10
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2019 08:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xz4QttoGSZMNzHsoQ2oRSp3hgFmNlArUTi27jCKVI2E=;
        b=hc43iZkjfH0OUTYKjWomh+9SENA1fOyHO9Hd+ZYCvOrhmiHkVFDvEqpg6Uvkwieozz
         TqMNEWevj+8aVqSxYDK+PjblNx6uAC1ZscAuU0A3eSb8Qq2IkDFt34MXMOmiynH0Dh80
         gH5I86szOUlV53ssgoBoE2Nnj6CHusAh8eV/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xz4QttoGSZMNzHsoQ2oRSp3hgFmNlArUTi27jCKVI2E=;
        b=rITCS9diodMJyV7YHrviogMHgEGO6yye+znk/XB+7fEL3Ihfw+XvMA8s7HHYZHStet
         o3gzTXjGhlQIaqQ1B6oIq2vlaybYXid/rWypf/jkpnO2XRCGwV6XTfz0st5S5ahpdilE
         tFhzMoz9fBN0bKl5O3KKpoO7QGdpE9XExkH3HshOeKKUqgZq5LNy31R8JSKttyp4Aocn
         9jgTDKWqNebyqsFLGI4eb9AsaZtSCOJRrLxGPDEBPPEMahW27Vvs/eSrUsi9KLinYKsP
         MQvdoYgeEc+ban+pNDPIOQL8yPyada47Hs9uZD+lTdzLP9ymFl/whUBPotXlFq46ddnw
         9ypg==
X-Gm-Message-State: APjAAAXAf6IB/L+4evr5FPPNMMvlvbEkpjRx0NM0leOK3uZP3HWPf7Hu
        Iitha06Wr65qqRTyfs1HS0WJ7uBHOVYLKKzR/LpOsg==
X-Google-Smtp-Source: APXvYqzjY5Ndxdkg90YTTgT83bomZvha4HtdaAVrcqNGOwiJ5sZ1UY0BVyKQt2vKuUjueRbYrq6Cu1T+lJ4Xqse+S0A=
X-Received: by 2002:adf:fe4d:: with SMTP id m13mr28408842wrs.179.1577119485955;
 Mon, 23 Dec 2019 08:44:45 -0800 (PST)
MIME-Version: 1.0
References: <20191223163546.29637-1-michael@amarulasolutions.com>
 <20191223163546.29637-2-michael@amarulasolutions.com> <CAOMZO5CzZvDSEkYcz3LzMCnLp8ZW7zNBd18LkKZWtbh0PMQvdg@mail.gmail.com>
In-Reply-To: <CAOMZO5CzZvDSEkYcz3LzMCnLp8ZW7zNBd18LkKZWtbh0PMQvdg@mail.gmail.com>
From:   Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date:   Mon, 23 Dec 2019 17:44:34 +0100
Message-ID: <CAOf5uw=aRpyJPRB5kv8iGv1TkPQH_vMRSy0UoA6POWgsUiechA@mail.gmail.com>
Subject: Re: [PATCH 1/3] ARM: dts: imx6dl: Fix typo in i.CoreM6 1.5 Dual MIPI
 starter kit
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

On Mon, Dec 23, 2019 at 5:43 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Michael,
>
> On Mon, Dec 23, 2019 at 1:35 PM Michael Trimarchi
> <michael@amarulasolutions.com> wrote:
> >
> > Fix the file to be included in dual mipi starter kit. This
> > fix ethernet probing
> >
> > Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> > ---
> >  arch/arm/boot/dts/imx6dl-icore-mipi.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/imx6dl-icore-mipi.dts b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
> > index e43bccb78ab2..d8f3821a0ffd 100644
> > --- a/arch/arm/boot/dts/imx6dl-icore-mipi.dts
> > +++ b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
> > @@ -8,7 +8,7 @@
> >  /dts-v1/;
> >
> >  #include "imx6dl.dtsi"
> > -#include "imx6qdl-icore.dtsi"
> > +#include "imx6qdl-icore-1.5.dtsi"
>
> Jagan submitted the same fix today:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-December/701895.html

Sorry, was not in copy. He said to me but I was not aware about one of my queue

Michael
