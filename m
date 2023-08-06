Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B6FA771380
	for <lists+devicetree@lfdr.de>; Sun,  6 Aug 2023 05:50:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbjHFDuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 23:50:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjHFDup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 23:50:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E10161FDB
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 20:50:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BDAE160B7A
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 03:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BFBAC433C8;
        Sun,  6 Aug 2023 03:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691293843;
        bh=ftVxzKHsD+PtxsCwRhqHcJOLrA3UcBk5xxO9A24zm4Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t70ap41NrJ2uajv6xjJua4+zIfO+KaMNR/Rzsk/LGbEKZ3iPAiyoNaVGI8I/ipAz3
         LJjqUlCex04eFosKvTwzPF+qtvpzHwBQFfsrNDmJP7fPH9Jk4a/lphmydQu5nB9jCI
         Xu+XY/7+Uaq2KVGwlj/KlBKX6RK4LAM/nuizZXGoHwlW4YuX4EnuWt2ihoC+0jcvhT
         yOd+UsoOmsvNlmAaIiHJWC79tjfC7HWh110TqCIxv3hRUvDjBYe00gfYhfFua8AN54
         MW9/Zf1sMXiSb78muMvykbJs+hVOwu92Ef5JygNIIb/+Zeh3hP9cA+ACM0ONWgETUl
         DL6lsths4aupA==
Date:   Sun, 6 Aug 2023 11:50:31 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx93: Fix anatop node size
Message-ID: <20230806035031.GZ151430@dragon>
References: <20230728083435.118491-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230728083435.118491-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 28, 2023 at 10:34:35AM +0200, Alexander Stein wrote:
> Although the memory map of i.MX93 reference manual rev. 2 claims that
> analog top has start address of 0x44480000 and end address of 0x4448ffff,
> this overlaps with TMU memory area starting at 0x44482000, as stated in
> section 73.6.1.
> As PLL configuration registers start at addresses up to 0x44481400, as used
> by clk-imx93, reduce the anatop size to 0x2000, so exclude the TMU area
> but keep all PLL registers inside.
> 
> Fixes: ec8b5b5058ea ("arm64: dts: freescale: Add i.MX93 dtsi support")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
