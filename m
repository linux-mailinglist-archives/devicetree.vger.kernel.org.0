Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E09D33305BC
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 03:00:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233587AbhCHB77 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 20:59:59 -0500
Received: from mail.kernel.org ([198.145.29.99]:44302 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233592AbhCHB7y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 20:59:54 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8DDF65142;
        Mon,  8 Mar 2021 01:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615168794;
        bh=uQ6mDQWqa0shKWrCvrrYn1Ikf+NWyzhzqSj/6Jc0JBg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UIkpSX4+2Me/XQu7gfHRXrD38JIZm5NeAS32GHKdqemMz91z66n0CBIJXfkH33Gor
         vapAm1Igel/YagA3ZwctpzB1UxEGRG+XvvgRDHoMdV5VZ7mtLH6mgAo9QlrS6SELcZ
         DYf+JjqtDwbJM8gysRnGJh2rrGbXcQrxC6IeZRfbJRVDapxfk990fnil71D2QPMS7K
         9ptNWmMypHGqUneWZjKvWSJXWaUmdDORHk33RiA91WCUo5ypYkXBZgz8CRPpiuQJuO
         jnWoyImxnsSlS2lgdTmlhW7yaN16UecTTOMobPPsCo5YtElTibyhVV1K3mZ3Vv61+u
         J2EyYRTZBIbhw==
Date:   Mon, 8 Mar 2021 09:59:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, kernel@pengutronix.de, robh+dt@kernel.org,
        linux-imx@nxp.com, jan.kiszka@siemens.com
Subject: Re: [PATCH v5 00/18] arm64: dts: imx8: architecture improvement and
 adding imx8qm support
Message-ID: <20210308015949.GZ543@dragon>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 09:17:29PM +0800, Dong Aisheng wrote:
> IMX SCU based platforms (e.g. MX8QM/MX8QXP) are comprised of a number of SS
> (Subsystems), those SS may be shared between different SoCs while most of them
> can be reused like Devices Resources, Clocks, Power domains and etc.
> 
> This patch series aims to improve the MX8 architecture to comply with the HW
> design to save a lot of duplicated codes and benefits us a better
> maintainability and scalability in the future.
> 
> ChangeLog:
> v5:
>  * rebase to latest shawn/for-next
>  * make mx8qm usdhc compatible with imx8qxp
> v4-resend:
>  * no change except put three module binding patches first which are used
>    by this patchset.
> v3->v4:
>  * mainly rebase to latest kernel except a few very minor changes like change to use
>    new scu protocol binding which was not supported in last version
> v2->v3:
>  * use clock-indices property instead of bit-offset property suggested by Shawn Guo
>  * rebase to latest shawn/for-next
> v1->v2:
>  * change to the new two cells scu clock binding, so original adding scu clocks
>    patches were removed.
>  * Move scu pd node above clk node
> 
> 
> Dong Aisheng (18):
>   dt-bindings: arm: fsl: add imx8qm boards compatible string
>   dt-bindings: mailbox: mu: add imx8qm support
>   arm64: dts: imx8qxp: add fallback compatible string for scu pd
>   arm64: dts: imx8qxp: move scu pd node before scu clock node
>   arm64: dts: imx8qxp: orginize dts in subsystems

The dts patches stop applying for me at this one.  Please rebase and
resend them.

Shawn

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
>   arm64: defconfig: add imx8qm mek support
>   firmware: imx: scu-pd: do not power off console domain
> 
>  .../devicetree/bindings/arm/fsl.yaml          |   6 +
>  .../devicetree/bindings/mailbox/fsl,mu.yaml   |   5 +-
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8-ss-adma.dtsi      |   8 +
>  .../boot/dts/freescale/imx8-ss-audio.dtsi     |  68 +++
>  .../boot/dts/freescale/imx8-ss-conn.dtsi      | 184 ++++++++
>  .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |  18 +
>  .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 202 +++++++++
>  .../boot/dts/freescale/imx8-ss-lsio.dtsi      | 311 +++++++++++++
>  arch/arm64/boot/dts/freescale/imx8qm-mek.dts  | 144 ++++++
>  .../boot/dts/freescale/imx8qm-ss-conn.dtsi    |  21 +
>  .../boot/dts/freescale/imx8qm-ss-dma.dtsi     |  51 +++
>  .../boot/dts/freescale/imx8qm-ss-lsio.dtsi    |  61 +++
>  arch/arm64/boot/dts/freescale/imx8qm.dtsi     | 176 ++++++++
>  .../boot/dts/freescale/imx8qxp-ai_ml.dts      |  20 +-
>  .../freescale/imx8qxp-colibri-eval-v3.dtsi    |   8 +-
>  .../boot/dts/freescale/imx8qxp-colibri.dtsi   |  12 +-
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts |  50 +--
>  .../boot/dts/freescale/imx8qxp-ss-adma.dtsi   |  37 ++
>  .../boot/dts/freescale/imx8qxp-ss-conn.dtsi   |  25 ++
>  .../boot/dts/freescale/imx8qxp-ss-lsio.dtsi   |  61 +++
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi    | 423 ++----------------
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/firmware/imx/scu-pd.c                 |  28 +-
>  24 files changed, 1481 insertions(+), 440 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-adma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-audio.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-ddr.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-mek.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-lsio.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-adma.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8qxp-ss-lsio.dtsi
> 
> -- 
> 2.25.1
> 
