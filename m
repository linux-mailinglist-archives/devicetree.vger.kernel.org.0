Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31E2E4AD9BF
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:27:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351971AbiBHN13 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:27:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356788AbiBHN1S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 08:27:18 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80B21C053948
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 05:21:42 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nHQQf-0001hi-Mn; Tue, 08 Feb 2022 14:21:09 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: (subset) [PATCH v4 00/27] drm/rockchip: RK356x VOP2 support
Date:   Tue,  8 Feb 2022 14:21:08 +0100
Message-Id: <164432645809.224154.14508109264790464267.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 Jan 2022 15:55:22 +0100, Sascha Hauer wrote:
> This is v4 of adding RK356x VOP2 support. Due to popular demand I added
> a changelog to each patch, at least starting with changes to v3, I
> didn't care to add the older changes as well. I hopefully integrated all
> feedback I received to v3. Additionally I added some patches to the HDMI
> driver to support resolutions up to 4k@60Hz. The patches are mostly
> taken from the downstream kernel. Some have been send to public lists,
> but were never applied upstream for reasons I do not know. The patches
> are a bit more intrusive than needed for my case, but are present in the
> downstream kernel for a long time, so I decided just to take them
> instead of stripping them down to my needs. With these patches I
> successfully used the driver with 4k@30Hz. 4k@60Hz doesn't work for me,
> I hope this is due to my low quality cable.
> 
> [...]

Applied, thanks!

[18/27] arm64: dts: rockchip: rk3399: reorder hmdi clocks
        commit: 2e8a8b5955a000cc655f7e368670518cbb77fe58

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
