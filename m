Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B3349153C68
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2020 02:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727307AbgBFBHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Feb 2020 20:07:14 -0500
Received: from foss.arm.com ([217.140.110.172]:53534 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727170AbgBFBHO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 5 Feb 2020 20:07:14 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D5A1A101E;
        Wed,  5 Feb 2020 17:07:13 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9BFFA3F68E;
        Wed,  5 Feb 2020 17:07:12 -0800 (PST)
From:   Robin Murphy <robin.murphy@arm.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, heiko@sntech.de
Cc:     alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        pgwipeout@gmail.com
Subject: [PATCH 1/3] ASoC: dt-bindings: Make RK3328 codec GPIO explicit
Date:   Thu,  6 Feb 2020 01:07:11 +0000
Message-Id: <c84fd0521ce7f307d1921010498738722623e7ef.1580950046.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580950046.git.robin.murphy@arm.com>
References: <cover.1580950046.git.robin.murphy@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Existing RK3328 codec drivers have overloaded the GRF phandle to assume
implicit control of the limited-function GPIO_MUTE pin, which is usually
used to enable an external audio line driver IC. Since this pin has a
proper binding of its own (see gpio/rockchip,rk3328-grf-gpio.txt), make
a GPIO explicit in the codec binding too. This will help avoid ambiguity
on boards that use that pin for some other purpose.

(and while touching the example, enforce the "don't include status" rule)

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 .../devicetree/bindings/sound/rockchip,rk3328-codec.txt    | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
index 2469588c7ccb..1ecd75d2032a 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3328-codec.txt
@@ -10,6 +10,11 @@ Required properties:
 - clock-names: should be "pclk".
 - spk-depop-time-ms: speak depop time msec.
 
+Optional properties:
+
+- mute-gpios: GPIO specifier for external line driver control (typically the
+              dedicated GPIO_MUTE pin)
+
 Example for rk3328 internal codec:
 
 codec: codec@ff410000 {
@@ -18,6 +23,6 @@ codec: codec@ff410000 {
 	rockchip,grf = <&grf>;
 	clocks = <&cru PCLK_ACODEC>;
 	clock-names = "pclk";
+	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
 	spk-depop-time-ms = 100;
-	status = "disabled";
 };
-- 
2.17.1

