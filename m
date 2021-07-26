Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 388563D5123
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 03:49:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231336AbhGZBIe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jul 2021 21:08:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:46486 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230152AbhGZBIe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 25 Jul 2021 21:08:34 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A369606A5;
        Mon, 26 Jul 2021 01:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627264143;
        bh=6ollZKitF/567sxTpy/KFcP74i9tf6ETJXnKeKaLy7U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OiG9ep/LiIkjj+IiW0AyYhPN16euGwvxyUMgnbxzCIgGh/eFiOSjPMfkHY479q1Pn
         xyN1wd/ZQQv4HhO4orgXNmGJ5WcB5OVC8U8gw3MkuP5/0G156gwTrqU+HxiwZw4AIK
         osvZEOlbRG3tPJlQ/3ZAXI4bN3AsE16wetQjyIjLJ3omGtEbN4+2cDiU7CP6uEPFTI
         /iysYlpDeCJOLZDx0JHyDB5qOAF2cR76uwtRMn5MWwo0vfwoCu09wp7AsvmlEcSoHA
         lxyK08G+gybwcP8OJDfzeuTfEgzPh24RI+M60O2LEXCESiSSCM4e6CnO0/3j3mAwhK
         TcXr9HRTli7fw==
Date:   Mon, 26 Jul 2021 09:48:58 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: imx: add imx8mm/imx8mn GW7902
 support
Message-ID: <20210726014849.GE5901@dragon>
References: <20210723075900.GF30773@dragon>
 <20210723184116.16204-1-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210723184116.16204-1-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 23, 2021 at 11:41:15AM -0700, Tim Harvey wrote:
> The GW7902 is based on the i.MX 8M Mini / Nano SoC featuring:
>  - LPDDR4 DRAM
>  - eMMC FLASH
>  - Gateworks System Controller
>  - LTE CAT M1 modem
>  - USB 2.0 HUB
>  - M.2 Socket with USB2.0, PCIe, and dual-SIM
>  - IMX8M FEC
>  - PCIe based GbE
>  - RS232/RS485/RS422 serial transceiver
>  - GPS
>  - CAN bus
>  - WiFi / Bluetooth
>  - MIPI header (DSI/CSI/GPIO/PWM/I2S)
>  - PMIC
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> Acked-by: Rob Herring <robh@kernel.org>

Applied both, thanks!
