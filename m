Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F4A0CE084
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 13:33:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727554AbfJGLdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 07:33:37 -0400
Received: from foss.arm.com ([217.140.110.172]:60338 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727376AbfJGLdh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Oct 2019 07:33:37 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A8F41576;
        Mon,  7 Oct 2019 04:33:36 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CE1B83F706;
        Mon,  7 Oct 2019 04:33:35 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Enable nanopi4 HDMI audio
Date:   Mon,  7 Oct 2019 12:33:25 +0100
Message-Id: <7fe6e94e4b9f5986f19f2637b7b716f0cb54de1b.1570444701.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All the nanopi4 boards have HDMI, so let them make noise on it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 170f7ed6d773..b788ae4f47f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -184,6 +184,10 @@
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-rising-time-ns = <160>;
@@ -459,6 +463,10 @@
 	status = "okay";
 };
 
+&i2s2 {
+	status = "okay";
+};
+
 &io_domains {
 	bt656-supply = <&vcc_1v8>;
 	audio-supply = <&vcca1v8_codec>;
-- 
2.21.0.dirty

