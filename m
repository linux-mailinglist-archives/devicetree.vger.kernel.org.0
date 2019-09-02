Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9B930A5D0F
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 22:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727108AbfIBUVQ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 2 Sep 2019 16:21:16 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:34105 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726518AbfIBUVQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 16:21:16 -0400
Received: from xps13 (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id BC238100008;
        Mon,  2 Sep 2019 20:21:12 +0000 (UTC)
Date:   Mon, 2 Sep 2019 22:21:11 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com, praveenv@xilinx.com,
        Maruthi Srinivas Bayyavarapu <maruthis@xilinx.com>
Subject: Re: [PATCH 1/3] ASoC: xlnx: add Xilinx logicPD-I2S FPGA IP support
Message-ID: <20190902222111.045ede17@xps13>
In-Reply-To: <df36fc2d-ed62-2556-513d-158a7707d5cd@xilinx.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
        <df36fc2d-ed62-2556-513d-158a7707d5cd@xilinx.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Michal,

Michal Simek <michal.simek@xilinx.com> wrote on Mon, 2 Sep 2019
09:39:11 +0200:

> Hi Miquel
> 
> On 30. 08. 19 23:06, Miquel Raynal wrote:
> > This IP is very simple so this driver manage both the DAI and the PCM
> > streams, hence the presence of both components in this driver.
> > 
> > There are plenty available interruptions when capturing or playing
> > back audio that can be triggered but the only one that fits the ALSA
> > sound system is the XFER_DONE which is used to bound sound
> > periods. Other interrupts are masked. Please note that capture and
> > playback are not possible at the same time though.
> > 
> > Capture seems to work (at least it creates a file with something
> > inside) but I have no capture mechanism on the board to actually test
> > that it works correctly.
> > 
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> > 
> > Hello,
> > 
> > This is my first contribution in the sound subsystem, I hope I've
> > understood the core but I might be entirely wrong as well, so please
> > do not hesitate to be critical on my choices.
> > 
> > Thanks,
> > Miquèl
> > 
> >  sound/soc/xilinx/Kconfig            |   7 +
> >  sound/soc/xilinx/Makefile           |   2 +
> >  sound/soc/xilinx/xlnx-logicpd-i2s.c | 468 ++++++++++++++++++++++++++++  
> 
> What IP is this?
> https://www.xilinx.com/products/intellectual-property/audio-i2s.html
> 
> https://github.com/Xilinx/linux-xlnx/blob/master/sound/soc/xilinx/xlnx_i2s.c
> 
> Anyway I am adding Praveen and Maruthi to take a look.

Actually I have been tricked by a datasheet with the wrong title: this
is a LogicPD IP, it is not from Xilinx. I will resubmit with a new
driver name/compatible and add the relevant people.

Thanks,
Miquèl
