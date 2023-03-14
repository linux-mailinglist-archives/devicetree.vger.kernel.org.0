Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78A2A6B88BE
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 03:49:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjCNCtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 22:49:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjCNCsw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 22:48:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F8A43019D
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 19:48:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DEB44615AA
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 02:48:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACE58C433EF;
        Tue, 14 Mar 2023 02:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678762129;
        bh=Eh4E+QI78Si3pxWYhHAhy3bDyLBbf9TM1uxDmfqh3NA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=M0TtB99wT+64ZJJY0bZMygGlps0OqpboQhmcmXNEZYm5ja61dzRiGzmm5O8/cT+qS
         QOAV9U24Dca+YIkCZFRS59jiJiGzzrXT033gSjsYJGXXRJWqyDV1KQrRJWS2dw3ssv
         A4DQiaWbMKyKvmiuokaCM446z0ZN0y5RRdnWWWMbqaHzxrRlNwJEDK5XnPbDkYD4KA
         KO52AXKUWyRWsbV1zgtfbANjD2ZMkEgs3Pw6UqkDi3Y114B/0CJ7W1o2CPnIZOMWcg
         X+6SSbN154cY4Iqn8Pn/Up016whPTH1m6wNQFTGUyhZhCwE10qK28GKRMG+9ERfKlV
         /ZyUARqVKgFTQ==
Date:   Tue, 14 Mar 2023 10:48:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Clark Wang <xiaoning.wang@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        "David S . Miller" <davem@davemloft.net>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx93: Fix eqos properties
Message-ID: <20230314024842.GI143566@dragon>
References: <20230223060543.2862661-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230223060543.2862661-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 07:05:43AM +0100, Alexander Stein wrote:
> 'macirq' is supposed to be listed first. Also only 'snps,clk-csr' is
> listed in the bindings while 'clk_csr' is only supported for legacy
> reasons. See commit 83936ea8d8ad2 ("net: stmmac: add a parse for new
> property 'snps,clk-csr'")
> 
> Fixes: 1f4263ea6a4b ("arm64: dts: imx93: add eqos support")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
