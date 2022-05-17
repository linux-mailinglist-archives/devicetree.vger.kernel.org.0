Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C658852AAA3
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 20:23:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbiEQSXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 14:23:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243835AbiEQSXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 14:23:01 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7ACC496A7
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 11:22:54 -0700 (PDT)
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.dip.tu-dresden.de)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nr1qJ-0003jU-AF; Tue, 17 May 2022 20:22:47 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
        kernel@pengutronix.de,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Date:   Tue, 17 May 2022 20:22:44 +0200
Message-Id: <165281160018.3114782.17441294438347634076.b4-ty@sntech.de>
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

Applied for 5.20.

The vop2 dt-binding header is going through the drm tree and
the reg-names addition is going through drm-misc-next-fixes
into the 5.19-rc kernels and this is a big bunch of dt changes
so I'm leaving them for 5.20.

[16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
        commit: 9b3c9f6e57ef26b8478da64e3d49d0438291a98a
[17/24] arm64: dts: rockchip: rk356x: Add HDMI nodes
        commit: db24799d31e7149bd8495a5f41c408434ca1a654
[18/24] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
        commit: f2cdaaae9b947970842196ac93d71b0daad3e629
[19/24] arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a
        commit: 97d7309a70b03d01a154c4308f423b020f7d397e
[20/24] arm64: dts: rockchip: enable vop2 and hdmi tx on rock-3a
        commit: 281f94d9cbac31c1c112d09883bc42021435f1ad

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
