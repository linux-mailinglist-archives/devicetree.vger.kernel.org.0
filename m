Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6ADBC24B3F
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 11:12:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726417AbfEUJME (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 05:12:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:54002 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726296AbfEUJME (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 05:12:04 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id AA3E1216B7;
        Tue, 21 May 2019 09:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558429923;
        bh=WiMLbJlO4f6XXRzW42t4ramHH3DzaxxdeJngNyYFZYw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=An4/jTLywGvoTqXCWgI0IFK5KCxiF3l9fW5D7WRMgXc6iOY69nUB11jwt8oEV5p5A
         KHZ6vS7V+ZSmMNDefnNy4ctxtikecdhw0K/DiyHfOrLhk+inns752jGHnOwwPqKhMx
         84Pk2nBplASYVwNLDOHGcYPSgdTZOLuf74ubRQz4=
Date:   Tue, 21 May 2019 17:11:11 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, linux-imx@nxp.com, Stefan.Nickl@kontron.com,
        Gilles.Buloz@kontron.com, Michael.Brunner@kontron.com,
        thomas.schaefer@kontron.com, frieder.schrempf@kontron.de,
        kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: Re: [PATCH 00/17] Add Support for Kontron SMARC-sAMX6i
Message-ID: <20190521091110.GG15856@dragon>
References: <20190509155834.22838-1-m.felsch@pengutronix.de>
 <20190520021639.GG15856@dragon>
 <20190521082903.xsc643uvgqjg5ue7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190521082903.xsc643uvgqjg5ue7@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 21, 2019 at 10:29:03AM +0200, Marco Felsch wrote:
> Hi Shawn,
> 
> On 19-05-20 10:16, Shawn Guo wrote:
> > On Thu, May 09, 2019 at 05:58:17PM +0200, Marco Felsch wrote:
> > > Hi,
> > > 
> > > this series adds the Kontron SoM 'SMARC-sAMX6i' which is compatible to
> > > the SMARC 1.1 standard [1]. Most of the muxing can be done within the
> > > SoM dtsi since the standard defines a unique SoM hardware interface.
> > > 
> > > This series is based on Priit Laes initial commit [2] which adds the
> > > initial support. I addressed the comments and changed the copyright
> > > since there where a lot of fixes.
> > > 
> > > Testers are welcome :) since I used a custome baseboard which doesn't
> > > use all of the interfaces.
> > > 
> > > [1] https://sget.org/standards/smarc
> > > [2] https://lore.kernel.org/patchwork/patch/762261/
> > > 
> > > Marco Felsch (14):
> > >   dt-bindings: add Kontron vendor prefix
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SDIO interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC LCD interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC Management pins
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC GPIO interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC HDMI interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC CSI Camera interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC I2S interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SPI1 interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC Watchdog
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC module eeprom
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add power management support
> > >   ARCH: arm: dts: imx6q-kontron-samx6i: add Kontron SMARC Quad/Dual SoM
> > >   ARCH: arm: dts: imx6dl-kontron-samx6i: add Kontron SMARC
> > >     Dual-Lite/Solo SoM
> > > 
> > > Michael Grzeschik (2):
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SPI0 interface
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: add boot spi-nor
> > > 
> > > Priit Laes (1):
> > >   ARCH: arm: dts: imx6qdl-kontron-samx6i: Add iMX6-based Kontron
> > >     SMARC-sAMX6i module
> > 
> > Do we really need so many patches for adding a single board support, or
> > can we squash some of them?
> 
> I wanted to keep them logical ordered but I can squash them if you want.

Please squash, thanks.

Shawn
