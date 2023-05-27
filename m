Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC007134DC
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 15:02:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbjE0NCh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 09:02:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjE0NCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 09:02:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 011A1F3
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 06:02:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9117B60B9D
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:02:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06584C433EF;
        Sat, 27 May 2023 13:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685192555;
        bh=yjmBBIb52zW131QQFgr5uyH/9BLgLxIJMoS0r4knIMA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PpZG7cIEyt+LNQrDLCA0K5ykp0LoDW8E1Yr5yDgaY1yfYoWHZMlcsi7Biv/EV9Trg
         mOyLnnSpX4P30qAXOW5XhcyNhJHchcoKMxyFoS+CGAxjKD6JlYF7lzlFFO/K0959w4
         M4uWZHEyxR9O9tWeLI3rkYj0NE8OYV5SvPd94Q2HLsWOShBW0ACaR6yA6GlJvGpJkC
         OeY3+4m2R/ViaT9AAqQ/2rysZTb6IwYoif1C9qmTbwASyndRoj351LqZOPlt6eXNg8
         En8WPjAz9jnzuqfLqK+luwT50nb26yVFwKADdYPOFwA7DK60+bcKcCTRzYQucQWK24
         ShEZewicn5N6g==
Date:   Sat, 27 May 2023 21:02:22 +0800
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
Subject: Re: [PATCH v2] arm64: dts: imx8mp: Enable SAI audio on MX8MP DHCOM
 PDK2 and PDK3
Message-ID: <20230527130222.GX528183@dragon>
References: <20230527102233.5789-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230527102233.5789-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 27, 2023 at 12:22:33PM +0200, Marek Vasut wrote:
> Add SAI I2S and audio bindings on MX8MP DHCOM PDK2 and PDK3.
> 
> The VDDA is supplied from on-carrier-board regulator, the VDDIO
> is supplied from always-on on-SoM regulator. Except for different
> I2C bus used to connect the codec, the implementation is virtually
> identical on both carrier boards.
> 
> Align regulator-avdd name to regulator-3p3vdd on PDK3, since this
> is the VDDA supply and it is the same on both carrier boards.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
