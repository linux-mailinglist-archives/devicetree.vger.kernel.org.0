Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D8DF1A7941
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 13:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438982AbgDNLRS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 07:17:18 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:43667 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438984AbgDNLRP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 07:17:15 -0400
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr [86.202.105.35])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 613BB2000D;
        Tue, 14 Apr 2020 11:17:09 +0000 (UTC)
Date:   Tue, 14 Apr 2020 13:17:09 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Tudor.Ambarus@microchip.com
Cc:     Nicolas.Ferre@microchip.com, Ludovic.Desroches@microchip.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: at91: sama5d27_wlsom1: Add alias for i2c0
Message-ID: <20200414111708.GF34509@piout.net>
References: <20200413140922.154886-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200413140922.154886-1-tudor.ambarus@microchip.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2020 14:09:25+0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> wlsom1 has an ATECC608A-TNGTLS Secure Element connected on the i2c0
> bus. Add alias for the i2c device to not rely on probe order for the
> i2c device numbering.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
