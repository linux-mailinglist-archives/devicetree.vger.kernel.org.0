Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0D96A64D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2019 12:17:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728137AbfGPKRn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 06:17:43 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:50835 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727796AbfGPKRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 06:17:43 -0400
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr [92.137.69.152])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C768224003A;
        Tue, 16 Jul 2019 10:15:25 +0000 (UTC)
Date:   Tue, 16 Jul 2019 12:15:24 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        devicetree@vger.kernel.org,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Message-ID: <20190716101524.GM4732@piout.net>
References: <20190516225614.1458-1-robh@kernel.org>
 <20190520145830.GE3274@piout.net>
 <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/07/2019 15:45:24-0600, Rob Herring wrote:
> On Mon, May 20, 2019 at 8:58 AM Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> >
> > On 16/05/2019 17:56:14-0500, Rob Herring wrote:
> > > While properties and child nodes with the same name are valid DT, the
> > > practice is not encouraged.
> >
> > I don't see anything mentioning that in the devicetree specification. I
> > think this is something you should add if you don't want that to happen
> > again.
> 
> I suppose, but I prefer tools to enforce it.
> 
> >
> > > Furthermore, the collision is problematic for
> > > YAML encoded DT. Let's just avoid the issue and rename the nodes.
> > >
> >
> > Or maybe you should fix the tool ;)
> 
> You mean the YAML and JSON specifications because the problem is it is
> not valid YAML? (I think YAML allowed it at one time, but it is
> deprecated) The only way to fix it in the tool would be to define some
> way to handle the collision like renaming properties and then undoing
> that.
> 
> > Do you plan to enforce it at some point? How close are you?
> 
> Soon as this patch is merged. There's a switch in parsing tools to
> disallow the collision, so it will be an error instead of a warning.
> 
> > > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > > Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> >
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Is someone going to apply this?
> 

I'll apply it for the next cycle, sorry about that.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
