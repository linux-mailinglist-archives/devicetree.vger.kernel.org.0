Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9C624DA140
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 18:31:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241589AbiCORcS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 13:32:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350625AbiCORcR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 13:32:17 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60D4358832
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:31:03 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id mj15-20020a17090b368f00b001c637aa358eso2581023pjb.0
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bcbI/IyLBK5yCV6Je/ylupv0TSoss5Ry0ujkUHeiaM4=;
        b=cfmHtvr6JRSXBvz/Mr4ZcMt8rfbyJ6q5QsIrgCRdhFrSnkh0nqi15Ec/vbUT7OBDY1
         BDDOgequOJPPhtOVMsoPTgvIHE4NFK7bWI/Z+fWpEKHLJmmKzKm6LNo8CUZFlYbhnLpv
         ShrHSzv275SMczM+ebgCUEjXTPAVwLItr8Lig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bcbI/IyLBK5yCV6Je/ylupv0TSoss5Ry0ujkUHeiaM4=;
        b=etZSQW/iH1Ttx5brMLtVeyomt4tReWFucvnokUE8Wj5cuKD7EQy2JbD+0tTIQxL054
         StU9s+33cO67uy6JMK3FQuB1zVsNbl1iXfYcuxHt79OGVFdIW3QCyull/iguWdD16YgW
         vvadlbwnV7279ojxro1tX7j4twk3Eqnq2Sp1ejhu4k2+Id59PqQZGjAhYMoci3NkpNse
         PHAJriKbm5dcIhE5WArii6y58+sCSN18QnCcWVgdWf9mNS+zDo1hQUfoVxHBlrrg8zt/
         CK9qdULmwAEAGbhiQZzuiR6TDFYV5GXhuCmPedGKF6L+dSJeQAhfFaEq+J6oPTwYL/l3
         PIRQ==
X-Gm-Message-State: AOAM532H1uavmd0SR0624iuOORVXf4h9cldDrIf7ebOK9/Mm88cvsc33
        0bpCn6cUzt34eQQTpzWMk7BpRw==
X-Google-Smtp-Source: ABdhPJwgtmrHA8pwCTI7PYfJGRuBUCgExPZvXoa7KiPWEaOYeHqJNHwXiRNIzknWWMqnd3VWgfkPng==
X-Received: by 2002:a17:90b:4d82:b0:1c5:d65:9a3a with SMTP id oj2-20020a17090b4d8200b001c50d659a3amr5895348pjb.112.1647365462909;
        Tue, 15 Mar 2022 10:31:02 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:53f9:5c35:428f:83a1])
        by smtp.gmail.com with UTF8SMTPSA id e6-20020a056a001a8600b004f78b5a4493sm17075729pfv.105.2022.03.15.10.31.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 10:31:02 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH 7/7] iio: sx9360: Add pre-charge resistor setting
Date:   Tue, 15 Mar 2022 10:30:42 -0700
Message-Id: <20220315173042.1325858-8-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.723.g4982287a31-goog
In-Reply-To: <20220315173042.1325858-1-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
 drivers/iio/proximity/sx9360.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/sx9360.c b/drivers/iio/proximity/sx9360.c
index 3ebb30c8a4f61..51aa65f12493a 100644
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
+				"semtech,input-precharge-resistor",
+				&raw);
+		reg_def->def &= ~SX9360_REG_AFE_CTRL1_RESFILTIN_MASK;
+		reg_def->def |= FIELD_PREP(SX9360_REG_AFE_CTRL1_RESFILTIN_MASK,
+					   raw / 2);
+		break;
 	case SX9360_REG_AFE_PARAM0_PHR:
 	case SX9360_REG_AFE_PARAM0_PHM:
 		ret = device_property_read_u32(dev, "semtech,resolution", &raw);
-- 
2.35.1.723.g4982287a31-goog

