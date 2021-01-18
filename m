Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6A852FA617
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 17:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406737AbhARQ0s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 11:26:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406731AbhARQ0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 11:26:46 -0500
Received: from relay01.th.seeweb.it (relay01.th.seeweb.it [IPv6:2001:4b7a:2000:18::162])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE92CC061793
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 08:25:19 -0800 (PST)
Received: from localhost.localdomain (abaf224.neoplus.adsl.tpnet.pl [83.6.169.224])
        by m-r1.th.seeweb.it (Postfix) with ESMTPA id BE4321FD13;
        Mon, 18 Jan 2021 17:25:17 +0100 (CET)
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
To:     phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 11/11] arm64: dts: qcom: msm8994-kitakami: Add missing email in the copyright
Date:   Mon, 18 Jan 2021 17:24:31 +0100
Message-Id: <20210118162432.107275-11-konrad.dybcio@somainline.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118162432.107275-1-konrad.dybcio@somainline.org>
References: <20210118162432.107275-1-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I forgot to do this the first time around.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-sumire.dts | 2 +-
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-sumire.dts b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-sumire.dts
index 868a2c9d6496..d3ba9867a369 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-sumire.dts
+++ b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-sumire.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: BSD-3-Clause
 /*
- * Copyright (c) 2020, Konrad Dybcio
+ * Copyright (c) 2020, Konrad Dybcio <konrad.dybcio@somainline.org>
  */
 
 /dts-v1/;
diff --git a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
index e962fc5f8b1b..586d866188d7 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: BSD-3-Clause
 /*
- * Copyright (c) 2020, Konrad Dybcio
+ * Copyright (c) 2020, Konrad Dybcio <konrad.dybcio@somainline.org>
  */
 
 #include "msm8994.dtsi"
-- 
2.29.2

