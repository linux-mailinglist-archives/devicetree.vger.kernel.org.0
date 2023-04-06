Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79BB96D8D17
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 03:55:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbjDFBzv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 21:55:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231696AbjDFBzu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 21:55:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 631B07EE6
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 18:55:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0F010629EB
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 01:55:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 312BFC433D2;
        Thu,  6 Apr 2023 01:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680746127;
        bh=SVfqk6EOmF0xlkJ1Aw6lWBX0m9O7iHE0tPT8SaU6NVI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Mks0Xvlc0tuLxQfulMNJjPssTcwPSnIZRH8sbbZAt0SWA/Cx37DKZVf0/Q38BmUOG
         uHjFM9WxOtqfz/ggiP5JVkHndzKvVrtScUBwrq9SW+HDBlMv1xJYO92opkPx3Lwxrq
         9FldwgF6osmzdKck/12pVnjMSOCQrTRV63jeRHW6WDMjIkNLihsAv8s+Y+k17Qt1bh
         RDm872qxO6r0L0Do7jXXE2APuAMwqk5stKZgZ7QbgCghPEzI7O04o16uDYuA64NNnM
         wcbcOOznVsP2If/voDH9+cp3PNcQTIQh5MfmVEUtfwEP6ullUVRI1+QY3n0UKssCYq
         6YPhg07yarKKw==
Date:   Thu, 6 Apr 2023 09:55:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: imx8mm: Add display pipeline
 components
Message-ID: <20230406015519.GO11367@dragon>
References: <20230405165214.95574-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230405165214.95574-1-marex@denx.de>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 05, 2023 at 06:52:12PM +0200, Marek Vasut wrote:
> Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Mini.
> This makes the DSI display pipeline available on this SoC.
> 
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!
