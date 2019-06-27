Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1F558413
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 16:02:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726441AbfF0OCV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 10:02:21 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:33728 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726497AbfF0OCV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 10:02:21 -0400
Received: by mail-lj1-f195.google.com with SMTP id h10so2507836ljg.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2019 07:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=94jsv7PelsPB2ELSJjxjeuXE1UpF8XX/bIuYToAgwnk=;
        b=b9I+dUWBM0fhRcRju6K0FJydpPHBep0v9JJycFT32uDQhEtMDeFusBtNkcSytsauPJ
         zug6M3BCakgcl6maoGCYN7WNkPpYqhBV7WuXWqjGcpd77Cy4acZ6vOjvlT7VhvGRhKTN
         HI06dQ8x5ixWxE10eD9YkfB14wWvqzZtkxhQKG0Ed+GXbZbwWUuKdc4Q6D2hTkFHbGf9
         a0IZ2Vd3NqTH01FIddnMT6H+1jxJh/BJo58Jpi45ffyOwvOuHOyH1iARAID41tbeSKy5
         xFJUem00SubwrYs27OaKBZFMY+t7jyTyem7w83I+x9eMetsj50kVf9rFVTGN5JHurowy
         5f0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=94jsv7PelsPB2ELSJjxjeuXE1UpF8XX/bIuYToAgwnk=;
        b=W/vKsROu0Qwoz4eXzqHlufBMkK/Cc31ioVnbA+Q7jS48VnTwHQBvE8ciQNSWvnHY+x
         vFN9sj6VSqLo4MbNM62bGfaYKx4xrcPa1v8Vq3bNxg5HWR+Fq9sqGTwcVUy0j+v65HPs
         +Ou6pA3q21FvXO2wYqt3hbhpDJbrttX0MU7yMpuG3cOKahjnzabFlWfOYMEbpCOvLuTu
         GEGBS0ZdudSXVWElaQZ4khbDA2UqxaBJzwfiIvP/PyFTwYetSmOu7b77ZPLcrp1s1TBy
         aUiE9jjtIr7+EsEIkECdGzzuuSUVknc/76TamqlTQKJahx/VEmYZGfcJpxKDJwRtDQJq
         9AYQ==
X-Gm-Message-State: APjAAAXYJjirYRu2m+ZzqXGRJ3XwEOUhhimczD9akPTGFDz/j3FRX4QA
        t7nNgN4I2n/qxXkofSOdX1eMlQ==
X-Google-Smtp-Source: APXvYqzxJ0VUhkIPVpSdqTGdQEaidRatTXiOp2u0HYctB8MKiMI9g6sp+ofTLrzI++WxMqoQwEfnww==
X-Received: by 2002:a2e:9dc1:: with SMTP id x1mr2791979ljj.0.1561644138909;
        Thu, 27 Jun 2019 07:02:18 -0700 (PDT)
Received: from centauri.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id y25sm564036lja.45.2019.06.27.07.02.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 27 Jun 2019 07:02:18 -0700 (PDT)
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     amit.kucheria@linaro.org, Niklas Cassel <niklas.cassel@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcs404: Add missing space for cooling-cells property
Date:   Thu, 27 Jun 2019 16:02:15 +0200
Message-Id: <20190627140215.29353-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There should be a space both before and after the equal sign.
Add a missing space for the cooling cells property.

Fixes: f48cee3239a1 ("arm64: dts: qcom: qcs404: Add thermal zones for each sensor")
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 01a51f381850..3d0789775009 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -35,7 +35,7 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
-			#cooling-cells= <2>;
+			#cooling-cells = <2>;
 		};
 
 		CPU1: cpu@101 {
@@ -45,7 +45,7 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
-			#cooling-cells= <2>;
+			#cooling-cells = <2>;
 		};
 
 		CPU2: cpu@102 {
@@ -55,7 +55,7 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
-			#cooling-cells= <2>;
+			#cooling-cells = <2>;
 		};
 
 		CPU3: cpu@103 {
@@ -65,7 +65,7 @@
 			enable-method = "psci";
 			cpu-idle-states = <&CPU_SLEEP_0>;
 			next-level-cache = <&L2_0>;
-			#cooling-cells= <2>;
+			#cooling-cells = <2>;
 		};
 
 		L2_0: l2-cache {
-- 
2.21.0

