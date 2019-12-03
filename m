Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AA60010F710
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 06:24:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727295AbfLCFYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 00:24:12 -0500
Received: from mail-pl1-f196.google.com ([209.85.214.196]:35214 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727290AbfLCFYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 00:24:11 -0500
Received: by mail-pl1-f196.google.com with SMTP id s10so1219035plp.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2019 21:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=XTs9jOzk9TL0hbRB6PjchZQOiZjWYWm9M+GqSi78t2E=;
        b=Kfohgtuot4VMjzMiYs1RTN4CFr9Jv/O7n0D/sGYRNzskj2k00jCBksRHVQfvnqUxAA
         2IbaRwkzM9ZN4Ci0TmKQ5Q2rUPnUKyEP8UtqkpfbOdifaxkbf92SIpyTA6bGOPeCHzku
         g5zteQaD96IhVul8m2Qn2/GwP1eh8em5lJ6jLEQzFmP6bc7XWnohjp2YYIyeZbkbE3MI
         ZnE3VIXaj3BwDiLB7VM60MzzpHGCZ0qMfHYlziNEzGnNBj15NuHbf035kLSiPA80k74E
         pWvKpE4Ql/uLYJ3e4ggEFrEVbGcTigkR+E8s/rYckZ+ZT++oeDFcO/pG/zALFSPy+oAL
         t0MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=XTs9jOzk9TL0hbRB6PjchZQOiZjWYWm9M+GqSi78t2E=;
        b=fIqAzpD8yeeYyS/l3C4OJJTCXfVyf2NMtBuN/4qEjA3j20ZOHxiz1IBW6Nrhs+CzoI
         5Zmuk3sIUC8tYAMFXzNSKlqHvi4qSZWC0zXfDHV4vlOYclFNNjFcGTZJUpE/15d3SidD
         kM3YsuRcdpTtjuCsKNWxDafnlOepA63UQPonkEIxXNMNIx00k4Mu1iAV+fM+r+UM+/Tv
         P9JuHWIJBwfo7HKwkZJoJf2IHvb9/TrGEh606RYgJVsV8kYHNagaubaoHX7wyOx6bJ+N
         gLrLxSsNsu3PwQXq9fCJU/vPA++f2fA7H30V54t3PCPbYi655p7uU3ZaQZ7yYFlefh3d
         SQ9Q==
X-Gm-Message-State: APjAAAUolOYk4sp1theLzKs9FCqkZ621awlXcIW0RnJ76h9sMnubOAMZ
        ZcTXUrwcp3C92QRfFswZSoJHEQ==
X-Google-Smtp-Source: APXvYqy8GFCzB0hsgDh30sxoG3uiLFI3/zW3FYzh5VBo//Uenr05GQzjstP9U+bCmlG9zacc6MVthg==
X-Received: by 2002:a17:902:bd97:: with SMTP id q23mr3255257pls.310.1575350650547;
        Mon, 02 Dec 2019 21:24:10 -0800 (PST)
Received: from localhost ([14.96.109.134])
        by smtp.gmail.com with ESMTPSA id j17sm1449689pfr.2.2019.12.02.21.24.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 02 Dec 2019 21:24:10 -0800 (PST)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, swboyd@chromium.org,
        sivaa@codeaurora.org, Andy Gross <agross@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 9/9] arm64: dts: msm8998: thermal: Add critical interrupt support
Date:   Tue,  3 Dec 2019 10:53:30 +0530
Message-Id: <3ef309a98ca6445c1982ec3ff1a70db39b18f415.1575349416.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1575349416.git.amit.kucheria@linaro.org>
References: <cover.1575349416.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1575349416.git.amit.kucheria@linaro.org>
References: <cover.1575349416.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register critical interrupts for each of the two tsens controllers

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index fc7838ea9a010..4b786b8651a90 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -817,8 +817,9 @@
 			reg = <0x010ab000 0x1000>, /* TM */
 			      <0x010aa000 0x1000>; /* SROT */
 			#qcom,sensors = <14>;
-			interrupts = <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "uplow";
+			interrupts = <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 445 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow", "critical";
 			#thermal-sensor-cells = <1>;
 		};
 
@@ -827,8 +828,9 @@
 			reg = <0x010ae000 0x1000>, /* TM */
 			      <0x010ad000 0x1000>; /* SROT */
 			#qcom,sensors = <8>;
-			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "uplow";
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 430 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow", "critical";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

