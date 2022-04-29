Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7A805157B3
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380252AbiD2WFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:05:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238891AbiD2WFP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:05:15 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30926CB015
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:56 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id u9so7643720plf.6
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bzVP4SoLbvQ+2ClFFIC9xNs5B07CxGDHrnHqSGpSLAw=;
        b=j703hKi4kLCYjRuePWv3gyccqnWaFPRL+bVpATi2Z6o3yS3NKQS7rBNVG7Vr7N0NVQ
         rSd6m73Evjv+6brlhS48SedG19ShvjiUlLy1X2wExzPpdJFK94IjcYuzstG/zne63Nn5
         m4RQugC391JJAoblTCfNUXSLjYeONNK6fV370=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bzVP4SoLbvQ+2ClFFIC9xNs5B07CxGDHrnHqSGpSLAw=;
        b=heCzw3g1hpoiYjsDQPvwFbjajm5B5gQlKA5qFirNNAFbv7JD6WGsUEsUmdFnNuminm
         Wf3cl+nVQoV0/nJvMUkwm1/tAQZhIqqfuwrHc3GvQDTaleaX/zueHUZkfiXq41XXb1QK
         zLFoOit6uk6IWP/MfJCHeMwQc5DtXTygiLha3Fvd9Tks0x6h+rELYX5qTjdeVLIdxoDX
         vevO24J8ni2kNUwRaseYCBGLO0hKkiVT3BNf3Io8JepJ3A+WaiCwO5n3nayNtVBoKjPG
         1f1yI7fsv/6o6Kdl9siDS4KZ6yueuLrtfss0oq67xPqSSjLhhsF4U2HwiMGlOZMzKgI/
         2GJg==
X-Gm-Message-State: AOAM533oebhQdGwqYA2gkxi6+l7R0d+z02DUOI0d9hTBUlsU4H4E49ZF
        uPus7j88108ZpoOALsFbLOlhJg==
X-Google-Smtp-Source: ABdhPJx4h/jMuR0p2TEJd/JaZpQFc1tZVnOzZ8+0mM/JFDEnM6yE/7TuUzQ+NA7lEzFi1X5CWmo7zg==
X-Received: by 2002:a17:90a:ba15:b0:1c6:7873:b192 with SMTP id s21-20020a17090aba1500b001c67873b192mr1237925pjr.76.1651269715379;
        Fri, 29 Apr 2022 15:01:55 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6161:73ca:10a5:5383])
        by smtp.gmail.com with UTF8SMTPSA id a14-20020a1709027e4e00b0015e8d4eb1easm80425pln.52.2022.04.29.15.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 15:01:55 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v5 04/10] iio: sx9324: Add precharge internal resistance setting
Date:   Fri, 29 Apr 2022 15:01:38 -0700
Message-Id: <20220429220144.1476049-5-gwendal@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
In-Reply-To: <20220429220144.1476049-1-gwendal@chromium.org>
References: <20220429220144.1476049-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ability to set the precharge internal resistance from the device
tree.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
Changes since v4:
- Added missing tests when property is not found.

Changes since v3:
- Added Review tags.

Changes since v2:
- Change kOhms into ohms.

Changes since v1:
- Suffix field with kOhms unit.
- Split patch in 2.

 drivers/iio/proximity/sx9324.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/iio/proximity/sx9324.c b/drivers/iio/proximity/sx9324.c
index a7d9a53692a6d..8eec73f7641ee 100644
--- a/drivers/iio/proximity/sx9324.c
+++ b/drivers/iio/proximity/sx9324.c
@@ -72,6 +72,7 @@
 #define SX9324_REG_AFE_CTRL8		0x2c
 #define SX9324_REG_AFE_CTRL8_RESERVED	0x10
 #define SX9324_REG_AFE_CTRL8_RESFILTIN_4KOHM 0x02
+#define SX9324_REG_AFE_CTRL8_RESFILTIN_MASK GENMASK(3, 0)
 #define SX9324_REG_AFE_CTRL9		0x2d
 #define SX9324_REG_AFE_CTRL9_AGAIN_1	0x08
 
@@ -893,6 +894,18 @@ sx9324_get_default_reg(struct device *dev, int idx,
 		reg_def->def |= FIELD_PREP(SX9324_REG_AFE_CTRL4_RESOLUTION_MASK,
 					   raw);
 		break;
+	case SX9324_REG_AFE_CTRL8:
+		ret = device_property_read_u32(dev,
+				"semtech,input-precharge-resistor-ohms",
+				&raw);
+		if (ret)
+			break;
+
+		reg_def->def &= ~SX9324_REG_AFE_CTRL8_RESFILTIN_MASK;
+		reg_def->def |= FIELD_PREP(SX9324_REG_AFE_CTRL8_RESFILTIN_MASK,
+					   raw / 2000);
+		break;
+
 	case SX9324_REG_ADV_CTRL5:
 		ret = device_property_read_u32(dev, "semtech,startup-sensor",
 					       &start);
-- 
2.36.0.464.gb9c8b46e94-goog

