Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2B956B88ED
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 04:23:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbjCNDXt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 23:23:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbjCNDXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 23:23:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B39F8EA29
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 20:23:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ABA74615BC
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 03:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92E8CC433D2;
        Tue, 14 Mar 2023 03:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678764226;
        bh=Tff8o05q2gl957aHs9Zh+vRcVLCf9bKEoeK0kFX5L3A=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gc9yFTd6Fc6w4AP9MdkiFXAnCIkaPum+QDiI50ZZ2ug22uDMrVGt6A5ZbH7isbTKc
         VdVgVoC6xpuy9YTUXdcFNz3xeJgG947+OXZyJw5byRljcmW/GS43WhVjA79vjU+Z+8
         E6xX+Jp0XiKslSv/4Jap7ZU1363AY/PQM+rqtCOf8rKInIoN5VHPxY3EGXtufoe2lV
         wJ6qhEzTLVa9YGSbL4LVgTDcABQOpm2ARZMb1vPT+X9IFY1umU9tIMiu1J7/4ZqrL7
         0DoB/g13B0CdqkouVwrIFL+4IKzS35vgY/R+QjaqkAJhWIqxF0iOmfLhAJloaGrahB
         0y3u0/driYhgw==
Date:   Tue, 14 Mar 2023 11:23:40 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp-debix: add USB host support
Message-ID: <20230314032340.GN143566@dragon>
References: <20230228170247.910655-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228170247.910655-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 06:02:47PM +0100, Lucas Stach wrote:
> This adds support for the 4 USB3 host ports on the board, which are
> connected to the i.MX8MP SoC via a Realtek RTS5411 hub.
> 
> As the schematic for the board is not available, I could not validate
> that this really reflects the reality, but I modeled things after the
> hacked in usage of the GPIOs in the downstream kernel.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!
