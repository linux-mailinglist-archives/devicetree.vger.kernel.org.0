Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9190D12A1E
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 10:50:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725794AbfECItq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 04:49:46 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:47197 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725775AbfECItq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 04:49:46 -0400
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hMTsz-0002qy-OM; Fri, 03 May 2019 10:49:41 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hMTsy-0001uh-HO; Fri, 03 May 2019 10:49:40 +0200
Date:   Fri, 3 May 2019 10:49:40 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     dmitry.torokhov@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, raphaelpereira@gmail.com,
        voice.shen@atmel.com, kernel@pengutronix.de,
        linux-input@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Microchip QT1050 support
Message-ID: <20190503084940.w4dx7ojbbtmfo7bl@pengutronix.de>
References: <20190415165655.13016-1-m.felsch@pengutronix.de>
 <20190425072328.s6ukzchxabdx2edm@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190425072328.s6ukzchxabdx2edm@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:48:55 up 104 days, 13:30, 81 users,  load average: 0.14, 0.09,
 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

can you have a look please?

Regards,
  Marco

On 19-04-25 09:23, Marco Felsch wrote:
> Hi Dmitry,
> 
> gentle ping.
> 
> On 19-04-15 18:56, Marco Felsch wrote:
> > Hi,
> > 
> > this v3 contains all the comments made on my v2 [1].
> > Each patch has it's own changelog so I omit it here.
> > 
> > I've tested it on a custom v5.0 kernel and rebased
> > it on v5.1-rc5 without any issues.
> > 
> > [1] https://patchwork.kernel.org/cover/10659275/
> > 
> > Marco Felsch (2):
> >   dt-bindings: input: add Microchip QT1050 bindings
> >   Input: qt1050 - add Microchip AT42QT1050 support
> > 
> >  .../bindings/input/microchip,qt1050.txt       |  78 +++
> >  drivers/input/keyboard/Kconfig                |  11 +
> >  drivers/input/keyboard/Makefile               |   1 +
> >  drivers/input/keyboard/qt1050.c               | 597 ++++++++++++++++++
> >  4 files changed, 687 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/input/microchip,qt1050.txt
> >  create mode 100644 drivers/input/keyboard/qt1050.c
> > 
> > -- 
> > 2.20.1
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
