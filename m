Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 856FB5182FF
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 13:02:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234279AbiECLGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 07:06:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233840AbiECLGA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 07:06:00 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 182F13336F
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 04:02:29 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nlqIS-0000jV-BY; Tue, 03 May 2022 13:02:24 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Date:   Tue,  3 May 2022 13:02:22 +0200
Message-Id: <165157539006.562013.6067790581243150887.b4-ty@sntech.de>
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

[07/24] drm/rockchip: dw_hdmi: add rk3568 support
        commit: 28bbb5ffbe32741e65d798070986d212cc11e1bb
[08/24] dt-bindings: display: rockchip: dw-hdmi: Add compatible for rk3568 HDMI
        commit: 77b0693f875d4d916d0518ac0de68d4d0de3934f
[09/24] drm/rockchip: dw_hdmi: add regulator support
        commit: ca80c4eb4b01a7f1c2f333d0a329937ef9c7f03a
[10/24] dt-bindings: display: rockchip: dw-hdmi: Add regulator support
        commit: 80266ccb864b6443fd0bf54bb17444d2632fad21
[15/24] dt-bindings: display: rockchip: dw-hdmi: Make unwedge pinctrl optional
        commit: 6e944f52a225484b87bb343d0ba28165edf04b19

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
