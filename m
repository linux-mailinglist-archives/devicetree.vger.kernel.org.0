Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9644E4AEEA3
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 10:55:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233113AbiBIJzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 04:55:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233152AbiBIJzJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 04:55:09 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B506E01CC94
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 01:55:03 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nHjfj-0002Om-EL; Wed, 09 Feb 2022 10:53:59 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nHjff-008qaO-SH; Wed, 09 Feb 2022 10:53:55 +0100
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
Subject: [PATCH v5 00/23] drm/rockchip: RK356x VOP2 support
Date:   Wed,  9 Feb 2022 10:53:27 +0100
Message-Id: <20220209095350.2104049-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
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

This is v5 of adding RK356x VOP2 support. I've dropped the patches that
Heiko already applied, for testing either apply to linux-next or pick
the missing clk patches from v4.

I consider this series being ready for primetime now. One problem might
be patch 1 [drm/encoder: Add of_graph port to struct drm_encoder] to
which I need an ack from Dave and/or Daniel I guess.

I collected the Acks from Rob I got so far. [dt-bindings: display:
rockchip: Add binding for VOP2] doesn't have an ack yet, but it should
be ready now in v5.

Sascha

Changes since v4:
- Reorder patches in a way that binding/dts/driver patches are closer together
- Drop clk patches already applied by Heiko

Changes since v3:
- added changelog to each patch
- Add 4k support to hdmi driver
- rebase on v5.17-rc1

Changes since v2:
- Add pin names to HDMI supply pin description
- Add hclk support to HDMI driver
- Dual license rockchip-vop2 binding, update binding
- Add HDMI connector to board dts files
- drop unnecessary gamma_lut registers from vop2
- Update dclk_vop[012] clock handling, no longer hacks needed
- Complete regmap conversion

Changes since v1:
- drop all unnecessary waiting for frames within atomic modeset and plane update
- Cluster subwin support removed
- gamma support removed
- unnecessary irq_lock removed
- interrupt handling simplified
- simplified zpos handling
- drop is_alpha_support(), use fb->format->has_alpha instead
- use devm_regulator_get() rather than devm_regulator_get_optional() for hdmi regulators
- Use fixed number of planes per video port
- Drop homegrown regmap code from vop2 driver (not complete yet)
- Add separate include file for vop2 driver to not pollute the vop include

Andy Yan (1):
  drm: rockchip: Add VOP2 driver

Benjamin Gaignard (1):
  dt-bindings: display: rockchip: dw-hdmi: Add compatible for rk3568
    HDMI

Douglas Anderson (2):
  drm/rockchip: dw_hdmi: Use auto-generated tables
  drm/rockchip: dw_hdmi: Set cur_ctr to 0 always

Michael Riesch (1):
  arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a

Nickey Yang (1):
  drm/rockchip: dw_hdmi: add default 594Mhz clk for 4K@60hz

Sascha Hauer (17):
  drm/encoder: Add of_graph port to struct drm_encoder
  drm/rockchip: dw_hdmi: Do not leave clock enabled in error case
  drm/rockchip: dw_hdmi: rename vpll clock to reference clock
  dt-bindings: display: rockchip: dw-hdmi: use "ref" as clock name
  arm64: dts: rockchip: rk3399: rename HDMI ref clock to 'ref'
  drm/rockchip: dw_hdmi: add rk3568 support
  drm/rockchip: dw_hdmi: add regulator support
  dt-bindings: display: rockchip: dw-hdmi: Add regulator support
  drm/rockchip: dw_hdmi: Add support for hclk
  dt-bindings: display: rockchip: dw-hdmi: Add additional clock
  drm/rockchip: dw_hdmi: drop mode_valid hook
  dt-bindings: display: rockchip: dw-hdmi: Make unwedge pinctrl optional
  arm64: dts: rockchip: rk356x: Add VOP2 nodes
  arm64: dts: rockchip: rk356x: Add HDMI nodes
  arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
  drm/rockchip: Make VOP driver optional
  dt-bindings: display: rockchip: Add binding for VOP2

 .../display/rockchip/rockchip,dw-hdmi.yaml    |   29 +-
 .../display/rockchip/rockchip-vop2.yaml       |  140 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |    2 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |   48 +
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |   48 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   86 +
 drivers/gpu/drm/rockchip/Kconfig              |   14 +
 drivers/gpu/drm/rockchip/Makefile             |    4 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  293 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    7 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2689 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  480 +++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  285 ++
 include/drm/drm_encoder.h                     |    2 +
 include/dt-bindings/soc/rockchip,vop2.h       |   14 +
 20 files changed, 4045 insertions(+), 124 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
 create mode 100644 include/dt-bindings/soc/rockchip,vop2.h

-- 
2.30.2

