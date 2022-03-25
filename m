Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 229104E7B3D
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:20:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233778AbiCYWKK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 18:10:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233776AbiCYWKJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 18:10:09 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21BE4166675
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:08:34 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id l4-20020a17090a49c400b001c6840df4a3so9671542pjm.0
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6KZS4Fn3XZXMPORcEe2Fn8Tp1Rquo/5MePufC7Tb21w=;
        b=P0ON+rFkhVycyCo2fWtouqSLlKkPk4AtWHcCqPAyKcB4HSGk/igEbzhZVmBiAJw7IS
         2tGCmLftClZcVxZUJF5EURfeLhWkNbwmZ2rZDV9sjT8PjrZo2nQfBIom8bAl78rv0iv1
         rQlkIqBz1LhemYX5Oysov7If8tZ6KcFzwggVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6KZS4Fn3XZXMPORcEe2Fn8Tp1Rquo/5MePufC7Tb21w=;
        b=QVpJDHa4PpH3nkyRiOrVIytOc9E0UIHn7tbe0JSDxLgqfKz7SQz70PogtodS4m6//p
         j4yxTR7Fn02/LOz7/+rCT5J2L2gElUBtzsRab0/nFfveh+TvNTo1bfxb9eRpMojTQFrN
         ltvZqoFW6JZSh7D+vpteMFXr7AO84s0BVuk/SuRyojjG41s8bmNJCmb91ot9RKR39gGD
         pHDvBHh7iW3IukMKrlpPKDdQlfvSf2tOmF+YYqRdhwk6Yq/IjMNA0AOI70mr1/FVDSrK
         UwbXXiph3beOz4l2zEf0YTKBvcn6+0O+8G5bJ7Z3zYMJNa3P3q277HRU/Yr7LxjcEBLn
         jp6g==
X-Gm-Message-State: AOAM533+Nd2eawEjrK1xdLVd4w9L+CF33/3ZrkJoT4pSkn55yPoy9LJZ
        DecyhQAFWK/u0OhGFf1+oLic4w==
X-Google-Smtp-Source: ABdhPJwoPZvqd8Dhy9q4yZvmyIiK6L/uWN2FM7OxWjgdDorYCAtXuvCgv/fQSFS/CgTenKpBtqaOIg==
X-Received: by 2002:a17:902:f54d:b0:154:6794:ab38 with SMTP id h13-20020a170902f54d00b001546794ab38mr13740569plf.114.1648246113681;
        Fri, 25 Mar 2022 15:08:33 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:f21c:980b:7d64:94f9])
        by smtp.gmail.com with UTF8SMTPSA id d5-20020a17090acd0500b001b9c05b075dsm13329404pju.44.2022.03.25.15.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 15:08:33 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v3 2/8] iio: sx9324: Fix register field spelling
Date:   Fri, 25 Mar 2022 15:08:21 -0700
Message-Id: <20220325220827.3719273-3-gwendal@chromium.org>
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

Field for PROX_CTRL4 should contain PROX_CTRL4.

Fixes: 4c18a890dff8d ("iio:proximity:sx9324: Add SX9324 support")
Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
Changes since v2:
- no changes

Changes since v1:
- Add Fixes keyword in commit message.

 drivers/iio/proximity/sx9324.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/sx9324.c b/drivers/iio/proximity/sx9324.c
index d50ce67aafdf2..1dfa19426c210 100644
--- a/drivers/iio/proximity/sx9324.c
+++ b/drivers/iio/proximity/sx9324.c
@@ -90,7 +90,7 @@
 #define SX9324_REG_PROX_CTRL4_AVGNEGFILT_MASK	GENMASK(5, 3)
 #define SX9324_REG_PROX_CTRL4_AVGNEG_FILT_2 0x08
 #define SX9324_REG_PROX_CTRL4_AVGPOSFILT_MASK	GENMASK(2, 0)
-#define SX9324_REG_PROX_CTRL3_AVGPOS_FILT_256 0x04
+#define SX9324_REG_PROX_CTRL4_AVGPOS_FILT_256 0x04
 #define SX9324_REG_PROX_CTRL5		0x35
 #define SX9324_REG_PROX_CTRL5_HYST_MASK			GENMASK(5, 4)
 #define SX9324_REG_PROX_CTRL5_CLOSE_DEBOUNCE_MASK	GENMASK(3, 2)
@@ -794,7 +794,7 @@ static const struct sx_common_reg_default sx9324_default_regs[] = {
 	{ SX9324_REG_PROX_CTRL3, SX9324_REG_PROX_CTRL3_AVGDEB_2SAMPLES |
 		SX9324_REG_PROX_CTRL3_AVGPOS_THRESH_16K },
 	{ SX9324_REG_PROX_CTRL4, SX9324_REG_PROX_CTRL4_AVGNEG_FILT_2 |
-		SX9324_REG_PROX_CTRL3_AVGPOS_FILT_256 },
+		SX9324_REG_PROX_CTRL4_AVGPOS_FILT_256 },
 	{ SX9324_REG_PROX_CTRL5, 0x00 },
 	{ SX9324_REG_PROX_CTRL6, SX9324_REG_PROX_CTRL6_PROXTHRESH_32 },
 	{ SX9324_REG_PROX_CTRL7, SX9324_REG_PROX_CTRL6_PROXTHRESH_32 },
-- 
2.35.1.1021.g381101b075-goog

