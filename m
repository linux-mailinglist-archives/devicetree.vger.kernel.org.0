Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2622765A8B3
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 04:12:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbjAADM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 22:12:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjAADMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 22:12:55 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F96C63ED
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 19:12:54 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 046D8B80956
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 03:12:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8431CC433D2;
        Sun,  1 Jan 2023 03:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672542771;
        bh=+B53eudwEe2S2SfAuzgUM11q/PFmBztjv5d3nsd4Xis=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sav0NKcZVsU9fDaRt3/idu0w56O4F64NHlijRJlbhW78ZM0Lw6t4TV0vM/Z9D3DLb
         sGVDKVnR4ATqvS1l7pGowbjXOvoBwhBPuKQBgA3H2XdJ6KAsP96QWt0Sv7Pzlvng6H
         AAAQjkXja8YrpeSG7SBqvNmKZgf2Ux3kR1mcqZ0IJCE0ahdepZhaZ2wn28Cadb1ZUh
         x0uOUs9yT5Dj2yY2wCaVwZKdreuZJ7ac2Sjw8rUZhaRh6szk4sEOLrSEcIo6dVkyHE
         2wPioIBeugVmzIfr5WDG+SI1Z3vNZhL9nt7NFFCI63GuT5nGKZY+V+Ao2K/J3Dolr1
         EZkjcxIZuIxvw==
Date:   Sun, 1 Jan 2023 11:12:44 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: soc: imx8mp-hsio-blk-ctrl: add clock
 cells
Message-ID: <20230101031243.GO6112@T480>
References: <20221216200821.3230165-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216200821.3230165-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 09:08:17PM +0100, Lucas Stach wrote:
> The HSIO blk-ctrl has a internal PLL, which can be used as a reference
> clock for the PCIe PHY. Add clock-cells to the binding to allow the
> driver to expose this PLL.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied all, thanks!
