Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 911A93B7670
	for <lists+devicetree@lfdr.de>; Tue, 29 Jun 2021 18:26:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232698AbhF2Q3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Jun 2021 12:29:17 -0400
Received: from [94.230.151.217] ([94.230.151.217]:40520 "EHLO ixit.cz"
        rhost-flags-FAIL-FAIL-OK-OK) by vger.kernel.org with ESMTP
        id S232398AbhF2Q3Q (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 29 Jun 2021 12:29:16 -0400
X-Greylist: delayed 473 seconds by postgrey-1.27 at vger.kernel.org; Tue, 29 Jun 2021 12:29:16 EDT
Received: from newone.lan (ixit.cz [94.230.151.217])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by ixit.cz (Postfix) with ESMTPSA id 3E99923B1D;
        Tue, 29 Jun 2021 18:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
        t=1624983534;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=8Z5q1XCsraCiEzJU+2MILwjiX4R20rQUeQFxDTdn/Yk=;
        b=c4k+z3MyPZkz9XWKtolp+o1Pe6a1hmi9QTbHUtd8wxIAcfHR9Bl2f10BpiWP7twVZjbl0w
        9HQ5s06nDCf4hUIjz8oQM9tH1EWy3SsSJ83QeTPgv3XcZDvJvy14vXmMGo+7xLnlCQV6Hl
        tHGfPREMit5pKAQUFdsfpLPdWkfUQxI=
From:   David Heidelberg <david@ixit.cz>
To:     masneyb@onstation.org, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>
Subject: [PATCH] ARM: dts: qcom: apq8064: correct clock names
Date:   Tue, 29 Jun 2021 18:18:11 +0200
Message-Id: <20210629161811.44252-1-david@ixit.cz>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Prevents dmesg error:

msm_dsi 4700000.mdss_dsi: dev_pm_opp_set_clkname: Couldn't find clock: -2

and following kernel oops introduced by
b0530eb1191 ("drm/msm/dpu: Use OPP API to set clk/perf state").

Also removes warning about deprecated clock names.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 6005620ac297..96b7755afabf 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1262,9 +1262,9 @@ dsi0: mdss_dsi@4700000 {
 				<&mmcc DSI1_BYTE_CLK>,
 				<&mmcc DSI_PIXEL_CLK>,
 				<&mmcc DSI1_ESC_CLK>;
-			clock-names = "iface_clk", "bus_clk", "core_mmss_clk",
-					"src_clk", "byte_clk", "pixel_clk",
-					"core_clk";
+			clock-names = "iface", "bus", "core_mmss",
+					"src", "byte", "pixel",
+					"core";
 
 			assigned-clocks = <&mmcc DSI1_BYTE_SRC>,
 					<&mmcc DSI1_ESC_SRC>,
-- 
2.30.2

