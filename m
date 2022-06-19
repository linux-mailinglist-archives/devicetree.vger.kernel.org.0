Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A251E55096A
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 10:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbiFSIzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 04:55:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbiFSIzo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 04:55:44 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2808261E
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 01:55:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5FD6EB80CAF
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 08:55:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA66EC34114;
        Sun, 19 Jun 2022 08:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1655628940;
        bh=nJPMK9nTgO4dafpq0LGPioqb+cPCOBoquc5xjccSSxo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BSQL/k5IStlWR/vG10U7YGvtLvHdG53HRTS8e7okkIPQOqOBJy6aenU/jn1wVkUgR
         xpXLGANTrW5KUPLk8CO1Ee3MjsP9Mnmwd3bF8wkF8VxpylicOwfxP/4a4U6e1wih+P
         XTB84L0oDxOdpB3AneuhV5BBCtjFZSWptAZgV39UJNhDX4CnLwxiMAUyP8Gl/wWk8x
         E8IM/EKrc3P9JDchmgol6SUg26tB9aD/Uitd/+GN3Gu2vR4Dz7rE9mULgAgogSxV5w
         FnOIQx7RUPSeim39uQBQ/v5S2k3Qm6EZld/s/t02U7qr6By7icgsZ01PciTZ5Xf2Ee
         XN3ZwheA/GdiA==
Date:   Sun, 19 Jun 2022 16:55:34 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/7] ARM: dts: imx6ul: add missing properties for sram
Message-ID: <20220619085534.GJ254723@dragon>
References: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 13, 2022 at 02:33:51PM +0200, Alexander Stein wrote:
> All 3 properties are required by sram.yaml. Fixes the dtbs_check
> warning:
> sram@900000: '#address-cells' is a required property
> sram@900000: '#size-cells' is a required property
> sram@900000: 'ranges' is a required property
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied all except #4, thanks!
