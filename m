Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8893538553
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 17:49:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240384AbiE3PtJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 11:49:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238453AbiE3Psy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 11:48:54 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EB86CE5DD
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 08:06:12 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy4-0005Kh-Bh; Mon, 30 May 2022 17:06:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy3-005THt-Hy; Mon, 30 May 2022 17:06:02 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy1-005Bdu-C5; Mon, 30 May 2022 17:06:01 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robert.foss@linaro.org, laurent.pinchart@ideasonboard.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: [PATCH 0/6] TI SN65DSI83 Features
Date:   Mon, 30 May 2022 17:05:43 +0200
Message-Id: <20220530150548.1236307-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
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

Hi,

the purpose of this small series is to enable the support for the reverse
lane feature and to add support for reset controllers which can drive
the enable pin.

Regards,
  Marco

Marco Felsch (6):
  drm/bridge: ti-sn65dsi83: make lvds lane register setup more readable
  dt-bindings: drm/bridge: ti-sn65dsi83: add documentation for reverse
    lvds lanes
  drm/bridge: ti-sn65dsi83: add support to swap the LVDS data lanes
  drm/bridge: ti-sn65dsi83: make use of dev_err_probe
  dt-bindings: drm/bridge: ti-sn65dsi83: Add reset controller
    documentation
  drm/bridge: ti-sn65dsi83: add support for a external reset controller

 .../bindings/display/bridge/ti,sn65dsi83.yaml | 64 ++++++++++++-
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 89 +++++++++++++++++--
 2 files changed, 145 insertions(+), 8 deletions(-)

-- 
2.30.2

