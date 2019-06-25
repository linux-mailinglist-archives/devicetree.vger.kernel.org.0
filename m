Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99033554E6
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 18:47:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732232AbfFYQr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 12:47:58 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:51287 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732198AbfFYQr6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 12:47:58 -0400
Received: by mail-wm1-f66.google.com with SMTP id 207so3560154wma.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 09:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tH1fOw6y0vNQF4dreNKkipKssk8MEpaF1tmIMTiOzZ0=;
        b=oyqB2avNk6MEzzgARPKSIYRj4FKnMd4idECsZjcdb/X0r284D9/CKoapvzEA/mN2wz
         f5pup6I+0ItWKxIDz6OQkRGal5pbqqBLDE4GLNXjuXa4wN4MpsGfdDK7ZElYUtEu0xg9
         IFNzR2+VkmyMWAP1x6q+hOQAJ9lmCTPw6Sy25pkN2iEtw3zvnFxWOY2wkh7zL4PVHCiY
         a/ZzJuzBzRTAkaNpFq7pL6uQFpkhgVtrpPysHjQaxf6Cs5f6JwbrtJoe/3Vz583X/up7
         BBe2+i+/FEFh/Z9WD/75Q25OnnabZ4MkihMgByLtZDrx46ZNUiVQCN2yyhac7CEbhICK
         YFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tH1fOw6y0vNQF4dreNKkipKssk8MEpaF1tmIMTiOzZ0=;
        b=Hgav4T76CEmis854e/gcV6e4mmmsuNHjb5ZpFgo6BaNICs0oBwm4CwloU4dWM6RmjP
         VwD2Gk0eNojHLFv7wSEaXRXuTfc+3U/6Aq88euNjrT2msPeVZIsUEnAewx1wKNnnDiH5
         QFT/hSiDOIyrzTcZTEF2vNWffeWm6Imbvhi+uofoKoI8ufol1pEXnhOBppOWGUnwekCk
         cegP9lyhx0HSRF2c3T1w4JAu52GVhwFRJ5yT+ZuQN46HQv3q9y4hb3Uj2sKCQTVvAXP2
         oanlQsQ45Ys136afCi3sXAYAh5hYG89FNzMqFrg15P90E8MrlMA/LlKdLmsjuJMPn+xY
         WzYw==
X-Gm-Message-State: APjAAAUr5/3cPzoFUOVpzDveTA7TnnY21+x05hjt0VeGiXc04z3odbAA
        F4l3Y0png2MpbVkdwh3Kmbta+g==
X-Google-Smtp-Source: APXvYqw0cMuC38HiirhzxXrIDkE7Ta0lCsm01E5gczklxa2ameHFTs38QzfSduEoCQ/93zEn2m/emw==
X-Received: by 2002:a1c:238e:: with SMTP id j136mr19054867wmj.4.1561481276276;
        Tue, 25 Jun 2019 09:47:56 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net. [83.34.200.30])
        by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 25 Jun 2019 09:47:55 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
        bjorn.andersson@linaro.org, david.brown@linaro.org,
        jassisinghbrar@gmail.com, mark.rutland@arm.com,
        mturquette@baylibre.com, robh+dt@kernel.org, will.deacon@arm.com,
        arnd@arndb.de, horms+renesas@verge.net.au, heiko@sntech.de,
        sibis@codeaurora.org, enric.balletbo@collabora.com,
        jagan@amarulasolutions.com, olof@lixom.net
Cc:     vkoul@kernel.org, niklas.cassel@linaro.org,
        georgi.djakov@linaro.org, amit.kucheria@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, khasim.mohammed@linaro.org
Subject: [PATCH v3 11/14] arm64: dts: qcom: qcs404: Add HFPLL node
Date:   Tue, 25 Jun 2019 18:47:30 +0200
Message-Id: <20190625164733.11091-12-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The high frequency pll functionality is required to enable CPU
frequency scaling operation.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index d876dae5b0a5..94471aa31979 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -852,6 +852,15 @@
 			#mbox-cells = <1>;
 		};
 
+		apcs_hfpll: clock-controller@b016000 {
+			compatible = "qcom,hfpll";
+			reg = <0x0b016000 0x30>;
+			#clock-cells = <0>;
+			clock-output-names = "apcs_hfpll";
+			clocks = <&xo_board>;
+			clock-names = "xo";
+		};
+
 		timer@b120000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.21.0

