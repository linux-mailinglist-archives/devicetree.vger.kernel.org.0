Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD5F4520E83
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 09:33:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238250AbiEJHgo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 03:36:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239371AbiEJHN3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 03:13:29 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 262BC2AC6FB
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 00:09:33 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1noJzk-0007T2-Ks; Tue, 10 May 2022 09:09:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1noJzi-001RkD-AF; Tue, 10 May 2022 09:09:16 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1noJzf-009qKA-Pf; Tue, 10 May 2022 09:09:15 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] RK356x VOP2: Change register space names
Date:   Tue, 10 May 2022 09:09:11 +0200
Message-Id: <20220510070914.2346011-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
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

The VOP2 driver sitting in next uses named register spaces, but the
binding lacks documentation for that. Add the missing documentation
and while at it take the opportunity to rename the register spaces
from too generic "regs" to "vop" and from "gamma_lut" to better looking
"gamma-lut".

Sascha Hauer (3):
  dt-bindings: display: rockchip: make reg-names mandatory for VOP2
  drm: rockchip: Change register space names
  arm64: dts: rockchip: rk356x: Change VOP2 register space names

 .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi                  | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c              | 4 ++--
 3 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.30.2

