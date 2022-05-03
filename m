Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 870025180FF
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:26:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230204AbiECJaM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 05:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233336AbiECJaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 05:30:10 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28F1222AD
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:26:37 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nlonh-0008SU-NK; Tue, 03 May 2022 11:26:33 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>
Subject: Re: (subset) [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Date:   Tue,  3 May 2022 11:26:32 +0200
Message-Id: <165156994608.323667.422449653800274598.b4-ty@sntech.de>
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

[02/24] drm/rockchip: Embed drm_encoder into rockchip_decoder
        commit: 540b8f271e53362a308f6bf288d38b630cf3fbd2
[03/24] drm/rockchip: Add crtc_endpoint_id to rockchip_encoder
        commit: cf544c6a885c52d79e4d8bf139fb8cb63a878512
[04/24] drm/rockchip: dw_hdmi: rename vpll clock to reference clock
        commit: a9d37e684492ab5db1cce28b655e20c01191873f
[05/24] dt-bindings: display: rockchip: dw-hdmi: use "ref" as clock name
        commit: a5fc012e6ee75a899173398573e77207542f588a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
