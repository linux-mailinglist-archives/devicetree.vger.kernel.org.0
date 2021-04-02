Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 894CD352701
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 09:43:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233901AbhDBHnk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Apr 2021 03:43:40 -0400
Received: from fallback16.mail.ru ([94.100.177.128]:45638 "EHLO
        fallback16.mail.ru" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230492AbhDBHnk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Apr 2021 03:43:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail3;
        h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From; bh=EjB+5VqWLyWmjemoi1Psrq7kjjSi0B7hGL5GqtStktU=;
        b=bHO3x7Yac3F8KPmGS9Py80Obs5pkstkJecMC4rWWbCmLArolrYryvYUIYWMZB3Voi2oIGFzXlKubo2vgIo7LNwJbZshNJpE7w2GiXDbLnfHB3sP6ZG9dvQQjjqZf0bJ7CJYmk1rvDt7u/1ryiVDK8OIFFdgx/NW28x+H7PRpjG8=;
Received: from [10.161.64.46] (port=32786 helo=smtp38.i.mail.ru)
        by fallback16.i with esmtp (envelope-from <shc_work@mail.ru>)
        id 1lSESu-0005DU-Cr; Fri, 02 Apr 2021 10:43:36 +0300
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail3;
        h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=EjB+5VqWLyWmjemoi1Psrq7kjjSi0B7hGL5GqtStktU=;
        b=dDLrGu1QnTvmcTn4SWAfgJqRVmDjRdZZtQHhSpfcx8nW3NHvTyclWSNTzwxFzj0EXcVyPVLO83zTC3vFWmC1zqlXmA+TKjW9l1WmpEBsdTWhFEUC2vKOlFIhhxWt9F6OYZ5h+CcUwUfES+HAR/sgs5TnvHDo9yPJn3p2PCH0M3g=;
Received: by smtp38.i.mail.ru with esmtpa (envelope-from <shc_work@mail.ru>)
        id 1lSESm-0008Jo-Vc; Fri, 02 Apr 2021 10:43:29 +0300
From:   Alexander Shiyan <shc_work@mail.ru>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Alexander Shiyan <shc_work@mail.ru>
Subject: [PATCH RESEND 1/5] ARM: dts: clps711x: Add SYSCON nodes where it is used
Date:   Fri,  2 Apr 2021 10:43:14 +0300
Message-Id: <20210402074318.8582-1-shc_work@mail.ru>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-7564579A: 78E4E2B564C1792B
X-77F55803: 4F1203BC0FB41BD9ED7173E37F4E32947427BE79D20CABD4F844F00D7AFD5C3C182A05F5380850405EBBBDC06045099552F862CE218043E8C0F9E44CB6E34E36C93FE557E44E53BD
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE72F22E6DC541F75D9EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006373768BF035B57E5168638F802B75D45FF914D58D5BE9E6BC131B5C99E7648C95C7B5A45DDF210A4CFD8CC875304DFB794E2A24CC2EBE77A08A471835C12D1D9774AD6D5ED66289B5278DA827A17800CE767883B903EA3BAEA9FA2833FD35BB23D2EF20D2F80756B5F868A13BD56FB6657A471835C12D1D977725E5C173C3A84C37EF884183F8E4D67117882F4460429728AD0CFFFB425014E868A13BD56FB6657D81D268191BDAD3DC09775C1D3CA48CF6B55DB95A1F615C1BA3038C0950A5D36C8A9BA7A39EFB766EC990983EF5C0329BA3038C0950A5D36D5E8D9A59859A8B6EF4EC40CFC69163A76E601842F6C81A1F004C90652538430CDED94BCBF13EF3B2DBA43225CD8A89F9FFED5BD9FB41755A91E23F1B6B78B78B5C8C57E37DE458BEDA766A37F9254B7
X-B7AD71C0: AC4F5C86D027EB782CDD5689AFBDA7A24A6D60772A99906F8E1CD14B953EB46DE1576A519F2C84D1355D89D7DBCDD132
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975C7B5A45DDF210A4CFD8CC875304DFB794E2A24CC2EBE77A089C2B6934AE262D3EE7EAB7254005DCED556CBE7F905700A49510FB958DCE06DB6ED91DBE5ABE359A805C47957401F4817D06A436E56C8DB493EDB24507CE13387DFF0A840B692CF8
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D34D8C933888226C84167A8419DB0957F22AF023E1B45C4AF3A34DF8A5A68E7C2F03370FFE62A01EDD21D7E09C32AA3244C5857F9032FA443C710308F2B21D3B50AA8CE788DE6831205DCA3B3C10BC03908
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojiysexgWf334gUsXNGLx8EA==
X-Mailru-Sender: 8261CADE3D3FA0B4C2F1292954F703E9C4D6AA0BA558CC225EB028756589B6C4FBB7BA11EF7D744E6B3B2BD4812BFD4DC77752E0C033A69E93554C27080790AB3B25A7FBAAF806F0AE208404248635DF
X-Mras: Ok
X-7564579A: 646B95376F6C166E
X-77F55803: 6242723A09DB00B4DF7173A40FF1347DA6106AACE9855D49BE32B3BEF655D7B8049FFFDB7839CE9E750848576F542D0E69FA2D89D3021313F148FE0CC2B0B6399883450CEF473659
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975C7B5A45DDF210A4CFCE54234C43967288632FADF8EF0EE6599C2B6934AE262D3EE7EAB7254005DCED89C3600D1690B433699F904B3F4130E343918A1A30D5E7FCCB5012B2E24CD356
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5xhPKz0ZEsZ5k6NOOPWz5QAiZSCXKGQRq3/7KxbCLSB2ESzQkaOXqCBFZPLWFrEGlV1shfWe2EVcxl5toh0c/aCGOghz/frdRhzMe95NxDFdM/HWZ2FZeTeJieBEsDqftQ==
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

