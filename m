Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 38EB14C3F2
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 01:06:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727244AbfFSXGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 19:06:36 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:42814 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726298AbfFSXGg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 19:06:36 -0400
Received: by mail-lf1-f68.google.com with SMTP id y13so901982lfh.9
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 16:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=w4Y7npehQHkGR9ZyNktH8C9uASvmvTBedkhISQvIZ9k=;
        b=Fcq06cp1h0q0diFEOmLP4HyLdcxpztf2pxFD7eZk/FNLGFoGQTR4vk1WfwUcVVGg0U
         RXFC+R7dG4dBu/zzP0vxDcz8NTxCOuk3Sfzg34d7M7UEfPUv51Ux3y64hYB//jKOAC8d
         XWq3CsV6aiAEOJGXfRMDLksIW/5n6j6y+SGDa5AtOpaEMv29nvp7RR1vTkspX3HRo3Lp
         NxzF/ce2xuBrsI174TNraQqpUOm/+POA/I4WDKalmtHKdLMY8d+SnrmwYPWF8UQ67H1A
         DoJ5i7aDG57ie0lmXDqyc8J5ORmgP6ulKNmmrTlWoHdo1qeDz11lB1RuadmxdxEF4kOJ
         iuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=w4Y7npehQHkGR9ZyNktH8C9uASvmvTBedkhISQvIZ9k=;
        b=Yhpm5fT3Ca8ipNUUiyE/nmghor+LDkvo9Vtj/svLhA5f0eOvYP7Ie2yL3jLZpBdeTM
         AWfTHPMtnEASiXneyIwmSV6fGGKBDZ4ZLi4FTnNBkvWHKMUjK/pJaoyUcc3r5J7Zo1wG
         /P5GzjTGjdrOZ66Eb48zl9JOIoY+FX6cPFkFId1GJS21GLg/jNQdzO3k4lDsVrYDqGqn
         F7isJlCnk942o2yYnItvbhqI+Qs2CuIpb3Uc9iCjklpwZYJQPY4rYum0i875Eleid6to
         lSENSj6XOxSr4IUuh4IB4REeITdSrD0skBwGDQ8qE4SwwReixT5pCvH0RmL30aILrfPh
         3USA==
X-Gm-Message-State: APjAAAUGi3BYagpJLiOm6I/S7ZbvhpSWvEcJKQHskYNYIqRm4ClO1ByT
        eKjl+iH68Tsg4ikZZBso1c8VIlhM0xV9IR5ujpU=
X-Google-Smtp-Source: APXvYqz5qNp7bQl4P1c94Sxwx1VfLG74iLG2769221cs07F85IKx7mRaN69wQlVZ6VkqJUxd0h7cL2WMAyZrkdMu8E8=
X-Received: by 2002:a19:5044:: with SMTP id z4mr3011881lfj.80.1560985594396;
 Wed, 19 Jun 2019 16:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk> <20190619223727.zgfypqxg7bpxtduh@shell.armlinux.org.uk>
In-Reply-To: <20190619223727.zgfypqxg7bpxtduh@shell.armlinux.org.uk>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 19 Jun 2019 20:06:49 -0300
Message-ID: <CAOMZO5BfbGoh6N42xsv2WBz3cHot8VOqa-4rx0Y8YczC2Xzz0g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som: fix AR8035 phy interface mode
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Russell,

On Wed, Jun 19, 2019 at 7:37 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Jun 19, 2019 at 11:35:58PM +0100, Russell King wrote:
> > A change to the AT803x driver fixed the handling of the phy interface
> > mode, but this breaks all platforms that use "rgmii" as the mode in
> > their DT.  Fix the Solidrun platforms.
> >
> > Fixes: 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
>
> Note that without this, SolidRun Hummingboard and Cubox-i platforms
> have no working ethernet with at least 5.1 kernels, which is a
> regression.

Commit 0672d22a1924 ("ARM: dts: imx: Fix the AR803X phy-mode") fixes
this issue in mainline and it has already been applied to the 5.1
stable tree as well.

Thanks
