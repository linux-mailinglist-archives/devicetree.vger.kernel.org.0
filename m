Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A96431C0F8B
	for <lists+devicetree@lfdr.de>; Fri,  1 May 2020 10:33:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728347AbgEAIdS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 May 2020 04:33:18 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:57262 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728325AbgEAIdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 May 2020 04:33:17 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id AD5B72A2D1B
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, geert+renesas@glider.be,
        robh+dt@kernel.org, xuwei5@hisilicon.com
Subject: [RFT PATCH 1/5] arm64: dts: draak: Reorder hdmi-encoder@39 reg and reg-names properties
Date:   Fri,  1 May 2020 10:32:23 +0200
Message-Id: <20200501083227.10886-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reorder the I2C slave addresses of the hdmi-encoder@39 node to make it
compliant with the adi,adv7511w DT binding.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
---
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
index 67634cb01d6b..28ed852bd417 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
@@ -272,8 +272,8 @@
 
 	hdmi-encoder@39 {
 		compatible = "adi,adv7511w";
-		reg = <0x39>, <0x3f>, <0x38>, <0x3c>;
-		reg-names = "main", "edid", "packet", "cec";
+		reg = <0x39>, <0x3f>, <0x3c>, <0x38>;
+		reg-names = "main", "edid", "cec", "packet";
 		interrupt-parent = <&gpio1>;
 		interrupts = <28 IRQ_TYPE_LEVEL_LOW>;
 
-- 
2.18.0

