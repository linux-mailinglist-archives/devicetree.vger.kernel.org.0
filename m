Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 247DC421EEF
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 08:40:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231597AbhJEGma (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 02:42:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:33288 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232334AbhJEGm2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 5 Oct 2021 02:42:28 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D4E561352;
        Tue,  5 Oct 2021 06:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633416032;
        bh=D754AmdBAQ2ViutfCwhwnpKc1qPztpSjR09J4+o4iak=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Q0haDqHzEVCST/KV1Mca+O1gvd/iWoLOt4MN7c+hCZozxPV2GJW12xjZyxGxUKTff
         jdAl6BVUq8jZsavLLfjNMwI3QVQCT+e4urdwlHb9kmix3VGo8EF1hmjzUc6uR3Cao0
         nQLL2IOzeIpF+Wr5aywWe1qsIRrkNxXocqgZu4DS1vILwS/yQShVkolmzd4dJMp4H1
         gqst6IFiG51hOmzvyyHxpfDeBzqgVYeiq1Z8g3WDWIWr60qKtpffgtqV3K/yJl6FJ8
         EmwFYmkAZuxo2CcHFBS/jcBAi3AX4uJs9bWNh8VqaKN4jiTJe3eLAX66GEktiKDnST
         9ZrZJYA+iJpaA==
Date:   Tue, 5 Oct 2021 14:40:24 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v5 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
Message-ID: <20211005064023.GW20743@dragon>
References: <20211002005954.1367653-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211002005954.1367653-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 02, 2021 at 02:59:36AM +0200, Lucas Stach wrote:
> Hi all,
> 
> just another respin, with the struct naming issues reported by Adam
> fixed and acks and reviews applied to the DT binding patches.
> 
> Regards,
> Lucas
> 
> Frieder Schrempf (1):
>   arm64: dts: imx8mm: Add GPU nodes for 2D and 3D core
> 
> Lucas Stach (15):
>   Revert "soc: imx: gpcv2: move reset assert after requesting domain
>     power up"
>   soc: imx: gpcv2: add lockdep annotation
>   soc: imx: gpcv2: add domain option to keep domain clocks enabled
>   soc: imx: gpcv2: keep i.MX8M* bus clocks enabled
>   soc: imx: gpcv2: support system suspend/resume
>   dt-bindings: soc: add binding for i.MX8MM VPU blk-ctrl
>   dt-bindings: power: imx8mm: add defines for VPU blk-ctrl domains
>   soc: imx: add i.MX8M blk-ctrl driver
>   dt-bindings: soc: add binding for i.MX8MM DISP blk-ctrl
>   dt-bindings: power: imx8mm: add defines for DISP blk-ctrl domains
>   soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
>   arm64: dts: imx8mm: add GPC node
>   arm64: dts: imx8mm: put USB controllers into power-domains
>   arm64: dts: imx8mm: add VPU blk-ctrl
>   arm64: dts: imx8mm: add DISP blk-ctrl

Applied all, thanks!

> 
> Marek Vasut (2):
>   soc: imx: gpcv2: Turn domain->pgc into bitfield
>   soc: imx: gpcv2: Set both GPC_PGC_nCTRL(GPU_2D|GPU_3D) for MX8MM GPU
>     domain

These two were already picked up separately.

Shawn
