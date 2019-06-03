Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B1FD332BE
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 16:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729098AbfFCOyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 10:54:45 -0400
Received: from dougal.metanate.com ([90.155.101.14]:60318 "EHLO metanate.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729038AbfFCOyp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 3 Jun 2019 10:54:45 -0400
X-Greylist: delayed 1175 seconds by postgrey-1.27 at vger.kernel.org; Mon, 03 Jun 2019 10:54:40 EDT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=simple/simple; d=metanate.com;
         s=stronger; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
        :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
        Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
        In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=KwXOw6D+PifrOhhzVpHEIk44UYwy88ZEYVhtS09tqb0=; b=G9yEb/3jIztR2oA6w7Ars3Y0v1
        tObJnuP8TwFbdm2XReASnLcjeM9daQp7E/KRTDE5I+kRsxnxSiwzQYAB9eVRGg5lUijEOCilygqJ4
        ZXGO/l2ZJ9nvofchpOwVFHitt9V2X5judOGLLakIKpSakEzVp/AEAFDFlcrB1XxfIG8Z4oa1kJ5/3
        wPNIGjbTHldMhq9RsnYsnXNjQVq4hJXyT2MJ7SZCJrdwdfv7P865P/f6KmZPRuWgS5GzFlemT9xAq
        V5AHtLm4/hdxW6vcFroWjdhqORkFXHNaX+Vwf49sXmRb5c3ITSrIuYbpMXKpW4uAmWFCD4NHes3T6
        FKDvoc9A==;
Received: from dougal.metanate.com ([192.168.88.1] helo=localhost.localdomain)
        by shrek.metanate.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.90_1)
        (envelope-from <john@metanate.com>)
        id 1hXo3C-0000G9-VD; Mon, 03 Jun 2019 15:35:03 +0100
From:   John Keeping <john@metanate.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        John Keeping <john@metanate.com>
Subject: [PATCH] ARM: dts: rockchip: fix pwm-cells for rk3288's pwm3
Date:   Mon,  3 Jun 2019 15:34:35 +0100
Message-Id: <20190603143435.23352-1-john@metanate.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated: YES
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the same as the other PWMs on this SoC and uses 3 cells.

Signed-off-by: John Keeping <john@metanate.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 159d91180cee..766d1cf51a5b 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -710,7 +710,7 @@
 	pwm3: pwm@ff680030 {
 		compatible = "rockchip,rk3288-pwm";
 		reg = <0x0 0xff680030 0x0 0x10>;
-		#pwm-cells = <2>;
+		#pwm-cells = <3>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
 		clocks = <&cru PCLK_RKPWM>;
-- 
2.21.0

