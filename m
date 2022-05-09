Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0921A51F79C
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 11:12:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230104AbiEIJNN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 05:13:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231675AbiEIIl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 04:41:59 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B94321E12
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 01:38:06 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nnytn-0007CJ-6Y; Mon, 09 May 2022 10:37:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nnytj-001G7v-To; Mon, 09 May 2022 10:37:42 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nnyth-005EQO-Lh; Mon, 09 May 2022 10:37:41 +0200
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
Subject: [PATCH v12 0/3] drm/rockchip: RK356x VOP2 support last fixups
Date:   Mon,  9 May 2022 10:37:35 +0200
Message-Id: <20220509083738.1246866-1-s.hauer@pengutronix.de>
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

This is not the full series, if you want that, look for v11.

This series merely has a last-minute change: The VOP2 driver used
platform_get_resource_byname() to get its registers, but the reg-names
property hasn't been documented in the binding. This series adds the
missing documentation and along the way renames the generic "regs"
name to "vop" and "gamma_lut" to "gamma-lut".

Sascha


Andy Yan (1):
  drm: rockchip: Add VOP2 driver

Sascha Hauer (2):
  arm64: dts: rockchip: rk356x: Add VOP2 nodes
  dt-bindings: display: rockchip: Add binding for VOP2

 .../display/rockchip/rockchip-vop2.yaml       |  146 +
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   51 +
 drivers/gpu/drm/rockchip/Kconfig              |    6 +
 drivers/gpu/drm/rockchip/Makefile             |    1 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    1 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    6 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2706 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  477 +++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  281 ++
 include/dt-bindings/soc/rockchip,vop2.h       |   14 +
 14 files changed, 3713 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
 create mode 100644 include/dt-bindings/soc/rockchip,vop2.h

-- 
2.30.2

