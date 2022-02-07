Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A2EF4AC994
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 20:31:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234604AbiBGTav (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 14:30:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240205AbiBGT2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:28:04 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57C7EC0401E1
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:28:04 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nH9g5-0002Yr-N6; Mon, 07 Feb 2022 20:27:57 +0100
Message-ID: <18037c1eb6ed901bf9c886587b5c9cf3c9625212.camel@pengutronix.de>
Subject: Re: (EXT) [PATCH 9/9] arm64: dts: imx8mp: add GPU nodes
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de
Date:   Mon, 07 Feb 2022 20:27:56 +0100
In-Reply-To: <4527167.VLH7GnMWUR@steina-w>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
         <20220119134027.2931945-10-l.stach@pengutronix.de>
         <4527167.VLH7GnMWUR@steina-w>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

Am Mittwoch, dem 26.01.2022 um 14:51 +0100 schrieb Alexander Stein:
> Am Mittwoch, 19. Januar 2022, 14:40:27 CET schrieb Lucas Stach:
> > Add the DT nodes for both the 3D and 2D GPU cores found on the i.MX8MP.
> > 
> > etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
> > etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> > [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0
> 
> Unfortunately it does not work when CONFIG_DRM_ETNAVIV=m
> etnaviv-gpu 38000000.gpu: model: GC0, revision: 0
> etnaviv-gpu 38000000.gpu: Unknown GPU model
> etnaviv-gpu 38008000.gpu: model: GC0, revision: 0
> etnaviv-gpu 38008000.gpu: Unknown GPU model
> 
> When I use CONFIG_DRM_ETNAVIV=y, I get the same log message as you. It's not 
> related to this patch, but I have no clue if the cause is in blk-ctrl or pgc.

Thanks for the report. This was caused by some wrong clock handles in
the GPU and GPC nodes. Fixed in v2.

Regards,
Lucas

