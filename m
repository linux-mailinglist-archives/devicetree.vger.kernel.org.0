Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A312D518109
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233394AbiECJdF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 05:33:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233375AbiECJdE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 05:33:04 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 296B534641
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:29:31 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nloqT-0008U7-K5; Tue, 03 May 2022 11:29:25 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        linux-rockchip@lists.infradead.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Date:   Tue,  3 May 2022 11:29:24 +0200
Message-Id: <165157015917.325387.3625068865489692501.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
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

On Fri, 22 Apr 2022 09:28:17 +0200, Sascha Hauer wrote:
> It's v11 time. There's only one small change to v10. Discussion seems to
> have settled now. Is there anything left that prevents the series from
> being merged? I'd really like to have it in during the next merge
> window.
> 
> This series still depends on:
> drm/rockchip: Refactor IOMMU initialisation (https://lists.freedesktop.org/archives/dri-devel/2022-April/349548.html)
> arm64: dts: rockchip: add basic dts for the radxa rock3 model a
> 
> [...]

Applied, thanks!

[06/24] arm64: dts: rockchip: rk3399: rename HDMI ref clock to 'ref'
        commit: bd820bc5e77087a71a42c36f2660b8a35d2c01a5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
