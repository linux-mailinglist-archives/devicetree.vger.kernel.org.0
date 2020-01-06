Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BB773130E5C
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 09:07:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726360AbgAFIGb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jan 2020 03:06:31 -0500
Received: from mail-pj1-f66.google.com ([209.85.216.66]:33237 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726294AbgAFIGa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jan 2020 03:06:30 -0500
Received: by mail-pj1-f66.google.com with SMTP id u63so4183306pjb.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2020 00:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z6n3x2K3Dp3AAZPQMvII2g+qfLWHiLcgaz/SfUjQxQM=;
        b=dtw5fH85PUqyqgBmHK1zoYMGviejDQvuCqwPOg7U0S7S0IwfwseAcrrFxoCavHIou5
         1PcSxvEga5sUmt+8osxck95dO3TYH+N4X6d6m1AMTPNnUjqobLfaYi1vP0rOL+P1OoJJ
         7a5/ZyzBSlu4Db4Hfo5/J99eo+ueKTjjM6TblhSEtkEOj2wHWr7n8Q/D8YeE7ivss9KS
         clQoHSsXcVF25vTkLLYd6EkEBGiKlG5RMmUYfs4t6NIcQ3VM/gCPboRnJV5u4ZsKpUbn
         MjilTdtTx6ljWaYL4a81PGXCG3mztIMOu4VXT75rhLK+DJ8XXjJqwMcRBjy8GFbhe8FK
         +qWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z6n3x2K3Dp3AAZPQMvII2g+qfLWHiLcgaz/SfUjQxQM=;
        b=ex3xaR1Ls65TJGfejPCSWEKH53EPTCakhHKXzZH3OkzOot3eNALcRphHT/KyfgpjWi
         DnbPsAn9lUUNl04mh3KsuRaXWjubDkgBeFwdZ0tV9cMoZBwL7i54zdl/FXDJSiS8XITa
         ZW584LRSgKqKjY/H9PcslLBbG0XWmYTRt5s0kTKw45iz6PUc0FtzUpSVT1MG/g6yFywD
         YJW58EtjX0HAa4dtDXLJWEn+NITSCbGiv0A71cAXvpcuJ8XiXc8GV9MasAwPsiu3c81L
         nlkYAASnrHE06SC+FM4EpV9vBoP49HxklTXJyRfTG2Qk8yxEPopHLrm6Gl6c2BPryoNk
         3dpA==
X-Gm-Message-State: APjAAAXjwL5tySKkLumU4GWE4zRlv7JaKvTy+MVgAUNDgWOqmZpAiImT
        /6SNNV0KlO7sSmsUMObp+S8u8A==
X-Google-Smtp-Source: APXvYqyt4K9KF1fAlS7SVzIW613d2vIypnBFiMZVHdZX/8dX2HUN7S6mmGaxPWXqdlxpc+APwwDuKg==
X-Received: by 2002:a17:90a:f88:: with SMTP id 8mr42888601pjz.72.1578297990079;
        Mon, 06 Jan 2020 00:06:30 -0800 (PST)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id y20sm11916038pfe.107.2020.01.06.00.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 00:06:29 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] clk: qcom: gcc-msm8996: Fix parent for CLKREF clocks
Date:   Mon,  6 Jan 2020 00:05:45 -0800
Message-Id: <20200106080546.3192125-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200106080546.3192125-1-bjorn.andersson@linaro.org>
References: <20200106080546.3192125-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CLKREF clocks are all fed by the clock signal on the CXO2 pad on the
SoC. Update the definition of these clocks to allow this to be wired up
to the appropriate clock source.

Retain "xo" as the global named parent to make the change a nop in the
event that DT doesn't carry the necessary clocks definition.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Rewrote DT binding part after the binding changed structure

 .../devicetree/bindings/clock/qcom,gcc.yaml   | 10 ++++++
 drivers/clk/qcom/gcc-msm8996.c                | 35 +++++++++++++++----
 2 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
index f2b5cd6fe0fe..8535ed93766b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
@@ -47,6 +47,11 @@ properties:
         - description: Board XO source
         - description: Board active XO source
         - description: Sleep clock source
