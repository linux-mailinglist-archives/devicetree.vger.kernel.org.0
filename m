Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1611267C538
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 08:58:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233264AbjAZH6k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 02:58:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjAZH6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 02:58:39 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40A175A810
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:58:39 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BCC0A61738
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 07:58:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E886DC433D2;
        Thu, 26 Jan 2023 07:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674719918;
        bh=3BTMPJ2bvzCtmavcsqxg/5wY44Ch2vFIR//FJX1xqfo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FIvP7Eo7k2nUCMYDdizutViQ3vn37QM59lu74FFer8e33O+1muEln4I3kzrSEtNYH
         LkIvjln9wYCyjoDXxGUzYhUDLl6V8dlIpWRsmDuuV12cstOjRqi6EP28xMSZgv+wRK
         uTzFVZOgKM7ctC48urWs1N/kGNayL/5GTdtnxP/t4HUUd+TgVp7Sz2kuL1m+3UZVQG
         j5S324p1UcCWynZMHTN4cKXzTAlpnLpWwpKlUd3Rsq74Edk3QslMvcU7/AVwvCbm7X
         lDg2EXyueXrcu7rInUS5dbtsjsDOCxCxDvHdeWlZRQKE/Ivs8asT4xJqcy1syw53jO
         a/Krl0mmrYOyQ==
Date:   Thu, 26 Jan 2023 15:58:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: imx8mm: Drop sd-vsel-gpios from i.MX8M
 Mini Verdin SoM
Message-ID: <20230126075829.GB20713@T480>
References: <20230118030757.254086-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230118030757.254086-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 18, 2023 at 04:07:55AM +0100, Marek Vasut wrote:
> The VSELECT pin is configured as MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT
> and not as a GPIO, drop the bogus sd-vsel-gpios property as the eSDHC
> block handles the VSELECT pin on its own.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!
