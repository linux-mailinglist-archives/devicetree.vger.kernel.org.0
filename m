Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16958519EF1
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 14:08:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241847AbiEDMLt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 08:11:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234191AbiEDMLt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 08:11:49 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D18AE1DA59
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 05:08:11 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nmDnc-0001Vf-Sm; Wed, 04 May 2022 14:08:08 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Peter Geis <pgwipeout@gmail.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-arm-kernel@lists.infradead.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>, kernel@pengutronix.de
Subject: Re: (subset) [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Date:   Wed,  4 May 2022 14:08:07 +0200
Message-Id: <165166602794.882666.15451667003983474386.b4-ty@sntech.de>
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

[21/24] drm/rockchip: Make VOP driver optional
        commit: b382406a2cf4afaa7320a7ad4b298ed6e2675437
[22/24] drm: rockchip: Add VOP2 driver
        commit: 604be85547ce4d61b89292d2f9a78c721b778c16

 - Made checkpatch --strict happier
 - move vop2.h binding header over to here

[23/24] dt-bindings: display: rockchip: Add binding for VOP2
        commit: 74015e2650bad641a02100cdf0ac23a96c1a2553
[24/24] dt-bindings: display: rockchip: dw-hdmi: fix ports description
        commit: 4073e42028de0f6ebbd86a9b30aaa5501bcdff59

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
