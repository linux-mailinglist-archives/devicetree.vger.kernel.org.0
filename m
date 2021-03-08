Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E32A330E15
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 13:35:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232014AbhCHMfQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 07:35:16 -0500
Received: from mail.kernel.org ([198.145.29.99]:44094 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230097AbhCHMey (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 8 Mar 2021 07:34:54 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC05764EBC;
        Mon,  8 Mar 2021 12:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615206894;
        bh=OE1KaWZr1z+nds/WoX0y52ePMWhIZcYbh7YR2CjbDS4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Hd1OyraOyUBj/icLnp5Zsq6Chuh8XNlbx//vF/waYrzsnYYpI7yn0okmcqea+amhc
         2wKF92HUHn04paVosgKxulPH4g16p2hCy0F8SR0zCZ8e6KyiZ447s4xUQD/wapu6dW
         VC2hAOmvFfpuBlxdsl6orkOUNnh0H8duW/oxKBGhCgl/tMVIJJ7frmPPAMqhqDMJjE
         J9jz17lfjWQuY530e+tVRpWyVJnPrur32i4pvUnkzJJEDcZ2yBosExUUBnnP+xvcn9
         bZSwTNmNNVR0gY5Ob7rmCvvOU6e7yTAW/Uj7yIIIKsFTzKdfBb8zXnp9qvoalow2To
         +C1o2lwFWVvkQ==
Date:   Mon, 8 Mar 2021 20:34:48 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, kernel@pengutronix.de, robh+dt@kernel.org,
        linux-imx@nxp.com, jan.kiszka@siemens.com
Subject: Re: [PATCH RESEND V5 00/14] arm64: dts: imx8: architecture
 improvement and adding imx8qm support
Message-ID: <20210308123448.GB11246@dragon>
References: <1615173270-6289-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1615173270-6289-1-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 08, 2021 at 11:14:16AM +0800, Dong Aisheng wrote:
> Dong Aisheng (14):
>   arm64: dts: imx8qxp: add fallback compatible string for scu pd
>   arm64: dts: imx8qxp: move scu pd node before scu clock node
>   arm64: dts: imx8qxp: orginize dts in subsystems
>   arm64: dts: imx8: add lsio lpcg clocks
>   arm64: dts: imx8: add conn lpcg clocks
>   arm64: dts: imx8: add adma lpcg clocks
>   arm64: dts: imx8: switch to two cell scu clock binding
>   arm64: dts: imx8: switch to new lpcg clock binding
>   arm64: dts: imx8qm: add lsio ss support
>   arm64: dts: imx8qm: add conn ss support
>   arm64: dts: imx8: split adma ss into dma and audio ss
>   arm64: dts: imx8qm: add dma ss support
>   arm64: dts: imx: add imx8qm common dts file
>   arm64: dts: imx: add imx8qm mek support

Applied all, thanks.
