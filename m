Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50E4829FE61
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 08:23:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725832AbgJ3HX4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 03:23:56 -0400
Received: from mail.kernel.org ([198.145.29.99]:47484 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725823AbgJ3HXz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Oct 2020 03:23:55 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 037AC2083B;
        Fri, 30 Oct 2020 07:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604042635;
        bh=uQ4lHEqUP4gQTFClr+cQs6FNskrffcmwM74ocjGlf9s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tMbMQLGGm7N5mbLwcIBPhj1hha3RJgvo5KCecDU1LIJumsCGXXhTft4uqfi58WbZl
         GkkIF6KQl5Y9PrbCsYsfZdVzSd64PDQj45sZwXkKG9Ccv9XJx7cobeIUFrR6wE1PHW
         3rlHIjxKxiK674SEPe+neqWGY7dayYCTanPCpcXo=
Date:   Fri, 30 Oct 2020 15:23:48 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     robh+dt@kernel.org, balbi@kernel.org, krzk@kernel.org,
        gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        Anson.Huang@nxp.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
        fugang.duan@nxp.com, horia.geanta@nxp.com, qiangqing.zhang@nxp.com,
        peter.chen@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/4] add NXP imx8mp usb support
Message-ID: <20201030072347.GG28755@dragon>
References: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1601726527-23326-1-git-send-email-jun.li@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 03, 2020 at 08:02:03PM +0800, Li Jun wrote:
> NXP imx8MPlus integrates 2 indentical dwc3 3.30b IP with additional wakeup
> logic to support low power, this wakeup logic has a separated interrupt
> which can generate events with suspend clock(32K); due to SoC integration
> limitation, it only can support 32 bits DMA, so add dma-ranges property,
> 
> changes for v5
> - Remove "Items" of compatible in binding doc [1/4]
> - Add Krzysztof's R-b tag for patches [3-4/4].
> 
> changes for v4:
> - Use dma-ranges property to limit 32bits DMA, so don't need the new
>   property "xhci-64bit-support-disable".
> - Fix binding doc to pass dt_binding_check dtbs_check.
> 
> changes for v3:
> - Add dwc3 core related clocks into dwc3 core node, and glue layer driver
>   only handle the clocks(hsio and suspend) for glue block, this is to
>   match real HW.
> - Change to use property "xhci-64bit-support-disable" to disable 64bit DMA
>   as imx8mp USB integration actully can't support it, so remove platform
>   data in v2.
> - Some changes of imx8mp usb driver binding doc to address comments from Rob
> 
> Changes for v2:
> - Drop the 2 patches for new property("snps,xhci-dis-64bit-support-quirk")
>   introduction, as suggested, imply by SoC compatible string, this is done
>   by introduce dwc3 core platform data and pass the xhci_plat_priv to
>   xhci-plat for those xhci quirks, so a new patch added:
>   [1/5] usb: dwc3: add platform data to dwc3 core device to pass data.
>   this patch is based on Peter's one patch which is also in review:
>   https://patchwork.kernel.org/patch/11640945/
> - dts change, use the USB power function of TRL logic instead of a always-on
>   regulator to control vbus on/off.
> - Some changes to address Peter's command on patch [2/5].
> 
> Li Jun (4):
>   dt-bindings: usb: dwc3-imx8mp: add imx8mp dwc3 glue bindings
>   usb: dwc3: add imx8mp dwc3 glue layer driver
>   arm64: dtsi: imx8mp: add usb nodes
>   arm64: dts: imx8mp-evk: enable usb1 as host mode

The last two dts patches look good to me.  Ping me for applying after
the first two are accepted.

Shawn
