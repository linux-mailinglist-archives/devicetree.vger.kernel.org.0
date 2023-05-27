Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB217713425
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 12:48:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231180AbjE0KsL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 06:48:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbjE0KsK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 06:48:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 579E7D3
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 03:48:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CFC8961048
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 10:48:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50637C433D2;
        Sat, 27 May 2023 10:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685184488;
        bh=jp8yzmqn+yX/7ZyqNxnOtHF/5eAgz2dGP/AaMSfltz8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=n+a3XDFdOvxFFGY4HuT/KjUamLUpMovMLaakk2LZnXUarH/qlQ8TmFMnVdpKnLjTd
         S+B0D547jkoi0/k1z4f5El8b4Y4XDA+vXuamQVN0I/+yb663Y2vUEQ7V7GKuRMevzQ
         XnSTi3yB+gJXo8oSoNvptFbzZRl9fbz8STCvv1/AVa0P0F2j1/3z88gh/JYhd4AAZ7
         3mWlTeHOuVIStBqw2Ir+AA3EGPblCvZCIrOdntzR21NBzG7cHkJ4dgRWK+XP43H5w5
         zgcBKlglTySZNj4nw9XkuDNDXnvFt50BRFLYZl3Yw+Ioj7nni5F2sEJK2/yVMy4Xej
         3ZgwG7Qbea32Q==
Date:   Sat, 27 May 2023 18:47:57 +0800
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
Subject: Re: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics
 i.MX8M Plus DHCOM
Message-ID: <20230527104757.GL528183@dragon>
References: <20230515162424.67597-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230515162424.67597-1-marex@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 06:24:24PM +0200, Marek Vasut wrote:
> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
> DH electronics i.MX8M Plus DHCOM SoM . The bridge
> is populated on the SoM, but disabled by default
> unless used for display output.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
