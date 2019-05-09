Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C526618FE0
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 20:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726682AbfEISIL convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 9 May 2019 14:08:11 -0400
Received: from 212-186-180-163.static.upcbusiness.at ([212.186.180.163]:36542
        "EHLO cgate.sperl.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726661AbfEISIL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 14:08:11 -0400
Received: from msmac.intern.sperl.org (account martin@sperl.org [10.10.10.11] verified)
  by sperl.org (CommuniGate Pro SMTP 6.2.1 _community_)
  with ESMTPSA id 7764558; Thu, 09 May 2019 18:08:05 +0000
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: bcm283x: Enable DMA support for SPI controller
From:   kernel@martin.sperl.org
In-Reply-To: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
Date:   Thu, 9 May 2019 20:08:20 +0200
Cc:     Stefan Wahren <stefan.wahren@i2se.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Noralf Tronnes <noralf@tronnes.org>,
        linux-rpi-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: 8BIT
Message-Id: <6D30E7D8-BD48-4268-B6F9-62FEE0349C8B@martin.sperl.org>
References: <ab21b59ece7db065ee86f6f0c0a7623144db52b4.1557419583.git.lukas@wunner.de>
To:     Lukas Wunner <lukas@wunner.de>
X-Mailer: Apple Mail (2.3124)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> On 09.05.2019, at 19:03, Lukas Wunner <lukas@wunner.de> wrote:
> 
> Without this, the driver for the BCM2835 SPI controller uses interrupt
> mode instead of DMA mode, incurring a significant performance penalty.
> The Foundation's device tree has had these attributes for years, but for
> some reason they were never upstreamed.
> 
> They were originally contributed by Noralf Trønnes and Martin Sperl:
> https://github.com/raspberrypi/linux/commit/25f3e064afc8
> https://github.com/raspberrypi/linux/commit/e0edb52b47e6
I believe the the original patch that I had provided has been turned down
was because:
* we do not want to “consume” dma resources automatically
* to use spi correctly you have to apply several changes to the dt already 
  (think GPIO mode for CS and status=enable).

If this mindset has changed, then I am happy.

> Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Lukas Wunner <lukas@wunner.de>
> Cc: Martin Sperl <kernel@martin.sperl.org>
> Cc: Noralf Trønnes <noralf@tronnes.org>
Reviewed-by: Martin Sperl <kernel@martin.sperl.org>







