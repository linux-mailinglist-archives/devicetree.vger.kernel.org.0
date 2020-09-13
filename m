Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 455F22681BE
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 00:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725945AbgIMWrs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Sep 2020 18:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725943AbgIMWrp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Sep 2020 18:47:45 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 992EAC061787
        for <devicetree@vger.kernel.org>; Sun, 13 Sep 2020 15:47:43 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id y17so11367291lfa.8
        for <devicetree@vger.kernel.org>; Sun, 13 Sep 2020 15:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a0CnuPu0K6/WLK/liJFiz6d6XaRPvznS10ttRYxon8k=;
        b=MGRVfMK52cQ2dQ3Pos6elob2rY4hrc2YuM8Sm2XEbdwkiuO1ku6Ug0PpmH5inWkx9X
         CItcaMKpSvdYKub6O/kOLoXLmzp2eTJXiQ7y7K/+rG4Ls9GOFBqQAmSYs79YvO4S9ExW
         mYaPAm0B0G1yPPhSaQJqZIW6C+CMt6+u5u8oZgh05UUAZr0U2/mJFvh9ZnvkhAaG/w4a
         nH4myF/t3OhoMDhsDEsovxuTJA6nLno3pa8YG8kfa3eIJconIuYpLGxefR5kuEtMYVlK
         2deygX++ONJh2jfQFnaZEts4/WW8WU2XdFvOiYHSs2a3ghbqbOVKaUu3URakKhbuEROM
         O/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a0CnuPu0K6/WLK/liJFiz6d6XaRPvznS10ttRYxon8k=;
        b=X9ZugJu02ExTCGbGZb9ccCM16oAllJAtFC/hb42cWkpbQQQ07P0J//vQQgYjt6uwMz
         kXFfm8+o3saNIiyb2Q1fOIF+TPDTGkhraz8Qs1A83+zdkiLvaIrkzM0uEZikFD7kmZcM
         1R7QD17VdyuaUOwkO6HkPAX7yL6FDqWRQhgSJWAC4Tjesn38cTnhVlLN6WbMnBsKOmzZ
         HRtUa2K5abyN4FAwCCduYfpxhi3TSiIc/gznGpvgExV3bj3uySAivEofS3yaAONztVKn
         sXHpTHtpoHse6S+P9l+XjLd5nP4OClEc/PppKJ5wmiSJGniAlF4oOaapxjo+IyYMnuMR
         za6w==
X-Gm-Message-State: AOAM530yrJodK+lkzeWXUOLlEeTNxF3AUdzTWMU9xIgzwGC0NKSOKsc3
        ZyfyGL0UHumD/THA6Fe8P6RETg==
X-Google-Smtp-Source: ABdhPJyUkHGVyAza0vXgaGprcY3Q65fp/CUCpm8eZLqKTGRfN9RcZeNlbEROqVtVcqIbvfVPgS1tOA==
X-Received: by 2002:ac2:5327:: with SMTP id f7mr3607124lfh.8.1600037261240;
        Sun, 13 Sep 2020 15:47:41 -0700 (PDT)
Received: from eriador.lan ([188.162.64.187])
        by smtp.gmail.com with ESMTPSA id c1sm2851900lfh.190.2020.09.13.15.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2020 15:47:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8250-mtp: add i2c device tree nodes
Date:   Mon, 14 Sep 2020 01:47:38 +0300
Message-Id: <20200913224738.30046-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree nodes describing used i2c busses according to the dts
found in msm-4.19 tree.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts | 28 +++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index 6e2f7ae1d621..fd194ed7fbc8 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -358,10 +358,38 @@ &cdsp {
 	firmware-name = "qcom/sm8250/cdsp.mbn";
 };
 
+&i2c1 {
+	status = "okay";
+	clock-frequency = <1000000>;
+
+	/* NQ NFC chip @28 */
+};
+
+&i2c13 {
+	status = "okay";
+
+	/* st,stmfts @ 49 */
+};
+
+&i2c15 {
+	status = "okay";
+
+	/* smb1390 @ 10 */
+	/* rtc6226 @ 64 */
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
 
+&qupv3_id_2 {
+	status = "okay";
+};
+
 &slpi {
 	status = "okay";
 	firmware-name = "qcom/sm8250/slpi.mbn";
-- 
2.28.0

