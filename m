Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 17CEE158039
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 17:55:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727898AbgBJQzA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 11:55:00 -0500
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:50447 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727431AbgBJQzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 11:55:00 -0500
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr [90.65.102.129])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4AE06E0005;
        Mon, 10 Feb 2020 16:54:56 +0000 (UTC)
Date:   Mon, 10 Feb 2020 17:54:56 +0100
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: Re: [PATCH] arm: at91: dts: Kill off "simple-panel" compatibles
Message-ID: <20200210165456.GD3878@piout.net>
References: <20200117230845.25190-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200117230845.25190-1-robh@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2020 17:08:45-0600, Rob Herring wrote:
> "simple-panel" is a Linux driver and has never been an accepted upstream
> compatible string, so remove it.
> 
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi | 2 +-
>  arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts   | 2 +-
>  arch/arm/boot/dts/at91sam9n12ek.dts           | 2 +-
>  arch/arm/boot/dts/at91sam9x5dm.dtsi           | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
