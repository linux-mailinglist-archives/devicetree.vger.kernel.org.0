Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB83A630B0C
	for <lists+devicetree@lfdr.de>; Sat, 19 Nov 2022 04:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232445AbiKSDVz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 22:21:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232385AbiKSDVw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 22:21:52 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A4889E968
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 19:21:50 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3C15CB82687
        for <devicetree@vger.kernel.org>; Sat, 19 Nov 2022 03:21:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 598C1C433D6;
        Sat, 19 Nov 2022 03:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668828107;
        bh=u+kc/LfbGhcDRCFX8ZSkKdAtgGrk8wPsof7zAWha/Nw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WesWYWyTpnUVasjixatTAW/xNJaBqjrGFIgGN7N/fnWi5SFUOirJcX2PUVIRmD21g
         6X4yVxSdQtADgfndGKyFPwMh5jXfTP2+wZ3u+TR9XWCtAmvQ5fbFlb6PAaOPYQiwJ7
         xmp0xhjNKS6gl7Ea68OXBYJHaRKjqlG/sdD3Ct8cWZg/3g8ofBXwjQnSPI777sApKS
         /Ijad121Xhtn8Y0+W2RVqaV9wLmN/ZGjjJ2sB0eZ9gduBHZ4QvZH5Wc+VE8mSszDm0
         017cygaT4d72cy/96VKDWPU7HNiDjDt9MfEjPiCscBJ0iZhTIllAj00FNZAKvTLTWp
         5WgJ/GxsjX86w==
Date:   Sat, 19 Nov 2022 11:21:37 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6q-prti6q: Fix ref/tcxo-clock-frequency
 properties
Message-ID: <20221119032136.GN16229@T480>
References: <20221118134102.1767559-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221118134102.1767559-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 18, 2022 at 10:41:02AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> make dtbs_check gives the following errors:
> 
> ref-clock-frequency: size (9) error for type uint32
> tcxo-clock-frequency: size (9) error for type uint32
> 
> Fix it by passing the frequencies inside < > as documented in
> Documentation/devicetree/bindings/net/wireless/ti,wlcore.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Fixes: 0d446a505592 ("ARM: dts: add Protonic PRTI6Q board")

Applied with the Fixes tag, thanks!
