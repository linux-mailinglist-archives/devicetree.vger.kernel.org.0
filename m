Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46FB93B8217
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 14:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234641AbhF3M1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 08:27:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234621AbhF3M07 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 08:26:59 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBB3BC061766
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 05:24:30 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id gn32so3926189ejc.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 05:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Eh0RuQARDzYtX6oU1mn3qAV9Ucz3Lp8rJN5AdD4bnhs=;
        b=WBXCycTdBoh6XyOaRz5Q0FgDS+p+Jgx5jtTyEatbqxXji88bYAukahgX9m7BnqakDW
         ScgcdoRm4a22be1BUHuSaUkIe/dro9uVDW84Gzz8byb3jhcDM21cjjVIswHwmAzAT2ay
         3r1KF56s0IiNEdecxUP32P2jUjjQ9x42GuI1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Eh0RuQARDzYtX6oU1mn3qAV9Ucz3Lp8rJN5AdD4bnhs=;
        b=XDjzlovSUBmmk8kRTfUyQ2YISO3z9LHdcZZDbc0E8uzleE4ZBONMgty9Syz3dVo5fI
         9etCBSO/XI6e27huAZjTi0sTEyC2XytOzeLnirGutsl9USmE1RX+/u+mGWWDwE5PMyo6
         JPdmIgB242C9u1pVFsVavmxunfJ+8Ni5Rs5hC8jQ6QqmHNPJTxvHOX7C78pBPMqajAlf
         spqETp7Q73DnPqNTgiSDrXxbePz5jHRTEDeZYYjCP5jNaapc+3jqWnEpSvFhpnEJwvAF
         AZtPkPCYfRKprdcBKGCJSx07xNdyFsfJTfAssEJUJYZr742w6mF01WLxgtWx2uKyi47C
         CKKg==
X-Gm-Message-State: AOAM533eOO0OL5CR9Fkkgei8s4f5WJ2wBp1Ovz4v+xdOs8DoJI8Q+9Vr
        ouLAT39bORzJ0JJoTaU714sa1Vs2cwX0EfTXuJd+mg==
X-Google-Smtp-Source: ABdhPJxwqMZaLfOn6TzLb/GLihpg4GGodAJleAoeLOXW6d+kxnZXNArRcvf9kTne5Z021JckBamQgD4y7urdQuzOzm0=
X-Received: by 2002:a17:906:2dd5:: with SMTP id h21mr35625781eji.522.1625055869329;
 Wed, 30 Jun 2021 05:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com> <DB6PR0402MB2760C13BBF36FF98E4F4635988029@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB2760C13BBF36FF98E4F4635988029@DB6PR0402MB2760.eurprd04.prod.outlook.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 30 Jun 2021 17:54:18 +0530
Message-ID: <CAMty3ZDb5h2WJNxW=ZdFty53KFoZJmzZ8aBnFYfxnhKhgrpa8A@mail.gmail.com>
Subject: Re: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Tomasz Figa <t.figa@samsung.com>,
        Fancy Fang <chen.fang@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-amarula@amarulasolutions.com" 
        <linux-amarula@amarulasolutions.com>,
        Anthony Brandon <anthony@amarulasolutions.com>,
        Francis Laniel <francis.laniel@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Milco Pratesi <milco.pratesi@engicam.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peng,

On Tue, Jun 29, 2021 at 12:40 PM Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>
> Hi Jagan,
>
> > Subject: [RFC PATCH 0/9] arm64: imx8mm: Add MIPI DSI support
> >
> > This series support MIPI DSI on i.MX8MM.
> >
> > It worked directly with existing mxsfb driver but the SEC DSIM timings has to
> > be validate and tested through all platforms, ie reason I'm sending it as RFC.
> >
> > Tested on Engicam i.Core MX8M Mini SoM.
>
> Thanks for the work.
>
> >
> > patch 1: dt-bindings for SEC MIPI DSIM
> >
> > patch 2: SEC MIPI DSIM bridge driver
> >
> > patch 3: dt-bindings for SEC DSIM DPHY
> >
> > patch 4: SEC DSIM DPHY driver
> >
> > patch 5: MIPI DPHY reset enable in blk-ctl
> >
> > patch 6: display mix blk ctl node
> >
> > patch 7: eLCDIF node
> >
> > patch 8: MIPI DSI pipeline nodes
> >
> > patch 9: Enable LVDS panel on EDIMM2.2
> >
> > Note:
> > - all these patches on top of Peng Fan's blk-ctl driver.
>
> Would you please update to use V8 patchset?
>
> And the dtb:
> https://patchwork.kernel.org/project/linux-arm-kernel/
> patch/20210604111005.6804-1-peng.fan@oss.nxp.com/

Thanks for the details.

I will rebase to use this series and test. Will update on blk-ctl patches.

Thanks,
Jagan.
