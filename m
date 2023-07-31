Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B186B76A370
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 23:55:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231629AbjGaVzS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 17:55:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231602AbjGaVzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 17:55:16 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70BD8118
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 14:55:15 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B294F12AE;
        Mon, 31 Jul 2023 23:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1690840451;
        bh=gI98vGUVV8N9YZ5eUIyReE2x9lzEUaOgclZDt2Y6ZW4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=jKFLmnesw7NYHMftcOLcX9CZz27S8+8SVHBLN+RRWtJNYxk1TxYPbXzwE594Lw+mk
         1WQTwWD3uX6WpjyG7mU/3Cb237H91CEFaBpeOcei+UCRFLfY+9GHaX3MsB8S0ZIKkz
         l/1cqPAUB3oSEH7Go3Kv/UK1LD9llhpSus+ZziEY=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <mripard@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Umang Jain <umang.jain@ideasonboard.com>
Subject: [PATCH v4 2/2] ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0
Date:   Tue,  1 Aug 2023 00:55:15 +0300
Message-ID: <20230731215515.20682-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
References: <20230731215515.20682-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Uwe Kleine-König <uwe@kleine-koenig.org>

The cm4-io board comes with a PCF85063 on I2C0, connected to the GPIO44
and GPIO45 pins. Add it to the device tree.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v3:

- Separate addition of the RTC to a patch of its own
---
 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
index d7ba02f586d3..0d9b328a215a 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
@@ -101,6 +101,22 @@ &genet {
 	status = "okay";
 };
 
+&i2c0 {
+	status = "okay";
+};
+
+&i2c0_1 {
+	rtc@51 {
+		/* Attention: An alarm resets the machine */
+		compatible = "nxp,pcf85063";
+		reg = <0x51>;
+	};
+};
+
+&i2c0mux {
+	status = "okay";
+};
+
 &led_act {
 	gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
 };
-- 
Regards,

Laurent Pinchart

