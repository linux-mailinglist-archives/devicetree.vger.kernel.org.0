Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 516D3397B5A
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 22:45:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234723AbhFAUr0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 16:47:26 -0400
Received: from gloria.sntech.de ([185.11.138.130]:42822 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234513AbhFAUr0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Jun 2021 16:47:26 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1loBG5-0003ST-OY; Tue, 01 Jun 2021 22:45:05 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Lee Jones <lee.jones@linaro.org>,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, robh+dt@kernel.org, perex@perex.cz,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the v5.14 merge window
Date:   Tue, 01 Jun 2021 22:45:04 +0200
Message-ID: <8906844.gsGJI6kyIV@diego>
In-Reply-To: <20210601183351.GA31227@wintermute.localdomain>
References: <20210519203754.27184-1-macroalpha82@gmail.com> <20210601173944.GA2173308@dell> <20210601183351.GA31227@wintermute.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 1. Juni 2021, 20:33:51 CEST schrieb Chris Morgan:
> On Tue, Jun 01, 2021 at 06:39:44PM +0100, Lee Jones wrote:
> > On Tue, 01 Jun 2021, Chris Morgan wrote:
> > 
> > > On Tue, Jun 01, 2021 at 04:58:32PM +0100, Lee Jones wrote:
> > > > On Tue, 01 Jun 2021, Lee Jones wrote:
> > > > 
> > > > > I've applied the non-Arm patches.
> > > > > 
> > > > > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> > > > > 
> > > > >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> > > > > 
> > > > > are available in the Git repository at:
> > > > > 
> > > > >   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tb-mfd-asoc-v5.14
> > > > > 
> > > > > for you to fetch changes up to 437faaa6cebadf8ff4c2c28d7cb26ed4e34aeb14:
> > > > > 
> > > > >   dt-bindings: Add Rockchip rk817 audio CODEC support (2021-06-01 13:40:41 +0100)
> > > > > 
> > > > > ----------------------------------------------------------------
> > > > > Immutable branch between MFD and ASoC due for the v5.14 merge window
> > > > > 
> > > > > ----------------------------------------------------------------
> > > > > Chris Morgan (3):
> > > > >       mfd: Add Rockchip rk817 audio CODEC support
> > > > >       ASoC: Add Rockchip rk817 audio CODEC support
> > > > >       dt-bindings: Add Rockchip rk817 audio CODEC support
> > > > > 
> > > > >  Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
> > > > >  drivers/mfd/rk808.c                             |  81 ++++
> > > > >  include/linux/mfd/rk808.h                       |  81 ++++
> > > > >  sound/soc/codecs/Kconfig                        |   6 +
> > > > >  sound/soc/codecs/Makefile                       |   2 +
> > > > >  sound/soc/codecs/rk817_codec.c                  | 539 ++++++++++++++++++++++++
> > > > >  6 files changed, 897 insertions(+)
> > > > >  create mode 100644 sound/soc/codecs/rk817_codec.c
> > > > 
> > > > Looks like the builders reported a W=1 warning introduced by the set.
> > > > 
> > > > Would you like me to fix it and submit a patch?
> > > 
> > > I can't seem to reproduce the warning, are there more details as to
> > > what is causing it?
> > 
> > Yes, it's a W=1 warning.  Put that on your command line.
> 
> Got it. Want me to resubmit the patch? Looks like I was requesting a
> return value from a function and not doing anything with it.

from Lee's earlier mail I guess he prefers a followup patch to fix the issue.



