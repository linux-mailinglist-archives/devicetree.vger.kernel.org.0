Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB414A7A5D
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 22:25:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347601AbiBBVZE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 16:25:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347542AbiBBVY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 16:24:56 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02DFDC06176E
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 13:24:30 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id h23so537704pgk.11
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 13:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DfTAOBXCjBVewSGVxZZh4ncHP9166sdZbwT93TYgXSc=;
        b=MAdtHmVuGIVNSqpDp0nNHdN1k+wbqPjJUswbpC3+KEtps5zrt3XBWF44qqWIMoTYhR
         SIk8ubwKkc0SXysg/FtaZc/+YLhzKZnk0vmoE14br2Ubi0XXIwir+hx16G8VN2wn9l4N
         z9XE6p1wwhwuNqvcXcDC13S+e5zDovBkxAKrQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DfTAOBXCjBVewSGVxZZh4ncHP9166sdZbwT93TYgXSc=;
        b=Njx5zlDCf+Pr/zj+nEqJnQZd4YHe/5irAziT0zam2wEEjxjTcA5hTGzok8e0hbHM0T
         x4DTFe/yh3vOMZGWA9Eka0XMT44YWBYnnLjWBWkiV2XwXxepXAygn7QTELGuGujRwDWd
         V8jDtF/HtToOJxnmKc8qM7tIoogee1JevFIoa/qJPSeUXFviHc4tyya6U0Ry3sVZnIA/
         tS3S3Ib7XYsxPUGkjb+hCCf4muk7zE8q4oeaaunhwgJfzGc8sUE5+2i/szzHRZ0wxnnN
         2IIOR0WEZFuY4PGXT0xfVUjP0Ji2emzjzayilTcJWGSdUvbJzGI9I8fHfiwl8Q/ZQAua
         M53A==
X-Gm-Message-State: AOAM532kX+ctIMJWVV47UCn9Z9OIVNMzuem5gxHAAMXf6SdiavNbbPsj
        NJLxAc0vOPe8RlbuiCU5Cik4Dg==
X-Google-Smtp-Source: ABdhPJyEIHWi0WajO1afZwfbNpuVBL+JYwF12qrEy6YYWgEsC2fifgouNPin6CXQPSLoxjPMCOb3qw==
X-Received: by 2002:aa7:96c1:: with SMTP id h1mr31506213pfq.17.1643837069500;
        Wed, 02 Feb 2022 13:24:29 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f1c4:10b6:b4ef:16e5])
        by smtp.gmail.com with ESMTPSA id on9sm7627983pjb.16.2022.02.02.13.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 13:24:29 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, swboyd@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 13/14] arm64: dts: qcom: sc7280: Add the CPU compatible to the soc@0 node
Date:   Wed,  2 Feb 2022 13:23:47 -0800
Message-Id: <20220202132301.v3.13.I7924ce4592e3e75b2293804d8a3f8a4dae44646e@changeid>
X-Mailer: git-send-email 2.35.0.rc2.247.g8bbb082509-goog
In-Reply-To: <20220202212348.1391534-1-dianders@chromium.org>
References: <20220202212348.1391534-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We'd like to start including the CPU name as the compatible under the
"soc" node so that we can get rid of it from the top-level compatible
string.

Suggested-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Probably needs a .yaml file somewhere?

Changes in v3:
- ("sc7280: Add the CPU compatible to the soc@0 node") new for v3.

 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 618ae0407cd6..2bfc919d4018 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -573,7 +573,7 @@ soc: soc@0 {
 		#size-cells = <2>;
 		ranges = <0 0 0 0 0x10 0>;
 		dma-ranges = <0 0 0 0 0x10 0>;
-		compatible = "simple-bus";
+		compatible = "qcom,sc7280", "simple-bus";
 
 		gcc: clock-controller@100000 {
 			compatible = "qcom,gcc-sc7280";
-- 
2.35.0.rc2.247.g8bbb082509-goog

