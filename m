Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE51B6327B9
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 16:20:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232238AbiKUPUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 10:20:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232058AbiKUPU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 10:20:27 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6983919C21
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 07:18:03 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mtr@pengutronix.de>)
        id 1ox8Yb-0004BZ-LZ; Mon, 21 Nov 2022 16:18:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <mtr@pengutronix.de>)
        id 1ox8YV-005gHK-Ph; Mon, 21 Nov 2022 16:17:56 +0100
Received: from mtr by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <mtr@pengutronix.de>)
        id 1ox8YV-008hFH-Jx; Mon, 21 Nov 2022 16:17:55 +0100
From:   Michael Tretter <m.tretter@pengutronix.de>
To:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        jacob-chen@iotwrt.com, ezequiel@vanguardiasur.com.ar,
        robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        michael.riesch@wolfvision.net,
        linux-arm-kernel@lists.infradead.org, m.tretter@pengutronix.de,
        kernel@pengutronix.de
Subject: [PATCH 0/2] media: rockchip: rga: Add rk3568 support
Date:   Mon, 21 Nov 2022 16:17:53 +0100
Message-Id: <20221121151755.2072816-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RGA2 on the Rockchip rk3568 is the same core as the RGA2 on the Rockchip
rk3288.

This series adds the necessary device tree binding and node in the device tree
to enable the RGA2 on the Rockchip rk3568.

I tested the driver with the GStreamer v4l2convert element on a ROCK3A board.

Michael

Michael Tretter (2):
  media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
  arm64: dts: rockchip: Add RGA2 support to rk356x

 .../devicetree/bindings/media/rockchip-rga.yaml       |  4 +++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi              | 11 +++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)

-- 
2.30.2

