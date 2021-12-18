Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1F47479B53
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:26:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233411AbhLRO0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:26:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbhLRO0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:26:46 -0500
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CAD2C061574
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:26:46 -0800 (PST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4JGSpX40zKzQlMN;
        Sat, 18 Dec 2021 15:26:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639837602;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=G+pS6Uh7yL4/lq0yE+5W2746dwwezo3sk1nW6Pyjog0=;
        b=noencTNj7BsdaR5u4CouoNzAbe2v8Mtk473FNa3bFqlo7mxUtyFNvgvATa0AbMxQFDlusR
        Tdp8AllaM/mOTs/Hc+bm72yA2aiJ9jgWbEFq+/CIkgccnVfdd5OpbsjrEL8CyuzaQ7qiHJ
        H9TYn60lcdctc1X/P1wmg3MsYRWmtoZnVc7CurBYvOAs0+Z/8bZDLiYIdSKQ9RIzAk+AJi
        jpEi9O+cI0CLItmFYxGAurMjm+duU4Gi8/SJBPrBC93NLnC3Z42Xezh9FauzSByJCYD99+
        VTRIaXcsALl1WCBA8b/ms3czTdfWQ7lMuul5I5NtotvO0kqEcfwpwsQALjo0AQ==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: meson-g12b-odroid-n2: move assigned-clocks
Date:   Sat, 18 Dec 2021 15:26:32 +0100
Message-Id: <20211218142632.15293-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dtschema expects a 'clocks' property if 'assigned-clocks' is used, but
'sound' node does not.
So move the MPLL[0-2] clock settings &clkc_audio which actually use them.
This fixes the dtschema warning:
arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi    | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 9c05c83453f5..85257507206c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -252,14 +252,6 @@ sound {
 				"U19 INR", "ACODEC LORP",
 				"Lineout", "U19 OUTL",
 				"Lineout", "U19 OUTR";
-
-		assigned-clocks = <&clkc CLKID_MPLL2>,
-				  <&clkc CLKID_MPLL0>,
-				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
-		assigned-clock-rates = <294912000>,
-				       <270950400>,
-				       <393216000>;
 		status = "okay";
 
 		dai-link-0 {
@@ -365,6 +357,13 @@ &cecb_AO {
 };
 
 &clkc_audio {
+	assigned-clocks = <&clkc CLKID_MPLL2>,
+				<&clkc CLKID_MPLL0>,
+				<&clkc CLKID_MPLL1>;
+	assigned-clock-parents = <0>, <0>, <0>;
+	assigned-clock-rates = <294912000>,
+					<270950400>,
+					<393216000>;
 	status = "okay";
 };
 
-- 
2.34.1

