Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2AC287D64
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 22:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730672AbgJHUrf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 16:47:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728761AbgJHUre (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 16:47:34 -0400
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com [IPv6:2607:f8b0:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE156C0613D2
        for <devicetree@vger.kernel.org>; Thu,  8 Oct 2020 13:47:33 -0700 (PDT)
Received: by mail-il1-x142.google.com with SMTP id c5so7123123ilr.9
        for <devicetree@vger.kernel.org>; Thu, 08 Oct 2020 13:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KnX8G5PRxiWgqlPB7EYp/mL8AOiJ9CP0u3s4hJOtns0=;
        b=kThdmf72zLmnN5MNcAiJO1lVJ4tHCr5Ef+gmypu+GeuQzvvB232QzEWyvbYuz88WEY
         PXu1WLcfb2kGJnkS4t/TE+7cvu3VNzEvAdQKyxE0JGjly8HkfWexPl7b3XYxdcRzOBM8
         uuZVIBGMT5z0+TTZbKKOhusez/tD3k8g7mBb3n3qYM4DJbtQdwCtbcveeVI/Zm4FELjM
         bWaraFhc2hql+NpZbGHsklqIKinnm/2KH9O2qTt5/YxxZGTPtj4LQXX6v04fkaN3ZXgr
         4lHjkN8XzcGZk8HZXZAqa2StQBDJKxxH/LvIlZ2TDiirOqRYJKgOVs+YaRO4pZfL+I7C
         O+Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KnX8G5PRxiWgqlPB7EYp/mL8AOiJ9CP0u3s4hJOtns0=;
        b=lbF2vVoGbfJg6+EtqxR0mIdYgFrNCWWaQqdgg8WAIIBzKFWdKeL2WoqCK0vbWx+Cmn
         himU5+X+JLdpkItRtqQrO82Yt40V9qvTx+B3g3JuJ7/3zoy8mPVnBwcxVy5n5BW1U0WU
         hV9rGc/f8g8fDTZQeMj1PE0O+gILTubYcXZ/PY1muBZz+pHA9LjwyOewQd8Udsqc2gjo
         MEZIMvclNZ5Xw5tLnHnRd+jEEOAZ13uA403wMFcaVc3XSxxkg8GKUY/QR9hEx3Xlv1xp
         Y5W1AS4IxEoYjbGALfUI9e1yxqbUmIEjukjHSD8LtcI0lBtHvHkk3qHBMYHgSDNWb7xD
         L9hg==
X-Gm-Message-State: AOAM530la9MFmSnwsVbVHiUTC8Aw/KFPKkWfB9C92QvbazhisuI4RkYJ
        pI6B7o31V288CQ3QXlZn6ZCZTIXa+fMlabAfzFk=
X-Google-Smtp-Source: ABdhPJyV62mY2WKYYurUXovhPsN1lmTLzYrDhzLDcJrnnmfrL7MNlPVx5/dC15vKkH7WVCouWl3TEwmuVE7kNlYm1eU=
X-Received: by 2002:a92:8545:: with SMTP id f66mr8456918ilh.46.1602190053055;
 Thu, 08 Oct 2020 13:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de>
In-Reply-To: <20200930155006.535712-1-l.stach@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Thu, 8 Oct 2020 15:47:21 -0500
Message-ID: <CAHCN7xJscrX-PmG7BWWGqs3VT4DAWoOss8G6vG-xDP=NHL=jEg@mail.gmail.com>
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>,
        devicetree <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 10:50 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi all,
>
> this adds power domain support for the i.MX8MM to the existing GPCv2
> driver. It is not complete yet, as it is still missing the VPU and
> display power domains, as those require support for the BLK_CTL
> regions of the VPUMIX and DISPLAYMIX domains. A Linux driver for
> those regions on the i.MX8MP is currently under development and we
> plan to use this as a template for the i.MX8MM when the dust has
> settled. The changes in this series have been made with this in
> mind, so once the BLK_CTL driver exists it should be a matter of
> hooking things together via DT, with no further changes required on
> the GPCv2 driver side (famous last words).

Thanks for improving this.

With this series, I was able to test the USB and it is functional.
Without it, the system would hang when attempting to use USB.

>
> Special thanks to Marek Vasut who helped with testing and debugging
> of early versions of this code.
>

For the series:

Tested-by: Adam Ford <aford173@gmail.com>

> Regards,
> Lucas
>
> Lucas Stach (11):
>   soc: imx: gpcv2: move to more ideomatic error handling in probe
>   soc: imx: gpcv2: move domain mapping to domain driver probe
>   soc: imx: gpcv2: split power up and power down sequence control
>   soc: imx: gpcv2: wait for ADB400 handshake
>   soc: imx: gpcv2: add runtime PM support for power-domains
>   soc: imx: gpcv2: allow domains without power-sequence control
>   soc: imx: gpcv2: add support for optional resets
>   dt-bindings: add defines for i.MX8MM power domains
>   soc: imx: gpcv2: add support for i.MX8MM power domains
>   arm64: dts: imx8mm: add GPC node and power domains
>   arm64: dts: imx8mm: put USB controllers into power-domains
>
>  .../bindings/power/fsl,imx-gpcv2.yaml         |   8 +
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  59 +++
>  drivers/soc/imx/gpcv2.c                       | 501 +++++++++++++++---
>  include/dt-bindings/power/imx8mm-power.h      |  22 +
>  4 files changed, 516 insertions(+), 74 deletions(-)
>  create mode 100644 include/dt-bindings/power/imx8mm-power.h
>
> --
> 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
