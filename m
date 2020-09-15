Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2AC026AFD8
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 23:46:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727953AbgIOVqQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 17:46:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728120AbgIOVpV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 17:45:21 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7050EC06178C
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 14:45:14 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id b79so904591wmb.4
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 14:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9KMVC1YG0Zgl+FYlCNkjyM0mDusyj+CBKlA/V00wdpg=;
        b=Xb7UczPakAqjh0s7AzauUIfKdNEFZ0A8228lXc8AQsdh0Kmwgk5lkpS+1EIwII0dXu
         CIt/VcnjGSZnKr7dAV5DkDLY1s7Gq0NV6PFLJXD1PpTVUFIAYwiC2/97S5XAEWMrXErs
         hKJd0JZ1yFJRuLER8PxCsexh05g/HlAvFn3HozjVa503kS1sZ59CL+E+51w47YvCDi+F
         /1Pcg3HMmAbbxJ4GyeZ8LShbSB7ia87HAp48UYUOeiCzSoSG5v2WR1pamdXFRFjQj3RN
         3++WXdntatcFiy56ghIk6GgXYYYXH/vYAsDUISCeFwz62KMhrKEtOIdyFLejxoUxWCP0
         Dtjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9KMVC1YG0Zgl+FYlCNkjyM0mDusyj+CBKlA/V00wdpg=;
        b=RRLskNx01SR6+tXBSmcviElS87kRUIkcPdmWz6Lyroa8G/iXikSm7er9CkbGj4YrvP
         bPuv1GS1jBPH+AWDjEa0ahjW+/FJE3XmQ+GR9aFnCTnW/OxWMhvQOeaQ6G197EE++P5b
         c0pTX5OdWtSCdv0R7qihcQdL69VgDp3JJnd9eyF0xXcx/eZ6JYaWSuY2dLoqwAtocxB/
         VGeXigZlG125Nev1/MW4RLlvIOGIHOiagsh6qO3RoZ13APMH04yq7NaF2ZW/m+kCNSWA
         nLIjYvY6BXb0PCs6Hg1eTrzBBg7xUGsp+/Z+1lTJr6E/06eXG5vGFBaeNV89z8LkwhKn
         jqKA==
X-Gm-Message-State: AOAM532ehd90R+oqGGVO4s5X7FNSdWIaxqe7zD/7XAQchODkZoVh8UgV
        /sskCs7UF2Lu+/5zB9/qpOhhYw==
X-Google-Smtp-Source: ABdhPJymR6Ry5JFvKnoD5Xxv9aObqndWEzvNlMxWJ9h6FbBqRTfoX1UHM+GtvIxRLfqeaRTG9SEQMg==
X-Received: by 2002:a05:600c:2246:: with SMTP id a6mr1412838wmm.38.1600206313133;
        Tue, 15 Sep 2020 14:45:13 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id i6sm31643363wra.1.2020.09.15.14.45.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:45:12 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     robh+dt@kernel.org, robdclark@gmail.com, amit.pundir@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Georgi Djakov <georgi.djakov@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sdm845: Add interconnects property for display
Date:   Wed, 16 Sep 2020 00:45:11 +0300
Message-Id: <20200915214511.786-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the interconnect paths that are used by the display (MDSS). This
will allow the driver to request the needed bandwidth and prevent
display flickering.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
This patch depends on:
https://lore.kernel.org/r/20200903133134.17201-6-georgi.djakov@linaro.org/

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 86457d9bc229..f8f09ab3442f 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3813,6 +3813,10 @@ mdss: mdss@ae00000 {
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
+			interconnects = <&mmss_noc MASTER_MDP0 0 &mem_noc SLAVE_EBI1 0>,
+					<&mmss_noc MASTER_MDP1 0 &mem_noc SLAVE_EBI1 0>;
+			interconnect-names = "mdp0-mem", "mdp1-mem";
+
 			iommus = <&apps_smmu 0x880 0x8>,
 			         <&apps_smmu 0xc80 0x8>;
 
