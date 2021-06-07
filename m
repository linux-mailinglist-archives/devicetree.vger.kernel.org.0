Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF56639D79C
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:42:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbhFGIot (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:44:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230128AbhFGIos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 04:44:48 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C289BC061787
        for <devicetree@vger.kernel.org>; Mon,  7 Jun 2021 01:42:57 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id f17so9479016wmf.2
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 01:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:content-transfer-encoding:date:message-id:cc:subject
         :from:to:references:in-reply-to;
        bh=uz3iCJoGCASuGnUgIOriS8tvjMim1bZzW1X2pHH2F8Y=;
        b=ymHd2q9qOC5Ml22HN3G35SupreyNnxzovCyPGGvh3LdBVswyQ2nVU5kJmEKFIlXX66
         iJzydEsHzbB8HvIC8xv52CqyxhWRt+Y3ScgQe4w5P8bAI50b89RCyHqcSTAgbtB+vht7
         u5EANksi0t1QWn59y3s8XaoUMvu88GDoyC+/CpwoA6tV+/6OANS9ujYAzuYSnxNK2/SY
         KfZrJqkIvs6QMcPlAqrccCV7XXgCgkSW/75D3jpMnqEkwBpB3BDMKsS7p4g/vw7DvxPN
         kVZ5QrcAVEwPv2fbc6Zd9tElPdLHIGflfRwJVWTpq1Uxh1f/+SBkl+2SWKMqkc2dFSwb
         TWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding:date
         :message-id:cc:subject:from:to:references:in-reply-to;
        bh=uz3iCJoGCASuGnUgIOriS8tvjMim1bZzW1X2pHH2F8Y=;
        b=P/oH8j3MktNu7UJODYYT0mbaIQAmvjnraC+G8QygceAjSnG9xpAgn/HSjSFMCpaiSq
         dnT7qHWXnQcFudQFRTeNKh6r40KvlTDUvCuHmqkNzb+RwZs/1T58w0cAQlD16T0fDHjD
         GS16+QUkwAVx9r7GzSequBTENOvQRLPwSyeYTOBl2ecDfptMPYY9P/3kdKaa7ZKoxERE
         KACCcgrRK7qKr39XxxJiHSFqFKTSSftVLXmpaH844OmDrjkpblI5VRgkyFc+20txCz8e
         7W9aEzRGufgRf0ECEymxvVDBB35VHO82dZDpNcy/52tA2LGRMu8S7QGq+CgQGO2f2Bt1
         l8yw==
X-Gm-Message-State: AOAM530LZHNaCRA9tNKo+OSfWzxxtzqCnaNf2os3UE2H+x+0iCO9NW3e
        sGvqhTq4TJ0euoQyZEIz9sbvI0/osw02IA==
X-Google-Smtp-Source: ABdhPJxpJwgpScmOpFMm99pEZVpRAleB+5zv3yIDsGDPqaQfjsBHN1SVG18+Pf/uwLwkCIzQOQafbw==
X-Received: by 2002:a05:600c:4106:: with SMTP id j6mr15859730wmi.76.1623055376423;
        Mon, 07 Jun 2021 01:42:56 -0700 (PDT)
Received: from localhost (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id g17sm568624wrh.72.2021.06.07.01.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 01:42:56 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Mon, 07 Jun 2021 09:42:55 +0100
Message-Id: <CBX941ZTOGHZ.24P9HPL4QNRYS@arch-thunder>
Cc:     "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
        "Sebastian Siewior" <bigeasy@linutronix.de>,
        "Rob Herring" <robh+dt@kernel.org>, <linux-usb@vger.kernel.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 0/9] usb: isp1760: extend support for isp1763
From:   "Rui Miguel Silva" <rui.silva@linaro.org>
To:     "Laurent Pinchart" <laurent.pinchart@ideasonboard.com>
References: <20210513084717.2487366-1-rui.silva@linaro.org>
 <YL1Rwj6BJG5dfpK8@pendragon.ideasonboard.com>
In-Reply-To: <YL1Rwj6BJG5dfpK8@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,
On Sun Jun 6, 2021 at 11:52 PM WEST, Laurent Pinchart wrote:

> Hi Rui,
>
> I'm afraid I won't have time to review this in the near future, so feel
> free to get it merged without my tags.

Ok, thanks, I think Greg already put them is the usb-next, BUT I would
like to ask you to take 2 min. to reply to this [0] MAINTAINERS entry.

Thanks in advance,
------
Cheers,
     Rui

[0]: https://lore.kernel.org/linux-usb/20210607083921.38441-1-rui.silva@lin=
aro.org/T/#u

>
> On Thu, May 13, 2021 at 09:47:08AM +0100, Rui Miguel Silva wrote:
> > The Arm MPS3 FPGA prototyping board [0] have an isp1763 [1] as USB
> > controller.  There is already support for the isp1760 and isp1761 in
> > tree, this series extend the support also for the isp1763.
> >=20
> > Move register access using regmap, remove some platform data and code,
> > refactor the mempool, use dr_mode to align to existing bindings, then
> > add the support for isp1763 host mode, add bindings files that did not
> > existed and at the end add also support for peripheral mode for
> > isp1763.
> >=20
> > @Laurent and @Sebastian, I add both of you in the bindings files as
> > maintainers (it is a mandatory field)since you were the ones which
> > contributed with the initial code and peripheral code, let me know if
> > you are ok with it.  If yes I may send a follow up to add also entries
> > in MAINTAINERS file that it is also missing.
> >=20
> > v3 [4] -> v4:
> > Rob Herring (bindings):
> > - add device controller interrupt
> > - correct additionalProperties field
> >=20
> > v2 [3] -> v3:
> > kernel test bot:
> > - add select REGMAP_MMIO
> >=20
> > v1 [2] -> v2:
> >=20
> > kernel test robot:
> > - add two patches (1/9 and 3/9) to fix dozens of pre-existing sparse
> >   warnings so that this series does not introduce new ones.
> >   No sparse warning left.
> > - fix duplication of regmap fields
> >=20
> > Laurent:
> > - move initializers from .h to .c
> > - change interrupt registers setup from field to one shot register
> >   setting (did not change hcd hw mode init because I think it did not
> >   make the difference and even avoid artifact around setting twice the
> >   register)
> >=20
> > Rob test bot:
> > - fix suffix at compatible string to clean up warning in bindings
> >=20
> > Cheers,
> >    Rui
> >=20
> > [0]: https://developer.arm.com/tools-and-software/development-boards/fp=
ga-prototyping-boards/mps3
> > [1]: https://media.digikey.com/pdf/Data%20Sheets/ST%20Ericsson%20PDFs/I=
SP1763A.pdf
> > [2]: https://lore.kernel.org/linux-devicetree/20210504101910.18619-1-ru=
i.silva@linaro.org/
> > [3]: https://lore.kernel.org/linux-usb/20210511085101.2081399-1-rui.sil=
va@linaro.org/
> > [4]: https://lore.kernel.org/linux-usb/20210512090529.2283637-1-rui.sil=
va@linaro.org/
> >=20
> > Rui Miguel Silva (9):
> >   usb: isp1760: fix strict typechecking
> >   usb: isp1760: move to regmap for register access
> >   usb: isp1760: use relaxed primitives
> >   usb: isp1760: remove platform data struct and code
> >   usb: isp1760: hcd: refactor mempool config and setup
> >   usb: isp1760: use dr_mode binding
> >   usb: isp1760: add support for isp1763
> >   dt-bindings: usb: nxp,isp1760: add bindings
> >   usb: isp1763: add peripheral mode
> >=20
> >  .../devicetree/bindings/usb/nxp,isp1760.yaml  |   69 ++
> >  arch/arm/boot/dts/arm-realview-eb.dtsi        |    2 +-
> >  arch/arm/boot/dts/arm-realview-pb1176.dts     |    2 +-
> >  arch/arm/boot/dts/arm-realview-pb11mp.dts     |    2 +-
> >  arch/arm/boot/dts/arm-realview-pbx.dtsi       |    2 +-
> >  arch/arm/boot/dts/vexpress-v2m-rs1.dtsi       |    2 +-
> >  arch/arm/boot/dts/vexpress-v2m.dtsi           |    2 +-
> >  drivers/usb/isp1760/Kconfig                   |    5 +-
> >  drivers/usb/isp1760/isp1760-core.c            |  513 ++++++++-
> >  drivers/usb/isp1760/isp1760-core.h            |   44 +-
> >  drivers/usb/isp1760/isp1760-hcd.c             | 1021 ++++++++++++-----
> >  drivers/usb/isp1760/isp1760-hcd.h             |   57 +-
> >  drivers/usb/isp1760/isp1760-if.c              |   41 +-
> >  drivers/usb/isp1760/isp1760-regs.h            |  435 ++++---
> >  drivers/usb/isp1760/isp1760-udc.c             |  250 ++--
> >  drivers/usb/isp1760/isp1760-udc.h             |   13 +-
> >  include/linux/usb/isp1760.h                   |   19 -
> >  17 files changed, 1769 insertions(+), 710 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/usb/nxp,isp1760.y=
aml
> >  delete mode 100644 include/linux/usb/isp1760.h
>
> --=20
> Regards,
>
> Laurent Pinchart



