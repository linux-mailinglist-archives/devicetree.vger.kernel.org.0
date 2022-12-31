Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C28D065A30B
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 08:14:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbiLaHOr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 02:14:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbiLaHOq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 02:14:46 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EFAB13E88
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 23:14:45 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 394EB60A05
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:14:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2924EC433D2;
        Sat, 31 Dec 2022 07:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672470884;
        bh=ZN6QHVB394B7Frff9NIlCURYrLcBH+PjQcMn9gK0xOw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LYjwI4sCXJht2r90v9XgCTGfQkohWqAPtLqyxpAJAjs3ccfLzycCUCNTS0fvjdJNg
         VA1Mn7vc2ngI4jYj/zbvLuCnkHHdM9+MVlXQR41BB6lPv/sVLcTbm6x3EtOyCWtm0N
         DOVJqMCbDhCJ6XfLiz6umKBiNrp7yoWED+E3wnW1cmol6e5EKFE0RV0vwafAe368yx
         qxOHTm8+7smU10PM95Ke4rEWjJikigeZWb6mPPdFiXuQQAp1S+TCwDbm6ZfNy1nFou
         F8z5m1sClDyJ/Ly2HioqkCi1sZyS57S3/K4OBW5kWeSFkRV/wl8wg/sqZqhHbecF4M
         8llwjAc+kisMA==
Date:   Sat, 31 Dec 2022 15:14:39 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 1/2] ARM: dts: imx6ul-pico-dwarf: Use 'clock-frequency'
Message-ID: <20221231071423.GH6112@T480>
References: <20221121163124.2378017-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221121163124.2378017-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 01:31:23PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> 'clock_frequency' is not a valid property.
> 
> Use the correct 'clock-frequency' instead.
> 
> Fixes: 47246fafef84 ("ARM: dts: imx6ul-pico: Add support for the dwarf baseboard")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!