+      #qcom,gcc-msm8996
+      - items:
+        - description: XO source
+        - description: Second XO source
+        - description: Sleep clock source
       #qcom,gcc-msm8998
       - items:
         - description: Board XO source
@@ -65,6 +70,11 @@ properties:
         - const: bi_tcxo
         - const: bi_tcxo_ao
         - const: sleep_clk
+      #qcom,gcc-msm8996
+      - items:
+        - const: cxo
+        - const: cxo2
+        - const: sleep_clk
       #qcom,gcc-msm8998
       - items:
         - const: xo
diff --git a/drivers/clk/qcom/gcc-msm8996.c b/drivers/clk/qcom/gcc-msm8996.c
index d004cdaa0e39..3c3a7ff04562 100644
--- a/drivers/clk/qcom/gcc-msm8996.c
+++ b/drivers/clk/qcom/gcc-msm8996.c
@@ -3046,7 +3046,10 @@ static struct clk_branch gcc_usb3_clkref_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(struct clk_init_data){
 			.name = "gcc_usb3_clkref_clk",
-			.parent_names = (const char *[]){ "xo" },
+			.parent_data = &(const struct clk_parent_data){
+				.fw_name = "cxo2",
+				.name = "xo",
+			},
 			.num_parents = 1,
 			.ops = &clk_branch2_ops,
 		},
@@ -3060,7 +3063,10 @@ static struct clk_branch gcc_hdmi_clkref_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(struct clk_init_data){
 			.name = "gcc_hdmi_clkref_clk",
-			.parent_names = (const char *[]){ "xo" },
+			.parent_data = &(const struct clk_parent_data){
+				.fw_name = "cxo2",
+				.name = "xo",
+			},
 			.num_parents = 1,
 			.ops = &clk_branch2_ops,
 		},
@@ -3074,7 +3080,10 @@ static struct clk_branch gcc_edp_clkref_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(struct clk_init_data){
 			.name = "gcc_edp_clkref_clk",
-			.parent_names = (const char *[]){ "xo" },
+			.parent_data = &(const struct clk_parent_data){
+				.fw_name = "cxo2",
+				.name = "xo",
+			},
 			.num_parents = 1,
 			.ops = &clk_branch2_ops,
 		},
@@ -3088,7 +3097,10 @@ static struct clk_branch gcc_ufs_clkref_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(struct clk_init_data){
 			.name = "gcc_ufs_clkref_clk",
-			.parent_names = (const char *[]){ "xo" },
+			.parent_data = &(const struct clk_parent_data){
+				.fw_name = "cxo2",
+				.name = "xo",
+			},
 			.num_parents = 1,
 			.ops = &clk_branch2_ops,
 		},
@@ -3102,7 +3114,10 @@ static struct clk_branch gcc_pcie_clkref_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(struct clk_init_data){
 			.name = "gcc_pcie_clkref_clk",
-			.parent_names = (const char *[]){ "xo" },
+			.parent_data = &(const struct clk_parent_data){
+				.fw_name = "cxo2",
+				.name = "xo",
+			},
 			.num_parents = 1,
 			.ops = &clk_branch2_ops,
 		},
@@ -3116,7 +3131,10 @@ static struct clk_branch gcc_rx2_usb2_clkref_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(struct clk_init_data){
 			.name = "gcc_rx2_usb2_clkref_clk",
-			.parent_names = (const char *[]){ "xo" },
+			.parent_data = &(const struct clk_parent_data){
+				.fw_name = "cxo2",
+				.name = "xo",
+			},
 			.num_parents = 1,
 			.ops = &clk_branch2_ops,
 		},
@@ -3130,7 +3148,10 @@ static struct clk_branch gcc_rx1_usb2_clkref_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(struct clk_init_data){
 			.name = "gcc_rx1_usb2_clkref_clk",
-			.parent_names = (const char *[]){ "xo" },
+			.parent_data = &(const struct clk_parent_data){
+				.fw_name = "cxo2",
+				.name = "xo",
+			},
 			.num_parents = 1,
 			.ops = &clk_branch2_ops,
 		},
-- 
2.24.0

