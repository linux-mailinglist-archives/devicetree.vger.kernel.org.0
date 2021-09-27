Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B501E418E74
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 06:49:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232640AbhI0Eus (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 00:50:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232617AbhI0Euq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 00:50:46 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1965C061570
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 21:49:08 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id bj3-20020a17090b088300b0019e6603fe89so10851108pjb.4
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 21:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5Q6nf8LqPhvSki/U84FqSlnRaUL+lc1QseYK12PdV5o=;
        b=yH7ocNJoNnGbreRdSzpzAaX3MbEHhAM4lHvCdNiZ/rIgjhzwD6JQGTv6FgV/p4A+8c
         8duNd3qs3jhMGodK3rkRMxa6CdbZ5LafPySRP5endGozYT0awQKqLlHoEoCoBfrLkdLa
         xVshzimso3M1rqxe2XdU0OQd8gekKOr6yFKbYlN2eeEekS4xUzp3HkUBhsw521UHEBjZ
         a9WpSeT7TtgqiQ509ueMLjm1ER/MffOo2Yp9eXl11mT0ecu1S4C1Pre5M09BRI/FuI0M
         Gn/Vv1/StIe0NGCGnZLeXiCm1R+7DxriXDU0Ekv6aTovlu4zb6hb3IVPcILEvktSY1na
         Jwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5Q6nf8LqPhvSki/U84FqSlnRaUL+lc1QseYK12PdV5o=;
        b=URblrvqggCO7uZYdbhNWXpIughBk03i5Er40s13jYEpVmPz+0zDoblo8zsxHAjX5aK
         m/HYvEgsDLay7wqgWBjb5YJHSl4258gxsBLc2+NPL1umY2xJwhkfiqs3rf+vaqKNleD9
         IMbthDnWFGRVu8LviuuJBW4aF1/XHr3qldRWl0ch2taoNNvRqkfJR788gVBe1+E5TjG0
         WZ+62Y+jF57gnwYkFWjxRFLxxIqlO75ts349tD21s2CtkJUYMOUiNWXjm6t15A4jiYB8
         xfogY7EBSUO3ntXpwdFPdAdMfuWwUY9nvCnbvedjwlp862Xoi4VKZSaeFSi+RkbREYX1
         ovTg==
X-Gm-Message-State: AOAM532IAl8DX5Lzt1YZlDT/t0QHmEX1ASoEfvMQYmdwTvwaerN7H+id
        Kup0mROrZuKdOMXeTApW5FxIFw==
X-Google-Smtp-Source: ABdhPJwkzSU4ZWtYPxP/n0kCmKKaF1DQSnpTU9fLFUk9N7cPC2nX2IGuA4LOp1p3/jcmrw0WzdKAnQ==
X-Received: by 2002:a17:902:934c:b0:13d:c685:229b with SMTP id g12-20020a170902934c00b0013dc685229bmr20786774plp.25.1632718148423;
        Sun, 26 Sep 2021 21:49:08 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id o8sm14550651pjh.19.2021.09.26.21.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Sep 2021 21:49:08 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Manu Gautam <mgautam@codeaurora.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Jami Kettunen <jamipkettunen@gmail.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,qusb2: Add missing vdd-supply
Date:   Mon, 27 Sep 2021 12:48:22 +0800
Message-Id: <20210927044824.30246-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210927044824.30246-1-shawn.guo@linaro.org>
References: <20210927044824.30246-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Besides vdda-pll and vdda-phy-dpdm, vdd-supply is a required supply for
PHY digital circuit operation.  Add it for correctness and completeness.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 48ae604b2194..96e31f582fc9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -51,6 +51,10 @@ properties:
       - const: ref
       - const: iface
 
+  vdda-supply:
+    description:
+      Phandle to 0.9V regulator supply to PHY digital circuit.
+
   vdda-pll-supply:
     description:
       Phandle to 1.8V regulator supply to PHY refclk pll block.
@@ -157,6 +161,7 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
+  - vdd-supply
   - vdda-pll-supply
   - vdda-phy-dpdm-supply
   - resets
@@ -175,6 +180,7 @@ examples:
                  <&gcc GCC_RX1_USB2_CLKREF_CLK>;
         clock-names = "cfg_ahb", "ref";
 
+        vdd-supply = <&pm8994_l28>;
         vdda-pll-supply = <&pm8994_l12>;
         vdda-phy-dpdm-supply = <&pm8994_l24>;
 
-- 
2.17.1

