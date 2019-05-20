Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F027229E6
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 04:17:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726791AbfETCRa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 May 2019 22:17:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:33746 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726062AbfETCRa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 19 May 2019 22:17:30 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B43E420644;
        Mon, 20 May 2019 02:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558318649;
        bh=SamDfQKzE33INYIskToyQhZeFatpaqPghjeVbsFxhbQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VFiw1Q6juzEO6hW47NKCSA/Pxm0uVIm+QIKtd1box7ezl9H+7Ths7vCV+8/MeUc3a
         HfWMhJpZwkTYXltsu3H/8OtzzSF1yXKVKwo+sRM7MORhnNbbFZ+Ch+/6y0nn536RGc
         k8pxzyKJQOfr7KFHAbB8jIF6PiN/oc4PImfAInr4=
Date:   Mon, 20 May 2019 10:16:40 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, linux-imx@nxp.com, Stefan.Nickl@kontron.com,
        Gilles.Buloz@kontron.com, Michael.Brunner@kontron.com,
        thomas.schaefer@kontron.com, frieder.schrempf@kontron.de,
        kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: Re: [PATCH 00/17] Add Support for Kontron SMARC-sAMX6i
Message-ID: <20190520021639.GG15856@dragon>
References: <20190509155834.22838-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190509155834.22838-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 09, 2019 at 05:58:17PM +0200, Marco Felsch wrote:
> Hi,
> 
> this series adds the Kontron SoM 'SMARC-sAMX6i' which is compatible to
> the SMARC 1.1 standard [1]. Most of the muxing can be done within the
> SoM dtsi since the standard defines a unique SoM hardware interface.
> 
> This series is based on Priit Laes initial commit [2] which adds the
> initial support. I addressed the comments and changed the copyright
> since there where a lot of fixes.
> 
> Testers are welcome :) since I used a custome baseboard which doesn't
> use all of the interfaces.
> 
> [1] https://sget.org/standards/smarc
> [2] https://lore.kernel.org/patchwork/patch/762261/
> 
> Marco Felsch (14):
>   dt-bindings: add Kontron vendor prefix
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SDIO interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC LCD interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC Management pins
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC GPIO interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC HDMI interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC CSI Camera interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC I2S interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SPI1 interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC Watchdog
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC module eeprom
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add power management support
>   ARCH: arm: dts: imx6q-kontron-samx6i: add Kontron SMARC Quad/Dual SoM
>   ARCH: arm: dts: imx6dl-kontron-samx6i: add Kontron SMARC
>     Dual-Lite/Solo SoM
> 
> Michael Grzeschik (2):
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SPI0 interface
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: add boot spi-nor
> 
> Priit Laes (1):
>   ARCH: arm: dts: imx6qdl-kontron-samx6i: Add iMX6-based Kontron
>     SMARC-sAMX6i module

Do we really need so many patches for adding a single board support, or
can we squash some of them?

Shawn

> 
>  .../devicetree/bindings/vendor-prefixes.txt   |   1 +
>  arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi  |  12 +
>  arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi   |  36 +
>  arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 812 ++++++++++++++++++
>  4 files changed, 861 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
> 
> -- 
> 2.20.1
> 
