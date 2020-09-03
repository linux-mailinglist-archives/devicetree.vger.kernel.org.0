Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EEF825CD87
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 00:28:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728620AbgICW1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 18:27:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728666AbgICW1O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 18:27:14 -0400
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com [IPv6:2607:f8b0:4864:20::742])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA43FC06124F
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 15:27:13 -0700 (PDT)
Received: by mail-qk1-x742.google.com with SMTP id p4so4702472qkf.0
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 15:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cznD9PtbdCnTuIZHnsXFM10RQkLCsdUaXijp1Kw5QfM=;
        b=vf/MIagmSkCmoXbC7zT5cXl1xunyNvulSkn7Qy0IqdUbPghCUHeubpoVJWECF1sIcs
         P7mTr/0TBl63h9TACLfVJzptpA7BAOWyubMGpb3p0t5x9XVrles20o0g0XKNu4Hz29WO
         75mIyVB8Oi7dJpwjAJIdBj+/KWG13DCoNR8EnhBoQeg36/QBIpKSVGWCNKmD1/gfTRjq
         fEMXqnuPfc491IhWkKmQc2JkhXjLMMrcRsMyXjkmiqPQ44MTR0zm61RZ0PfKoMYYCM5j
         3ZgT5j61yIrAPg9U59zGZmBlvjyUFaUzRIHc2D7Gitvm0doutY2YhSAvONe47j8r1Xis
         tuvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cznD9PtbdCnTuIZHnsXFM10RQkLCsdUaXijp1Kw5QfM=;
        b=migwegShwmJGi7yzyChbF4PppShWVHvjHCBdMcY+38z1c2jcoISVmWbZzxEO7LVJz2
         /K60dAutw6Kezw5zyVby1V5N7TABE6q6/5zSJGyl5vbdwnwSyrc7F/AbxYAazNZRrY3Q
         nYjUiu56Mo1nkjJveyAWctpuqxm4pO2nyz/GgD4fbhYuQN/oDStkk6g5bkBnQx4DH9s+
         nXW/jt3vPOqTK7YhgKwDu6KKpTUH1xzlhviDaL0iZiZvhpbDtiAWWRjlojbTNyxBc8Fi
         Kg/B2tx2s6I5fdSabwj5DNdBDorPO+GCHV8iQwJtUl2hSuZospNGcriYHDBUHg2b4zr/
         vDQw==
X-Gm-Message-State: AOAM532gilmtG3Hwz/a4iTth3WsNGena92TA9kwKBK4sv4z1Ehmw6/uR
        sDaGssFmFmK1I5KNEXBigBZvRQ==
X-Google-Smtp-Source: ABdhPJzK5Ygk1x9b3HK2R+a3jvj5NQR11yba0j3jaOAHzfMoW0mdc3MTRBiB9YSbbJXnphSPvgOpiQ==
X-Received: by 2002:a37:9f07:: with SMTP id i7mr4947081qke.440.1599172032896;
        Thu, 03 Sep 2020 15:27:12 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id y30sm3217157qth.7.2020.09.03.15.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:27:12 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 1/7] dt-bindings: clock: sdm845-dispcc: same name for dp_phy clocks as sc7180
Date:   Thu,  3 Sep 2020 18:26:09 -0400
Message-Id: <20200903222620.27448-2-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200903222620.27448-1-jonathan@marek.ca>
References: <20200903222620.27448-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This makes it easier to combine dt bindings for sdm845/sc7180 dispcc.

Note: nothing upstream provides these clocks and the sdm845 dispcc driver
hasn't switched to using .fw_name for these clocks (these properties are
ignored), so changing this shouldn't be a problem.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 .../devicetree/bindings/clock/qcom,sdm845-dispcc.yaml     | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
index 4a3be733d042..ead44705333b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sdm845-dispcc.yaml
@@ -43,8 +43,8 @@ properties:
       - const: dsi0_phy_pll_out_dsiclk
       - const: dsi1_phy_pll_out_byteclk
       - const: dsi1_phy_pll_out_dsiclk
-      - const: dp_link_clk_divsel_ten
-      - const: dp_vco_divided_clk_src_mux
+      - const: dp_phy_pll_link_clk
+      - const: dp_phy_pll_vco_div_clk
 
   '#clock-cells':
     const: 1
@@ -92,8 +92,8 @@ examples:
                     "dsi0_phy_pll_out_dsiclk",
                     "dsi1_phy_pll_out_byteclk",
                     "dsi1_phy_pll_out_dsiclk",
-                    "dp_link_clk_divsel_ten",
-                    "dp_vco_divided_clk_src_mux";
+                    "dp_phy_pll_link_clk",
+                    "dp_phy_pll_vco_div_clk";
       #clock-cells = <1>;
       #reset-cells = <1>;
       #power-domain-cells = <1>;
-- 
2.26.1

