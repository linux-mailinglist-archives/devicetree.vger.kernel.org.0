Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7A833A4C60
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 05:14:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbhFLDQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 23:16:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:52122 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229622AbhFLDQQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Jun 2021 23:16:16 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B44C610A2;
        Sat, 12 Jun 2021 03:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623467657;
        bh=KU+GFw2+1KmV/3cOaqfTBeCaxADM6el/yPmRwiwdWvQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=eOrrsmfDLeJ1wiqzf2mu2i3WIi0PX9xO21Ko9f90e1WoounjRu3xmTf5J7V57TvlP
         NvUQdAcLAYMIL1bfhFvP3g5E7+UZwtKDOhXqmuLrzjli2iT3EqAhGhzqvrYrs9G93L
         7RWjG7Nwm/OaMrUmOKKwv5oHQs0zt6Ogu+jaV8/9F4i24RlN8a13K1BXUdXLCDr9Fp
         BSfVdDPc+gcXramsvE11nT0cQ87eJDp8zAjHJvOAdUIvoq+dNuayMKuMarwAxGntzU
         E6TYxY8ELgrJ+fRsKcFKq6471CkloyH1UWDhFfkTusBlptaIXjg2YRctsn59DtH7ET
         G20/ktPtk6EQg==
Date:   Sat, 12 Jun 2021 11:14:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH v3 4/4] arm64: dts: imx8mq: add support for MNT Reform2
Message-ID: <20210612031412.GJ29138@dragon>
References: <20210524124536.27854-1-dev@lynxeye.de>
 <20210524124536.27854-4-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210524124536.27854-4-dev@lynxeye.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 24, 2021 at 02:45:36PM +0200, Lucas Stach wrote:
> This adds a basic devicetree for the MNT Reform2 DIY laptop. Not all
> of the board periperals are enabled yet, as some of them still require
> kernel patches to work properly. The nodes for those peripherals will
> be added as soon as the required patches are upstream.
> 
> The following has been tested to work:
> - UART console
> - SD card
> - eMMC
> - Gigabit Ethernet
> - USB (internal Keyboard, Mouse, external ports)
> - M.2 PCIe port
> 
> Co-developed-by: Lukas F. Hartmann <lukas@mntre.com>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks.
