Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 532DF6AB46B
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 02:55:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbjCFBz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 20:55:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjCFBz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 20:55:26 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26283E39F
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 17:55:26 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AEFF160B61
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 01:55:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31C89C433EF;
        Mon,  6 Mar 2023 01:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678067725;
        bh=2wFBO3MyCzcBWj9fCU0a5Bu7KDTZYfjM98EsoBfLlcI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mwddoMcCRcmgbJbpLlv/BveAd4kOYoLWIdl2NZMvb6QTqRd7ge2dc5N9seE696idj
         2TSK/cBctii3PG8KwU9DwXAB2Fk3v/hmW2y1SdAODDEKO4RrRsYtaa3dBbY2EEQOPi
         fHLnqIDLHLJL4e5cjtACyavwcZytPeqh6YEK5rz7iwLxAyDMOTB6ymvLWbLURsTouA
         UqGSOXg2cfYpNpNPpn3XyGTlwD1oBmYbl/MxRVcr56cgCEiUg91zu2dCUAuOfZmjrQ
         5hYKxhEKoQ9PILlTZJMzhKXXU8xYK49EMwZBwCHs84Vr0zOjy2zpytwN3jvfkxxtqm
         dPosIxw297ZaA==
Date:   Mon, 6 Mar 2023 09:55:02 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v11 1/2] arm64: dts: imx8mm-evkb: add support for
 i.MX8MM-EVKB
Message-ID: <20230306015502.GB143566@dragon>
References: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
 <20230130172553.2738182-2-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130172553.2738182-2-johannes.schneider@leica-geosystems.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 30, 2023 at 06:25:52PM +0100, Johannes Schneider wrote:
> Add devicetree for the EVKB, which comes with LPDDR4 and a different
> PMIC.
> 
> The regulator min/max values are taken from the evk's schematic:
> 8MMINILPD4-CPU  SPF-31399_C2.pdf
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

Applied both, thanks!
