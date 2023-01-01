Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8629965A8BE
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 04:34:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbjAADew (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 22:34:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjAADev (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 22:34:51 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CE5060FF
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 19:34:51 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AA07260CF3
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 03:34:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76D91C433D2;
        Sun,  1 Jan 2023 03:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672544090;
        bh=M4r5+VwR7jMHaUy3smZRNJqauuNBHen02wBEddMJ1IM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lAnb84bBNA851UKPlm3E2fmuip3iX2oHd9X/G8ta8XsGKjrRM17HTUPpm5UC70ayu
         e/SoEiQyfOn9OD3OxLJ+Zd2/0Oc6jVdkRIUoutv+woV9Qn+tmzFeRd30+LVvh9Yeaz
         6pM8HM5V3cB9QVUvlz6Vh0b/nqsOigSBcoBPyo3yl2F4UlMUwXNb0QpEKM38XTEt91
         xJhKr0KFPjy4h3P6NN3G/dAFelDUghPh8EStLN6tfc9zQeaHE/8hfgZe3aYwHqVZe9
         +kODHbBGXMbN8L9cbHLHhg6Fr0elekNO6M5aFFNs8QWnby0+W3+EQ9B0JxGpj9o2P7
         qBLEYpBpLtOFw==
Date:   Sun, 1 Jan 2023 11:34:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/7] ARM: dts: mxs: Drop dma-apb interrupt-names
Message-ID: <20230101033441.GS6112@T480>
References: <20221217010855.632301-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221217010855.632301-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 17, 2022 at 02:08:49AM +0100, Marek Vasut wrote:
> Drop "interrupt-names" property, since it is broken. The drivers/dma/mxs-dma.c
> in Linux kernel does not use it, the property contains duplicate array entries
> in existing DTs, and even malformed entries (gmpi, should have been gpmi). Get
> rid of that optional property altogether.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!
