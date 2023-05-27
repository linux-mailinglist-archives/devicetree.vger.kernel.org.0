Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE7A71334A
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbjE0IYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:24:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230079AbjE0IYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:24:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95605E1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:24:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3291961349
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:24:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E371C433EF;
        Sat, 27 May 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685175852;
        bh=oe1bFSjPFC7aAo7kx8CjL5ute0kXP6a2xVcKGImnNHs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JVNnvEXy9gDEJP/+4bf1OE53AQrxVITwbqdDpvDetOPIVtPaTr9u8Zh0MXvGJzeZd
         Yc/A5+gL72dI2cT3idP0xgKCaQXsckLiQiUJDeuDcanNqHk+hNxrpMB7ZGDhdWfZq+
         12H32K1j0yVzEunuv+MkIA0J8LXyKqBYOrVOvwYgWuRZn9pyk8qjzLsSnip8JmDf37
         uUeT/pnHIFBD0SBlRcNnLdtP6wY1KEtACAnLAg9628cZSDmEqS7BVuUcX24l7h/xMx
         4sPjmxTNVD3xvuJzCba6WyzdADG2ASrqDyupuiD0kpX/DSsv0kFMm5z1+ZW//etOVu
         9MUuiugMTVh2Q==
Date:   Sat, 27 May 2023 16:24:01 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Describe PCIe clock generator on DH
 electronics i.MX8M Plus DHCOM on PDK3
Message-ID: <20230527082401.GC528183@dragon>
References: <20230515155102.61227-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230515155102.61227-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 05:51:02PM +0200, Marek Vasut wrote:
> The PDK3 carrier board contains a PCIe clock generator which is used to
> supply the PCIe clock lanes. This generator is always on, unless external
> CLKREQ signal toggles an output off, but this is handled in hardware. The
> generator does however have I2C interface, describe it in DT.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
