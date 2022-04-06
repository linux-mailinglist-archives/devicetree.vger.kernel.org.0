Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8D8F4F6902
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 20:19:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240276AbiDFSNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 14:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240248AbiDFSNK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 14:13:10 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D760312E775
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:50:32 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id p17so2454789plo.9
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 09:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XEPPHqz4VApOEdnh9NNG69o7HuIEHeO+mlldHsXKCc4=;
        b=j2pPhljMH/Ql1zSdh5+CtZj3JpKuJmDJBO3Dd/Y7Z4NadiMCBuF8Fr4cJFdbmmEVCg
         sMDVuB32i96iBRZ5zECo0aZqE1CwN3HSgweNQOYRy49WARMwqt/Z2n2M+GIL9ZWh9J14
         9smvu3gAaAqhx/PRLKCRlHL0KbpBWJkB3VSuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XEPPHqz4VApOEdnh9NNG69o7HuIEHeO+mlldHsXKCc4=;
        b=vqi5XQr2cyS8eCdSr+AhC0kCa+v2PnxiBDv59PCDDyGknKEdP5AZ8j7EWtsDEcEmHN
         k6MBQSd3PlwyGm18EFw1IaXkX10xtX9IMxeWV0aPew53zZqY6WRMSifwTDEpXpBs/YYW
         pG1ueB0XwjWbdB5pSzNXxzCfDvOwFu2L9uigCPu8DkAu/rYCMQQcdzqXi4IineF15XA6
         18fkYG4zuF5rMsBkxoMJDOanKSyYCNlYo0NpAhkmhQXf0qQr0Ro/Db82/0LXQnI791XH
         jAZbl1i/A5SIvbUDFxJYAd+s0CJk7W8cuLFgUtsDA8r6M9wC7D6LYwaLIOLHN9Dpodct
         4N6w==
X-Gm-Message-State: AOAM530hb2acSR3BPrj+dvcknn/JewKtsmABXfWf0GsJVWz79kzOpFw/
        ktARAVLlUQrFDN1duBhl+bKtnA==
X-Google-Smtp-Source: ABdhPJxmExWR8o1VB4zLfYOJTgaHMqjEUh4d63DquBVWHk+OmmypFPtF6/Zcvmcermydd68ltPFevw==
X-Received: by 2002:a17:90b:3907:b0:1c6:a16b:12e3 with SMTP id ob7-20020a17090b390700b001c6a16b12e3mr10896386pjb.157.1649263832284;
        Wed, 06 Apr 2022 09:50:32 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c9d3:469f:91e4:c022])
        by smtp.gmail.com with UTF8SMTPSA id v10-20020a63ac0a000000b0039901c45810sm13669836pge.47.2022.04.06.09.50.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 09:50:31 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v4 2/8] iio: sx9324: Fix register field spelling
Date:   Wed,  6 Apr 2022 09:50:05 -0700
Message-Id: <20220406165011.10202-3-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.1094.g7c7d902a7c-goog
In-Reply-To: <20220406165011.10202-1-gwendal@chromium.org>
References: <20220406165011.10202-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Field for PROX_CTRL4 should contain PROX_CTRL4.

Fixes: 4c18a890dff8d ("iio:proximity:sx9324: Add SX9324 support")
Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
Changes since v3:
- Added Review tags.

Changes since v2:
- no changes

Changes since v1:
- Add Fixes keyword in commit message.

 drivers/iio/proximity/sx9324.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/sx9324.c b/drivers/iio/proximity/sx9324.c
index 378c2a17bae6e..a7d9a53692a6d 100644
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
2.35.1.1094.g7c7d902a7c-goog

