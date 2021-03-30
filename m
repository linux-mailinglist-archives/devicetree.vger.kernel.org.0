Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D7D534DDC2
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 03:46:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbhC3Bq1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 21:46:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229971AbhC3BqR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 21:46:17 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0457EC061765
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 18:46:16 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id v3so10609067pgq.2
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 18:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+LuoE4GN3G28a59qj3b0AjCTzyHLDWWgDnhGjPnnBk8=;
        b=mH2J9hJB2gPQAKBnprK9o1OOgRTXXumcQ6JmuiU7O3g8VwxwnjFuJIw/ygQDMZflyc
         nIQ9mwnaWltQjsPTwOKAGLBu9qCJfxL0cVM8/qpyrjuWAQfHhrvMiKK0fPgsSsxf5PWP
         RqgDjkZsBSb7lvc8/pPPCqkwG7XnJYI3QpjVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+LuoE4GN3G28a59qj3b0AjCTzyHLDWWgDnhGjPnnBk8=;
        b=NvICQojgRvqCzAKzRik8PfbK/47ZWeq+Lm9U93vuab3QTdJ1Eq6faESTXYSzlF7AuI
         dCCImum/W0an8XqWUjVY0sSaHwwK8E56vnpKAk6kvEmBcICFHlpC+2ksqWOBAPe8KmHE
         nRq9P6uv8sV6+KeU9omVP4ITPq1v5x0y968p6ffWyZlmXPSh1LfrdjQDmncgco6ocD2Z
         TQ72tGIfkOGKBWfvrN3JCLf1Gr+DydU5sYkyy+IEjvjscpMv/ZxkjMuFPk1dsZ+Fc1m6
         RflQTjMbveeYJps+KYNbsGvbjbHUZj4Iw6lf34SnFACZvE7DZEw54BFR/Bnrtmf+6Blx
         bRww==
X-Gm-Message-State: AOAM532lz8lbcMwjnHsa9adk4MxiAJTfDT1qhRiP7lu/l6gVQ8YQLfOw
        iV9MlzSXp7pLOdbG9b1zqZAD9w==
X-Google-Smtp-Source: ABdhPJzLvAnFfM2AnTEqQf8nxNp+tk0H8EWFMpvuNRuwJVNf0TOpAd3SUh0kgr34C+kA8W3BYbNziA==
X-Received: by 2002:a62:33c6:0:b029:225:5266:28df with SMTP id z189-20020a6233c60000b0290225526628dfmr14377043pfz.7.1617068776385;
        Mon, 29 Mar 2021 18:46:16 -0700 (PDT)
Received: from sujitka-glaptop.hsd1.ca.comcast.net ([2601:647:4c01:5790:305c:8c84:377e:2eeb])
        by smtp.gmail.com with ESMTPSA id 138sm19138480pfv.192.2021.03.29.18.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 18:46:16 -0700 (PDT)
From:   Sujit Kautkar <sujitka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Sujit Kautkar <sujitka@chromium.org>
Subject: [PATCH] arm64: dts: qcom: Move rmtfs memory region
Date:   Mon, 29 Mar 2021 18:46:10 -0700
Message-Id: <20210330014610.1451198-1-sujitka@chromium.org>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move rmtfs memory region so that it does not overlap with system
RAM (kernel data) when KAsan is enabled. This puts rmtfs right
after mba_mem which is not supposed to increase beyond 0x94600000

Signed-off-by: Sujit Kautkar <sujitka@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sc7180.dtsi         | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 07c8b2c926c0..fe052b477b72 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -45,7 +45,7 @@ trips {
 
 /* Increase the size from 2MB to 8MB */
 &rmtfs_mem {
-	reg = <0x0 0x84400000 0x0 0x800000>;
+	reg = <0x0 0x94600000 0x0 0x800000>;
 };
 
 / {
diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 1ea3344ab62c..ac956488908f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -110,9 +110,9 @@ tz_mem: memory@80b00000 {
 			no-map;
 		};
 
-		rmtfs_mem: memory@84400000 {
+		rmtfs_mem: memory@94600000 {
 			compatible = "qcom,rmtfs-mem";
-			reg = <0x0 0x84400000 0x0 0x200000>;
+			reg = <0x0 0x94600000 0x0 0x200000>;
 			no-map;
 
 			qcom,client-id = <1>;
-- 
2.29.2

