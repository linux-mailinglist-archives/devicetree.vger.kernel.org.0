Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09F2F713432
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 13:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjE0LMf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 07:12:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbjE0LMe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 07:12:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7C8DEB
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 04:12:33 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 37FC060B9D
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 11:12:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFE3FC433D2;
        Sat, 27 May 2023 11:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685185952;
        bh=DHie1fsJ4lVJ6CPFrMrG9ZP2iRmTlEn7Qk6fw43xqrE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Daca2Bu2NINYXEw2GJH+JMQnCNcxPOmhhHYW1c19rR6U509RWklMPTtwlrquPzGmY
         HYvJkNThtBrSLwJgw6qPdhf3sLadxaeVG9Tv7uMu/cnc9r4EDy04BDNhiaazJ/A9zJ
         C7ogE7Rt1ms1rNa2KD3+ejoQfg73gAe+sXUuaugUJsw7SFWpnhGaU+titzqNWf21cw
         51OztUthrFnoRqnjEgyolrlW0yZVkbTXUEJVlwYwx7iU3QT0sJv1X3kMLuzrmIQ5vw
         5EYVtI+dCuBPYEv20xV88843ESz7thkt2jmKiGneDCFkzn6tNPSnLOlFWdHH3UwMNz
         4SUy/93WQOv8g==
Date:   Sat, 27 May 2023 19:12:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev
Subject: Re: [PATCH v2] arm64: dts: imx8qm-mek: correct GPIOs for USDHC2 CD
 and WP signals
Message-ID: <20230527111219.GO528183@dragon>
References: <20230518135421.1905616-1-shenwei.wang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230518135421.1905616-1-shenwei.wang@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 18, 2023 at 08:54:21AM -0500, Shenwei Wang wrote:
> The USDHC2 CD and WP sginal should be on LSIO_GPIO5.
> 
> Fixes: 307fd14d4b14 ("arm64: dts: imx: add imx8qm mek support")
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Applied, thanks!
