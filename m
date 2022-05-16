Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B46052938D
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 00:26:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235691AbiEPW02 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 18:26:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349674AbiEPW0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 18:26:17 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD24D5FCA
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 15:26:13 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nqjAF-0006dU-SP; Tue, 17 May 2022 00:26:07 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/3] RK356x VOP2: Change register space names
Date:   Tue, 17 May 2022 00:26:06 +0200
Message-Id: <165273995327.2730627.1184879959293003586.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511082109.1110043-1-s.hauer@pengutronix.de>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
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

On Wed, 11 May 2022 10:21:06 +0200, Sascha Hauer wrote:
> The VOP2 driver sitting in next uses named register spaces, but the
> binding lacks documentation for that. Add the missing documentation
> and while at it take the opportunity to rename the register spaces
> from too generic "regs" to "vop" and from "gamma_lut" to better looking
> "gamma-lut".
> 
> Changes since v1:
> - Fix dt_binding_check errors
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: display: rockchip: make reg-names mandatory for VOP2
      commit: 54eb8d446e710b5f77969bd34f0a162cf86b8d29
[2/3] drm: rockchip: Change register space names
      commit: 5ee8c8f930ba7d20717c4fc2d9f1ce0e757d1155

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
