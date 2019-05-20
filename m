Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 77C65229BC
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 03:30:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729417AbfETBak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 May 2019 21:30:40 -0400
Received: from mail.kernel.org ([198.145.29.99]:56034 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727620AbfETBak (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 19 May 2019 21:30:40 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9BFBF20815;
        Mon, 20 May 2019 01:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558315839;
        bh=+s+BmSUtly8HShh1WSgJvQm9P/Voa4ZFl+Id1iF7/c4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=E5/lhndweImZTSXooRm1qqbuCCNY8X4WSjVWvpYS2ynQ4FjwKJ1oxMclW/pJMGeTC
         3VP7ATybrFmbfU+vlIdMoD8JDuLRNU7elxeCnKxDB/XX+DCFDEsT4xa3y6OHdwBkI7
         5bE0/CGlEbwpE8/RWEE8Fk+uj9s44nsGj1GsPJnk=
Date:   Mon, 20 May 2019 09:29:50 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, linux-imx@nxp.com, Stefan.Nickl@kontron.com,
        Gilles.Buloz@kontron.com, Michael.Brunner@kontron.com,
        thomas.schaefer@kontron.com, frieder.schrempf@kontron.de,
        kernel@pengutronix.de, devicetree@vger.kernel.org
Subject: Re: [PATCH 00/17] Add Support for Kontron SMARC-sAMX6i
Message-ID: <20190520012948.GE15856@dragon>
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

'ARM: dts: ...' for prefix please.

Shawn
