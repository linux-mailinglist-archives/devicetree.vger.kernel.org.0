Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F37C74A2C2A
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 07:40:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235749AbiA2GkX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 01:40:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229958AbiA2GkU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 01:40:20 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA314C061714
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 22:40:19 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5FFB660B86
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 06:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4136CC340E5;
        Sat, 29 Jan 2022 06:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643438418;
        bh=PyP5Y3bjFkC2DUcZu1bQVPAfu+/8vZqoScF/0L5iwy8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rxZwspzPJAGLUbqZXXFbBr7QaeKHa2Ds4g7CLFKJavAJXYq9KXYPyh4H9YQ3bS6wx
         X+lYBWFRW+yKccue9EVnbE8gmQmr2GxTnwzJd17QhPBMfg0tQbAFEaDCU+LQmP8jtG
         INtCdFcDHhTNLdTTPvb7pTTwZ4nbhQ3dFj177GNbNOtwFKGZv9ZilmWK4EpG889Za3
         bhzg/GHzhitR+FfaYQHDaaMkYqOwfbAY4nSA4DXhE4b6sdmUTZrpVCI02LFQ29PeIz
         tDyVY/6MPFh3i6KRJKZwsCgcVVPEGw5ICUw16lt7yLTVURFWLDf6ZyRcW8PZNaCm61
         +MTKKiMb9qIeg==
Date:   Sat, 29 Jan 2022 14:40:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Peng Fan <peng.fan@nxp.com>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mq: fix lcdif port node
Message-ID: <20220129064012.GV4686@dragon>
References: <20220125091646.2845111-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220125091646.2845111-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 25, 2022 at 10:16:46AM +0100, Alexander Stein wrote:
> The port node does not have a unit-address, remove it.
> This fixes the warnings:
> lcd-controller@30320000: 'port' is a required property
> lcd-controller@30320000: 'port@0' does not match any of the regexes:
> 'pinctrl-[0-9]+'
> 
> Fixes: commit d0081bd02a03 ("arm64: dts: imx8mq: Add NWL MIPI DSI controller")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
