Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23F9665A8A6
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 03:43:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232429AbjAACnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 21:43:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjAACns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 21:43:48 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D29A22BEA
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 18:43:47 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8D1CAB802BD
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 02:43:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B86A1C433EF;
        Sun,  1 Jan 2023 02:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672541025;
        bh=GqQglhjHDlcVbkb5ZhUCG/eKFQi/kYsPk0Xk2AeWXs0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EctoI6sAjqOj3psbdWd2DhXJKh0Gjz45Jycu45w+u2sTDhf8ydHvzffVtTn2nIa+q
         hqIMBwln2SxJOpqFFI+Ua1bL1MyXmGHmqU+Qa6hfuleD87cQeSmLoQGiJB5b+PhpKT
         IKylYTEFcou4wo6NC9SJNysMXT3Tdpjt1TAMAbV04OkABmN5FDSAhAVerM9NKuVAuZ
         de1tCnS8pEpdh/AfXtwNvtvhzL/rrgGUi9kAt5RFL9Dj6VM6zLJcHSO2qVQkZvChv4
         fnLQf2z3F/+2j//+uCSFOSnO6qANh8WnaT6zB3Z8EOs0WWWyr8DNH3VnIWhn9HFSun
         uP91bpdMbPYCA==
Date:   Sun, 1 Jan 2023 10:43:39 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp: move PCIe controller clock config to
 SoC dtsi
Message-ID: <20230101024338.GN6112@T480>
References: <20221216195932.3228998-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216195932.3228998-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 08:59:32PM +0100, Lucas Stach wrote:
> The only difference in PCIe clock configuration between boards is how
> the PCIe reference clock is generated. The refclock configuration is
> fully contained in the PCIe PHY node, so the PCIe controller clocks
> can be set up in the SoC dtsi, as there is no reason for any board to
> use a different configuration.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!
