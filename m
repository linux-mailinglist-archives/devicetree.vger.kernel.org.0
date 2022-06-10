Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F8AC545F2E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jun 2022 10:33:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347974AbiFJIcE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jun 2022 04:32:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347998AbiFJIbX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jun 2022 04:31:23 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1718FB871
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 01:29:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AE26560A2A
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 08:29:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F336C3411C;
        Fri, 10 Jun 2022 08:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654849789;
        bh=oT8aHVwm4ef8+dog3Xs6mlBazfhCaPGmdM6V4JZkIu0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=D2pH6ETQXT3CVtl1SyuAPeKIMMlIZ7VR4gadvHgohGA/duxW786KpdG/lbI9umZvc
         REY/38VqMl9CPmi5u+f0cUQ1NXRrONrmv7VIzokQj8fmIFFTixqgWuFdEw6d2oM4QZ
         YlcWedKO6czWrnCtzwMAFDcRdsi5lUhkJQPJJW9xXb+Z3gW071o8M/ZBlJEdHfflvl
         0M5oiN/2ZIgvGDU1rz5zmNjjwBBP0juaHa0dfy0TVHDGoK0glCzWZJ/WmDhMtOuPA3
         sGWOsOwomKFQpwDW+zQ84mjnzUB0TNgnAfFC0fysVYiY/1cFJ48JWkwVmJo+yEdMBG
         fh9CSQrDB18bQ==
Date:   Fri, 10 Jun 2022 16:29:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, Jun Li <jun.li@nxp.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: imx7: Move hsic_phy power domain to
 HSIC PHY node
Message-ID: <20220610082942.GB254723@dragon>
References: <20220510054612.2389595-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220510054612.2389595-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 07:46:12AM +0200, Alexander Stein wrote:
> Move the power domain to its actual user. This keeps the power domain
> enabled even when the USB host is runtime suspended. This is necessary
> to detect any downstream events, like device attach.
> 
> Fixes: 02f8eb40ef7b ("ARM: dts: imx7s: Add power domain for imx7d HSIC")
> Suggested-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!
