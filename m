Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CED66B87C5
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 02:44:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbjCNBmm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 21:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230427AbjCNBma (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 21:42:30 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90059746C4
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 18:42:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 180EAB816D9
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:42:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80772C433EF;
        Tue, 14 Mar 2023 01:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678758137;
        bh=lMgkilh27v9kQ9ox9InRyGBDVkHg825zzRTEoRXBUzc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=d4QQB43gpmGpzQPTNfCJoDaz+On1H5ztt78ghxkMz/5/dXMxEvgwwZBSxQ2KYFy7W
         /l97jRtqmO6WJADyEjSTIMfVbDz3kijxg3PG5Uum5D12BNGYZbE4Cqogd5/N0NiLyw
         DDjZzFjXsXOG/LXqKsYWLcwLNX3PkUykSafeRqtxJ8hwDuNdIrEs6pi5IvlLc/Jt1B
         5tfXIXopBEhyH7BXfvJMdKxS5B+J9vhaA9+DnqEvSpfVez8rz9pCmzSvG4zQSxSq+n
         Z2BpzLJEZKxf8qxhWQSUiR/mseFPHz+U91bL1LGFBStp+153+Dtz9veIuBCEOr3wan
         ig17321xHdDqA==
Date:   Tue, 14 Mar 2023 09:42:10 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com
Subject: Re: [PATCH] arm64: dts: imx8mp: Add PCIe support to DH electronics
 i.MX8M Plus DHCOM and PDK2
Message-ID: <20230314014210.GD143566@dragon>
References: <20230217192444.61680-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217192444.61680-1-marex@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 17, 2023 at 08:24:44PM +0100, Marek Vasut wrote:
> Add PCIe support for DH electronics i.MX8M Plus DHCOM SoM on PDK2 carrier board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
