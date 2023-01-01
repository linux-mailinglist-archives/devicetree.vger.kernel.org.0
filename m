Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7332865A8DC
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 05:51:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjAAEvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 23:51:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjAAEvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 23:51:42 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F450CC3
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 20:51:41 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E5A4E60C2D
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 04:51:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC95EC433EF;
        Sun,  1 Jan 2023 04:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672548700;
        bh=LsY80P78jhofG4mr8RTQkNnHZvRmhUyCfB/IV/5Y8yE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jwHCylUZW4oErq1V0yXuwwaoiIGfC9X/yb7w6gS7IJaky1g5K7j214NVXlJ0jHuum
         Mt6qenzIlbAipYezFTYPXZbl/MhjADVmPW/7r4OVrouD3XfzUDRx4YbBhiIf2pMYD6
         +e14oZolempPjj6fl+unBpQhSMpl7qIRvqMjkaZBGO3ko6qr0bhgp+yH677FVkscmb
         VikkHC658+tASHecuSuzfFvHHau17vEB4e/1uKcbtI2iMZ4ejLBtFF27nrveneHRJI
         pc80XeaHJ1kpxIyFxSOzTPC/r4iVnoKXLEqZm3JDL36ukJjFRBr6irS+8Cbe0/hiPM
         6Ey885pHFmXGQ==
Date:   Sun, 1 Jan 2023 12:51:34 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        festevam@gmail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp-evk: pcie0-refclk cosmetic cleanup
Message-ID: <20230101045133.GW6112@T480>
References: <20221220131024.1454495-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221220131024.1454495-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 20, 2022 at 02:10:24PM +0100, Marco Felsch wrote:
> Use the correct indention.
> 
> Fixes: d50650500064 ("arm64: dts: imx8mp-evk: Add PCIe support")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks!
