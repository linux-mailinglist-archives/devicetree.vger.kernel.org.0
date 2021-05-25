Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03B36390A2C
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 22:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233081AbhEYUEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 16:04:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233038AbhEYUEp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 16:04:45 -0400
Received: from relay02.th.seeweb.it (relay02.th.seeweb.it [IPv6:2001:4b7a:2000:18::163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED644C061574
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 13:03:14 -0700 (PDT)
Received: from localhost.localdomain (83.6.168.54.neoplus.adsl.tpnet.pl [83.6.168.54])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id 70853203D0;
        Tue, 25 May 2021 22:03:12 +0200 (CEST)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] arm64: dts: qcom: Add PMI8996 DTSI file
Date:   Tue, 25 May 2021 22:02:39 +0200
Message-Id: <20210525200246.118323-1-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PMI8996 is *almost* the same hardware as PMI8994, say for some annoyances:

- Boards equipped with PMI8996 now have to include pmic-id (which wasn't the case before)
- Different qpnp-ibb-discharge-resistor value (will be addressed after LABIBB is introduced)
- Different inhibit-derating-ua value (will be addressed after BCL is introduced)
- Different ramp_up_step value (will be addressed after [if?] QPNP Flash LED is introduced)

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 arch/arm64/boot/dts/qcom/pmi8996.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pmi8996.dtsi

diff --git a/arch/arm64/boot/dts/qcom/pmi8996.dtsi b/arch/arm64/boot/dts/qcom/pmi8996.dtsi
new file mode 100644
index 000000000000..31b47209e261
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/pmi8996.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2021, Konrad Dybcio <konrad.dybcio@somainline.org>
+ */
+
+ /*
+  * PMI8996 is a slight modification of PMI8994 with
+  * some notable changes, like being the first PMIC
+  * whose the bootloader has to check to continue booting
+  * and a change to a LABIBB parameter.
+  */
+
+/ {
+	qcom,pmic-id = <0x20009 0x10013 0 0>;
+};
-- 
2.31.1

