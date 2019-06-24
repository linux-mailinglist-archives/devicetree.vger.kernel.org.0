Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 246124FECB
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 03:57:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726651AbfFXB5e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jun 2019 21:57:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:38780 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726665AbfFXB51 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jun 2019 21:57:27 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 894BF227BF;
        Mon, 24 Jun 2019 00:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561336712;
        bh=ry07mqJpffPEAebCGThHQi3Z6tCa7+vDG+JJyMgrbrU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FsYHpxeHfQr1mU16MN0FDtUZ96iHRxUpUjb6D5XoKloew+37DeyIxVPs8YK4Y1zny
         //9VKydGK2hzi/s4FtugoVspDXjymOGPcscOqWdi1qZYbAYPsi+qmKO/gSmBQOLifl
         3jUuKxR7/Uox7WRuwK0LBUmaQheYYihfmaRZqgsk=
Date:   Mon, 24 Jun 2019 08:38:20 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, linux-imx@nxp.com, devicetree@vger.kernel.org,
        Gilles.Buloz@kontron.com, frieder.schrempf@kontron.de,
        thomas.schaefer@kontron.com, Stefan.Nickl@kontron.com,
        Michael.Brunner@kontron.com, kernel@pengutronix.de,
        festevam@gmail.com, plaes@plaes.org,
        Michael Grzeschik <m.grzeschik@pengutronix.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: imx6qdl-kontron-samx6i: add Kontron
 SMARC SoM Support
Message-ID: <20190624003819.GE3800@dragon>
References: <20190617161432.32268-1-m.felsch@pengutronix.de>
 <20190617161432.32268-4-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190617161432.32268-4-m.felsch@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 06:14:32PM +0200, Marco Felsch wrote:
> From: Michael Grzeschik <m.grzeschik@pengutronix.de>
> 
> The patch adds the following interfaces according the SMARC Spec 1.1
> [1] and provided schematics:
>  - SMARC SPI0/1
>    Note: Since Kontron still uses silicon revisions below 1.3 they have
>          add a spi-nor to implement Workaround #1 of erratum ERR006282.
>  - SMARC SDIO
>  - SMARC LCD
>  - SMARC HDMI
>  - SMARC Management pins
>    Note: Kontron don't route all of these pins to the i.MX6, some are
>          routed to the SoM CPLD.
>  - SMARC GPIO
>  - SMARC CSI Camera
>    Note: As specified in [1] the data lanes are shared to cover the
>          csi and the parallel case. The case depends on the baseboard so
>          muxing the data lanes is not part of this patch.
>  - SMARC I2S
>  - SMARC Watchdog
>    Note: The watchdog output pin is routed to the CPLD and the SMARC
>          header. The CPLD performs a reset after a 30s timeout so we
>          need to enable the watchdog per default.
>  - SMARC module eeprom
> 
> Due to the lack of hardware not all of these interfaces are tesetd.
> 
> [1] https://sget.org/standards/smarc
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
