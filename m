Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D69FC52AAA0
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 20:23:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231673AbiEQSXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 14:23:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349846AbiEQSXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 14:23:00 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA46549924
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 11:22:54 -0700 (PDT)
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.dip.tu-dresden.de)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nr1qJ-0003jU-Mh; Tue, 17 May 2022 20:22:47 +0200
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
Subject: Re: (subset) [PATCH v2 0/3] RK356x VOP2: Change register space names
Date:   Tue, 17 May 2022 20:22:45 +0200
Message-Id: <165281160018.3114782.11789301841045790967.b4-ty@sntech.de>
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

[3/3] arm64: dts: rockchip: rk356x: Change VOP2 register space names

applied as fixup to
[16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
        commit: 9b3c9f6e57ef26b8478da64e3d49d0438291a98a



Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
