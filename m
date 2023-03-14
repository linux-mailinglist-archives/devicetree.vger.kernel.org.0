Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB85E6B87A9
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 02:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjCNBlH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 21:41:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbjCNBlH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 21:41:07 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88F4873AD8
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 18:41:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id DC3C9CE12C8
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:41:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6C86C433D2;
        Tue, 14 Mar 2023 01:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678758062;
        bh=oNitI2dgkV065gpQMLZ+OetKhFE6sdgDRRtK5wRXciA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XJ8mkqe6Jtum7fNmyvNQNY4/rQxlB1Mh/6ptCcuLBIABCykLxn4PKu+woKIa9lFF+
         Utv2QnQpc5yh9OKtc4mkieqQMg77FHuxHkvO1R9NRJ26feNUwnn/mOPlueuk/+edWe
         pWHNW8gBrgRXDym/RupxfLK4SI/Brx2XKGuUEDuuT8KAFS1W5L0N1SzjJ0kp3LKT83
         9CNDLwIfLcEYYj06RYYX75d03bCyWvyMvrzCT1yeuiHK7aN/zyh6L3FOvttFMxf+et
         tBtRudYJYTo2vGFhrb9h3Ux4PZZCvgl/JSmzc24Q6skPFw6yNlGDv0RI0bQTs8HKVE
         YOmFb/Uh3Td7g==
Date:   Tue, 14 Mar 2023 09:40:55 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Fix LCDIF2 node clock order
Message-ID: <20230314014055.GC143566@dragon>
References: <20230217191538.54810-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217191538.54810-1-marex@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 17, 2023 at 08:15:38PM +0100, Marek Vasut wrote:
> The 'axi' clock are the bus APB clock, the 'disp_axi' clock are the
> pixel data AXI clock. The naming is confusing. Fix the clock order.
> 
> Fixes: 94e6197dadc9 ("arm64: dts: imx8mp: Add LCDIF2 & LDB nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
