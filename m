Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B422058E5FE
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 06:06:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbiHJEFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 00:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230465AbiHJEFZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 00:05:25 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3651A21258
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 21:05:14 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 53-20020a9d0838000000b006371d896343so52865oty.10
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 21:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=otMbQ+fUxY1KqKVlgDpCNz3GS8mo4JE64ISTgGLY7Bw=;
        b=oPeYvsLzthrz/wujDz0x/KTlTkoB+UZmMOVZZjqZIzw2t7p1M+oZodLqLyVDF+VWIf
         ShCQapeXpthbW5woDkAX/t3LC7d0BYxdmKqGRnjJ/kirHgAJvSPjQzUdL9wYBMXmM0lU
         e9qtqsJq7q1Yf0LAMlLRdwQeGbsB6PhCHBpYd/YnbIzx0/JZzo4Ngw6flLPerrHB2slx
         l8XSb+KPrM/zk1Tz1TH7ObJSqiEmmVBN+kPlYWOqgeWZm5aagYKpQRn2ufTrwecc/nN3
         B4Rouk2kAS1ttVijfZIGlf9o7QFzV3E+oOE8C3InauGXSiGSQnv2BjQpZCwpAhTRc7h8
         C7yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=otMbQ+fUxY1KqKVlgDpCNz3GS8mo4JE64ISTgGLY7Bw=;
        b=6zXl6oOn5IOQVg/vVaN4aktkp+SpOzF85JBE82q9ioI/oHh0lp7KGzc+dpVfeDLt7i
         Sv4T+6cXGRjwAn5nhwP6QSKt9eF2vDyS2CWBCCqSxBLDKg3pCHx8MX5uBxsO2WJkxu6O
         NZD6ZM1eUrLCKIpzIkmNvbyMnrra0wDwr0awFk9/DOqtWBSYYDE7crplve+swnh/fQSY
         cP5XD3VtAXI6q/bXJuAWcgY/8FtZAzJujnikaLn7T32pzMeaKQgJLYJmLxYVC8HZlxV7
         1875nF+QDZypmANFvBUu1EK8Tc6ZxrmoBIbwAZQvlD2SFWI/ybdfE3Xh05EpfKohUj6C
         +iNA==
X-Gm-Message-State: ACgBeo0078ezzGqjpmmwvMtDZR/Etr0vJX1fTa1j3nMvxYh8SZfoGTUE
        UVIHnnrSPzR+IOriiwKS6NGriQ==
X-Google-Smtp-Source: AA6agR5PSzQ8RoK4TmRdA43VijbvZZNJhXAslG52xfwT/rylQBDFDrhutFH1LFS21v1AOHoPPevuug==
X-Received: by 2002:a05:6830:638d:b0:636:a941:d467 with SMTP id ch13-20020a056830638d00b00636a941d467mr8679172otb.5.1660104313495;
        Tue, 09 Aug 2022 21:05:13 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:12 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] phy: qcom: edp: Add SC8280XP eDP and DP PHYs
Date:   Tue,  9 Aug 2022 21:07:45 -0700
Message-Id: <20220810040745.3582985-6-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm SC8280XP platform has a number of eDP and DP PHY instances,
add support for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 74 +++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 301ac422d2fe..de696108cf6e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -100,6 +100,78 @@ struct qcom_edp {
 	struct regulator_bulk_data supplies[2];
 };
 
+static const u8 dp_swing_hbr_rbr[4][4] = {
+	{ 0x08, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 dp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x00, 0x0d, 0x14, 0x1a },
+	{ 0x00, 0x0e, 0x15, 0xff },
+	{ 0x00, 0x0e, 0xff, 0xff },
+	{ 0x03, 0xff, 0xff, 0xff }
+};
+
+static const u8 dp_swing_hbr2_hbr3[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x00, 0x0c, 0x15, 0x1b },
+	{ 0x02, 0x0e, 0x16, 0xff },
+	{ 0x02, 0x11, 0xff, 0xff },
+	{ 0x04, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_cfg dp_phy_cfg = {
+	.is_dp = true,
+	.swing_hbr_rbr = &dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
+};
+
+static const u8 edp_swing_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x0d, 0x16, 0x1e, 0xff },
+	{ 0x11, 0x1b, 0xff, 0xff },
+	{ 0x16, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr_rbr[4][4] = {
+	{ 0x05, 0x12, 0x17, 0x1d },
+	{ 0x05, 0x11, 0x18, 0xff },
+	{ 0x06, 0x11, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_swing_hbr2_hbr3[4][4] = {
+	{ 0x0b, 0x11, 0x17, 0x1c },
+	{ 0x10, 0x19, 0x1f, 0xff },
+	{ 0x19, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
+	{ 0x08, 0x11, 0x17, 0x1b },
+	{ 0x00, 0x0c, 0x13, 0xff },
+	{ 0x05, 0x10, 0xff, 0xff },
+	{ 0x00, 0xff, 0xff, 0xff }
+};
+
+static const struct qcom_edp_cfg edp_phy_cfg = {
+	.is_dp = false,
+	.swing_hbr_rbr = &edp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -767,6 +839,8 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,sc7280-edp-phy" },
 	{ .compatible = "qcom,sc8180x-edp-phy" },
+	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
+	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
-- 
2.35.1

