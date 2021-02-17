Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0BA531D6EA
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 10:22:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230303AbhBQJWd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 04:22:33 -0500
Received: from fallback16.mail.ru ([94.100.177.128]:43636 "EHLO
        fallback16.mail.ru" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbhBQJWd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 04:22:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail3;
        h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From; bh=EjB+5VqWLyWmjemoi1Psrq7kjjSi0B7hGL5GqtStktU=;
        b=w2M4pDvJnO76KqGHrtdkVCRbrYiLnaWLY5PHTH8lZdxyk1WArmR5ckcXVceGLwu+KQgxTo459eJ9IFEjm7JjoOTmn9+rt19gJaoBWFuTO1bs1KeLySEbK1Ovc6mgG81o5v+iv+s/UuiMzll/YurjAOkmY4LkXupXoucSHs7XUtY=;
Received: from [10.161.22.27] (port=42574 helo=smtp57.i.mail.ru)
        by fallback16.i with esmtp (envelope-from <shc_work@mail.ru>)
        id 1lCJ1l-00036Z-AG; Wed, 17 Feb 2021 12:21:45 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail3;
        h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=EjB+5VqWLyWmjemoi1Psrq7kjjSi0B7hGL5GqtStktU=;
        b=GLT65rykfwXJtlTSBSdSgNwe6M2/59A3Wn9z4auleVvnF4Oqsk3RwiwzilKszWh+f4WvqEPOYG8W2L2itc23p4ZWb49amEnQdQ2fxXhyGNgVSitwQOEeaQ/NbIsEooM700jeMFxt3TGUD00oM+Wd2tG70rpV9efFQLAfVCras74=;
Received: by smtp57.i.mail.ru with esmtpa (envelope-from <shc_work@mail.ru>)
        id 1lCJ0z-0003lw-Ez; Wed, 17 Feb 2021 12:20:58 +0300
From:   Alexander Shiyan <shc_work@mail.ru>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Alexander Shiyan <shc_work@mail.ru>
Subject: [PATCH 1/5] ARM: dts: clps711x: Add SYSCON nodes where it is used
Date:   Wed, 17 Feb 2021 12:20:20 +0300
Message-Id: <20210217092024.1568-1-shc_work@mail.ru>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-7564579A: B8F34718100C35BD
X-77F55803: 4F1203BC0FB41BD975C3EC174F56692243410BA6471F01668A37AB103014B813182A05F5380850409EE827FB635F08B1507516BB920420BC21CA316B94D806DE04AE5D08790AC34A
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7A3DED2DACB82E709C2099A533E45F2D0395957E7521B51C2CFCAF695D4D8E9FCEA1F7E6F0F101C6778DA827A17800CE7BC08626EA5717D14EA1F7E6F0F101C674E70A05D1297E1BBC6CDE5D1141D2B1C08A5F5A1D2C2A955BC73F900414B057C189AD40ABAB17D3A9FA2833FD35BB23D9E625A9149C048EE33AC447995A7AD18618001F51B5FD3F9D2E47CDBA5A96583BD4B6F7A4D31EC0BC014FD901B82EE079FA2833FD35BB23D27C277FBC8AE2E8BF80095D1E57F4578A471835C12D1D977C4224003CC836476EB9C4185024447017B076A6E789B0E975F5C1EE8F4F765FC451FDA88ED5A5A9C3AA81AA40904B5D9CF19DD082D7633A078D18283394535A93AA81AA40904B5D98AA50765F790063742A7A319716989A3D81D268191BDAD3D698AB9A7B718F8C442539A7722CA490C13377AFFFEAFD26923F8577A6DFFEA7CAA44A86D94E7BBB093EC92FD9297F6715571747095F342E857739F23D657EF2BD5E8D9A59859A8B630C12C51E7AE69A2089D37D7C0E48F6C5571747095F342E857739F23D657EF2B6825BDBE14D8E702ABEDDA51113D120200306258E7E6ABB4E4A6367B16DE6309
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975CF81F587C2CCB193372F0DCD57F728C2278E5581508C49C739C2B6934AE262D3EE7EAB7254005DCED556CBE7F905700A49510FB958DCE06DB6ED91DBE5ABE359AC8952F428387DEC05E4DBAB5AF249FA793EDB24507CE13387DFF0A840B692CF8
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D346B1FF97F6D0959A2D2AE2BD3BA7D8EDC73089C49D28AB9A71F61D99F6115901BDC460778C12749FB1D7E09C32AA3244C682B8721DB637102EC217AC01A63E89A85803964308724808D5DD81C2BAB7D1D
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojJkVkVdRHm//I9+q+miAZ0Q==
X-Mailru-Sender: 8261CADE3D3FA0B4C2F1292954F703E98D9BA45B4A66CD89EEE751E438F48B11CF13FF9A0E77555C6B3B2BD4812BFD4DC77752E0C033A69E93554C27080790AB3B25A7FBAAF806F0AE208404248635DF
X-Mras: Ok
X-7564579A: B8F34718100C35BD
X-77F55803: 6242723A09DB00B4EBFCE21E1429DC4DC729172D244F6EB0C1AE57799A0D0A59049FFFDB7839CE9ECACF5275A6186BFCF659E5C1DB78CD72D3EBCA0CDDFE2633E1092D4293D97D37
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975CF81F587C2CCB1933CEBDE45C104A994C8C04538298E205E39C2B6934AE262D3EE7EAB7254005DCED89C3600D1690B433699F904B3F4130E343918A1A30D5E7FCCB5012B2E24CD356
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5xhPKz0ZEsZ5k6NOOPWz5QAiZSCXKGQRq3/7KxbCLSB2ESzQkaOXqCBFZPLWFrEGlV1shfWe2EVcxl5toh0c/aCGOghz/frdRhzMe95NxDFdiyxR52CEJyX2ZIFXq8Vq2A==
X-Mailru-MI: 800
X-Mras: Ok
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds SYSCON descriptors to framebuffer, SPI, DAI
and modem control GPIO nodes to further rework these drivers
to remove the call to the syscon_regmap_lookup_by_compatible() function.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boot/dts/ep7209.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/ep7209.dtsi b/arch/arm/boot/dts/ep7209.dtsi
index 365931f8b48d..dacbe0d8e67a 100644
--- a/arch/arm/boot/dts/ep7209.dtsi
+++ b/arch/arm/boot/dts/ep7209.dtsi
@@ -108,6 +108,7 @@ fb: fb@800002c0 {
 			compatible = "cirrus,ep7209-fb";
 			reg = <0x800002c0 0xd44>, <0x60000000 0xc000>;
 			clocks = <&clks CLPS711X_CLK_BUS>;
+			syscon = <&syscon1>;
 			status = "disabled";
 		};
 
@@ -147,6 +148,7 @@ spi: spi@80000500 {
 			reg = <0x80000500 0x4>;
 			interrupts = <15>;
 			clocks = <&clks CLPS711X_CLK_SPI>;
+			syscon = <&syscon3>;
 			status = "disabled";
 		};
 
@@ -170,6 +172,7 @@ dai: dai@80002000 {
 			clocks = <&clks CLPS711X_CLK_PLL>;
 			clock-names = "pll";
 			interrupts = <32>;
+			syscon = <&syscon3>;
 			status = "disabled";
 		};
 
@@ -181,6 +184,7 @@ syscon3: syscon@80002200 {
 
 	mctrl: mctrl {
 		compatible = "cirrus,ep7209-mctrl-gpio";
+		gpio,syscon-dev = <&syscon1 0 0>;
 		gpio-controller;
 		#gpio-cells = <2>;
 	};
-- 
2.26.2

