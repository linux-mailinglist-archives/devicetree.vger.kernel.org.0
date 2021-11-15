Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EAC544FD29
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 03:32:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbhKOCfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Nov 2021 21:35:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbhKOCfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Nov 2021 21:35:46 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD37BC061767
        for <devicetree@vger.kernel.org>; Sun, 14 Nov 2021 18:32:51 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id u11so13218690plf.3
        for <devicetree@vger.kernel.org>; Sun, 14 Nov 2021 18:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8Ws7B5AGNFnBmBgOnVAMCyoWGf/w6+PN/PCOXBtdlww=;
        b=yVp4708CojenC4AW2oMUWxRj8TLwPP9TZxz9Ijb2/izg9RvtVCEmFMQ5oX/0/V8+OO
         mWiQQbgvBMah7ieDPw9bB5SG4O38v8L93qxsZO8pNM1eO6yM1sKeKgK2lbTbUcx/Xh1S
         K7sF4Wmq8MKx8HuHzApTMFTxHFQOD50fqbelYH0maslkoENACr4Rs1L16Pnt46s8jsqC
         6QoDGbOjzqu1J+EglQu/Aew60YVTTKN2ZRBwP+KXZ7Q8GYfW7Z9C0m1QCBPUdBoHqQ5L
         aZiLsnlyYbwnqEhFaOkqX0Zl4fINvif5siAA/D8CCIOFiuw+choprDAGFsae4MiVmaZd
         dSZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8Ws7B5AGNFnBmBgOnVAMCyoWGf/w6+PN/PCOXBtdlww=;
        b=SjQqbVoWSZyfBLxrIdKhoccG5m4gHYv589b57+nwE6KnwGMmtJWRfkehh+IooM1Hfb
         AvhxNKFHDR6RBiDW5CLNtr/t1FRcHyRTtIdVItbq8Er8HskZ9rDyUdYAzKfGEIORssMh
         wWNLni3xnU7/is4t4bjKZ4wdnE8iOWo1lpkE7FSFVAYj1dt6xqiDcyuZRhJ37NHKON0Z
         0g2BZROx6kPhUkVhBFJHHHdvt3diqjQKeqS+fHEUIfQWGapQ1Hcvm1ozgGTf9OtdQUlO
         hSUU49IIcjjHbF0OWcpOTd+7Gs+89D+sxI/E+5oOK08DvDUbh/yNqy8ajaWK95Td7fcN
         IqVw==
X-Gm-Message-State: AOAM530AavWfsZYM6UtdqRawxtXrCUQtSfeWZQVXptulhWjaVl1HLQx+
        MVayoJXoduo5XKcF6rOWv18znw==
X-Google-Smtp-Source: ABdhPJyaLaKsv8Cf4LNU1XBi2ckCWL7EsgL/tnwVI7YQiV+qt7t9OCKi/8cIXWcrtqr620fERd2K3Q==
X-Received: by 2002:a17:90b:3ecc:: with SMTP id rm12mr41317436pjb.75.1636943571107;
        Sun, 14 Nov 2021 18:32:51 -0800 (PST)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id a13sm14121605pfv.99.2021.11.14.18.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Nov 2021 18:32:50 -0800 (PST)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     dianders@chromium.org, philipchen@chromium.org, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH] FROMLIST: arm64: dts: sc7180: Fix ps8640 power sequence for Homestar rev4
Date:   Mon, 15 Nov 2021 10:32:41 +0800
Message-Id: <20211115023241.7120-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When powering up the ps8640, we need to deassert PD right
after we turn on the vdd33 regulator. Unfortunately, the vdd33
regulator takes some time (~4ms) to turn on. Add in the delay
for the vdd33 regulator so that when the driver deasserts PD
that the regulator has had time to ramp.

Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts
index fb27106bbb4a..ddba26c1a4a2 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar-r4.dts
@@ -15,3 +15,7 @@ / {
 	model = "Google Homestar (rev4+)";
 	compatible = "google,homestar", "qcom,sc7180";
 };
+
+&pp3300_brij_ps8640 {
+    regulator-enable-ramp-delay = <4000>;
+};
-- 
2.25.1

