Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95623310FCC
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 19:24:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232778AbhBEQkV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 11:40:21 -0500
Received: from sibelius.xs4all.nl ([83.163.83.176]:64066 "EHLO
        sibelius.xs4all.nl" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233223AbhBEQiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 11:38:19 -0500
Received: from localhost (bloch.sibelius.xs4all.nl [local])
        by bloch.sibelius.xs4all.nl (OpenSMTPD) with ESMTPA id 700eed23;
        Fri, 5 Feb 2021 15:19:53 +0100 (CET)
Date:   Fri, 5 Feb 2021 15:19:53 +0100 (CET)
From:   Mark Kettenis <mark.kettenis@xs4all.nl>
To:     Johan Jonker <jbx6244@gmail.com>
CC:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/8] arm64: dts: rockchip: restyle rk3399 usbdrd3_0 node
Message-ID: <4268f9759816bb98@bloch.sibelius.xs4all.nl>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> For rk3399 dwc3 usb the wrapper node for only clocks makes no sense,
> so restyle the rk3399 usbdrd3_0 node before more new SoC types are
> added with the same IP.
> 
> Signed-off-by: Johan Jonker <jbx6244 at gmail.com>
> ---
> Changed V3:
>   remove aclk_usb3_rksoc_axi_perf
>   remove aclk_usb3
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  6 +---
>  arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |  6 +---
>  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |  6 +---
>  .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      |  6 +---
>  arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts  |  6 +---
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |  4 ---
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |  6 +---
>  .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  4 ---
>  .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  4 ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  4 ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi |  6 +---
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  4 ---
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi |  6 +---
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  |  6 +---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 37 ++++++++--------------
>  .../boot/dts/rockchip/rk3399pro-vmarc-som.dtsi     |  4 ---
>  18 files changed, 24 insertions(+), 95 deletions(-)

This change is problematic since:

-    	    compatible = "rockchip,rk3399-dwc3";
+    	    compatible = "rockchip,rk3399-dwc3", "snps,dwc3";

This means that an existing "glue" driver will now attach to the node
for the actual DWC3 controller.  Not sure what the consequences
exactly are on Linux, but on other systems that consume device trees
(e.g. U-Boot, OpenBSD) this may break things because only the glue
driver attaches.  And even if on Linux both the "glue" driver and the
"core" driver can share a single device tree node, this will still lead to
multiple drivers manipulating the same clocks and resets, which I
think is undesirable.

You could introduce a new rk3399-specific compatible for the node.
But I don't think this device tree binding change is helpful.

Cheers,

Mark
