Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B76D735343C
	for <lists+devicetree@lfdr.de>; Sat,  3 Apr 2021 16:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236380AbhDCOAO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Apr 2021 10:00:14 -0400
Received: from ciao.gmane.io ([116.202.254.214]:44846 "EHLO ciao.gmane.io"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230440AbhDCOAN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 3 Apr 2021 10:00:13 -0400
Received: from list by ciao.gmane.io with local (Exim 4.92)
        (envelope-from <gldd-devicetree-discuss-3@m.gmane-mx.org>)
        id 1lSgoq-0004SF-U2
        for devicetree@vger.kernel.org; Sat, 03 Apr 2021 16:00:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To:     devicetree@vger.kernel.org
From:   "Andrey Jr. Melnikov" <temnota.am@gmail.com>
Subject: Re: [PATCH v5 1/2] pinctrl: Add driver for Awinic AW9523/B I2C GPIO Expander
Date:   Sat, 3 Apr 2021 16:48:13 +0300
Message-ID: <r98mjh-2c6.ln1@banana.localnet>
References: <20210125182219.213214-1-angelogioacchino.delregno@somainline.org>
User-Agent: tin/2.2.1-20140504 ("Tober an Righ") (UNIX) (Linux/4.4.66-bananian (armv7l))
Cc:     linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In gmane.linux.kernel.gpio AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org> wrote:
> The Awinic AW9523(B) is a multi-function I2C gpio expander in a
> TQFN-24L package, featuring PWM (max 37mA per pin, or total max
> power 3.2Watts) for LED driving capability.

> It has two ports with 8 pins per port (for a total of 16 pins),
> configurable as either PWM with 1/256 stepping or GPIO input/output,
> 1.8V logic input; each GPIO can be configured as input or output
> independently from each other.

I can't see where PWM output registers is programmed. I'm rightly
understands - this driver for GPIO only?

> This IC also has an internal interrupt controller, which is capable
> of generating an interrupt for each GPIO, depending on the
> configuration, and will raise an interrupt on the INTN pin to
> advertise this to an external interrupt controller.


