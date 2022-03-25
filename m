Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5032C4E7CFF
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:22:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233796AbiCYWKS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 18:10:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233780AbiCYWKR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 18:10:17 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177381667D2
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:08:43 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id w4so9580607ply.13
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PMMjrrJY3lBiXSG25cQt8v0fu/OT/ANdwXDyrDx8fr4=;
        b=J2QpRsMq8BWZ2dqZ7wcB/KblotkDhATrfTEQRjLNfDwAliioj9PyqIFKQYMr1Rrns6
         isQmnYrDPErBygpB4ecF15Muavr0n+XpiB59LHpflMiQcniA+hH+v7GNvAi60mONB9VK
         +OLhMlHrBzhuK0/JPM4GUV5FK1XAqaABveQsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PMMjrrJY3lBiXSG25cQt8v0fu/OT/ANdwXDyrDx8fr4=;
        b=ng1GQyCviEGNmAa08FBe7buZGu8fLDNO7KDE8ad48E2081pnpIps7V2ho197jiTodV
         Ild0VVErCLu0QGBNe3mTTLb5SKkYLuk7k6AN8Y5T70Ith+v1GAN5XbTz6F9pHBl1zTCF
         ++HEBkQyoR+ZgNgRZHAfaO4gVXZ4fdEeAqBFcPcwSvn9HKH/1QAaCY5uLFEkBBbEPOhL
         77HinOwuCKhK4Xg+ao6Z82rFShvjkO+/qrtU5ltm9Wc1TXkGPseVDDBGVQ555drWNkEh
         6NyTXSAehI1L41qkMhdOmZxQbRbyRaPK7xlLY65iYx3PPBQaJjZPkUshLfSbw/ymbYmi
         j7TQ==
X-Gm-Message-State: AOAM533o91VUWiRjVjvAY1neA/DlSdxquOXZE7cc/GEH5tJb9qXHlaj8
        bKfrIV658WIYwB5WCwdBeCn0qQ==
X-Google-Smtp-Source: ABdhPJxLJ8TbGaKuzSq7jJVieEUNAN6Mx0cv1g6SIFedyQ6xre8QZTqPHOoK5/CP69tHqvh+zut+Bw==
X-Received: by 2002:a17:90a:306:b0:1c6:ff30:70da with SMTP id 6-20020a17090a030600b001c6ff3070damr26812768pje.117.1648246122043;
        Fri, 25 Mar 2022 15:08:42 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:f21c:980b:7d64:94f9])
        by smtp.gmail.com with UTF8SMTPSA id 135-20020a62198d000000b004fa9a8f73casm7751457pfz.99.2022.03.25.15.08.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 15:08:41 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v3 8/8] iio: sx9360: Add pre-charge resistor setting
Date:   Fri, 25 Mar 2022 15:08:27 -0700
Message-Id: <20220325220827.3719273-9-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.1021.g381101b075-goog
In-Reply-To: <20220325220827.3719273-1-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ability to set the precharge internal resistance from the device
tree.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
Changes since v2:
- Change kOhms into ohms.

Changes since v1:
- Suffix field with kOhms unit.

 drivers/iio/proximity/sx9360.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/sx9360.c b/drivers/iio/proximity/sx9360.c
index 3ebb30c8a4f61..21cade4358aeb 100644
--- a/drivers/iio/proximity/sx9360.c
+++ b/drivers/iio/proximity/sx9360.c
@@ -51,6 +51,8 @@
 #define SX9360_REG_GNRL_REG_2_FREQ(_r)  (SX9360_FOSC_HZ / ((_r) * 8192))
 
 #define SX9360_REG_AFE_CTRL1		0x21
+#define SX9360_REG_AFE_CTRL1_RESFILTIN_MASK GENMASK(3, 0)
+#define SX9360_REG_AFE_CTRL1_RESFILTIN_0OHMS 0
 #define SX9360_REG_AFE_PARAM0_PHR	0x22
 #define SX9360_REG_AFE_PARAM1_PHR	0x23
 #define SX9360_REG_AFE_PARAM0_PHM	0x24
@@ -671,7 +673,7 @@ static const struct sx_common_reg_default sx9360_default_regs[] = {
 	{ SX9360_REG_GNRL_CTRL1, 0x00 },
 	{ SX9360_REG_GNRL_CTRL2, SX9360_REG_GNRL_CTRL2_PERIOD_102MS },
 
-	{ SX9360_REG_AFE_CTRL1, 0x00 },
+	{ SX9360_REG_AFE_CTRL1, SX9360_REG_AFE_CTRL1_RESFILTIN_0OHMS },
 	{ SX9360_REG_AFE_PARAM0_PHR, SX9360_REG_AFE_PARAM0_RSVD |
 		SX9360_REG_AFE_PARAM0_RESOLUTION_128 },
 	{ SX9360_REG_AFE_PARAM1_PHR, SX9360_REG_AFE_PARAM1_AGAIN_PHM_6PF |
@@ -722,6 +724,14 @@ sx9360_get_default_reg(struct device *dev, int idx,
 
 	memcpy(reg_def, &sx9360_default_regs[idx], sizeof(*reg_def));
 	switch (reg_def->reg) {
+	case SX9360_REG_AFE_CTRL1:
+		ret = device_property_read_u32(dev,
+				"semtech,input-precharge-resistor-ohms",
+				&raw);
+		reg_def->def &= ~SX9360_REG_AFE_CTRL1_RESFILTIN_MASK;
+		reg_def->def |= FIELD_PREP(SX9360_REG_AFE_CTRL1_RESFILTIN_MASK,
+					   raw / 2000);
+		break;
 	case SX9360_REG_AFE_PARAM0_PHR:
 	case SX9360_REG_AFE_PARAM0_PHM:
 		ret = device_property_read_u32(dev, "semtech,resolution", &raw);
-- 
2.35.1.1021.g381101b075-goog

