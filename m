Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 379D44DA13B
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 18:31:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236042AbiCORcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 13:32:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241589AbiCORcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 13:32:10 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2335C5881C
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:55 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id gb19so75680pjb.1
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=78gvibjeKT4E8seybiJ1l4R57cWNdtsLWtiOe/+tZjs=;
        b=O8N7JnKGEsvNR+hkzLhAh0B+4bcHH2SR7w/Y/K02enlX8YFUb27HzkQqmxQgpNh/vK
         PEXiO/8mWbdhxWTrYzWaY4vrqp8UIwu6VWvLLr6JPvMqQLUTxHKQhM44OFhTLx2/4MUf
         LWQB5ffkbx+Lyq6WnNorN3TJ0iV1FqEj9QJOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=78gvibjeKT4E8seybiJ1l4R57cWNdtsLWtiOe/+tZjs=;
        b=EmlX6koeBiiAwGi3blh8edtzhKS8yysMHcPeQHYwGvVDH9LugXy2j9Sjzm9OGZoiNI
         WPd1ioN8SYZmbLtNKQMP5Ce8ufxZwjiCquIouDJsi9RDigXFspaui6ldFzQWtAT99WEW
         sJaycUPR6D99pK19pKPSZxh+iIZOY/xx3f9cKk2dDIMMukto2psvwLW0KoDe/CQOYM85
         ApExjz+ggfc9uw1jSUXtL5dPHduJ7iwetYDDKToX0TQYbg+qcOEaYZddRtWtHjpxwEiW
         ocwmyIS6z2TW6ZWQNTK/8jpM5wGlnrTC0P2oRoNK5wwcrJgLdqyIVCxFmCxgkrXDQU7H
         KVdg==
X-Gm-Message-State: AOAM531Rml8sZc7/W+uaGOdHDILW6wPO3yG1bxoxN4LFdatVQtXMyUbB
        EdsdX9usKz3fjXmz8TjDjEXLYw==
X-Google-Smtp-Source: ABdhPJz6OEQZAL3LaC+LMrWbSJ7XZkBt7lN/UEKYwTCUjrBNYAutHcLyi5xdPCl0kiLSSVOTmbqwPw==
X-Received: by 2002:a17:903:110d:b0:14f:72a1:7b18 with SMTP id n13-20020a170903110d00b0014f72a17b18mr28957846plh.111.1647365454549;
        Tue, 15 Mar 2022 10:30:54 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:53f9:5c35:428f:83a1])
        by smtp.gmail.com with UTF8SMTPSA id b21-20020a17090a551500b001b90ef40301sm4086294pji.22.2022.03.15.10.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 10:30:54 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH 1/7] iio: sx9324: Fix register field spelling
Date:   Tue, 15 Mar 2022 10:30:36 -0700
Message-Id: <20220315173042.1325858-2-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.723.g4982287a31-goog
In-Reply-To: <20220315173042.1325858-1-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Field for PROX_CTRL4 should contain PROX_CTRL4.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
 drivers/iio/proximity/sx9324.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/sx9324.c b/drivers/iio/proximity/sx9324.c
index 0d9bbbb50cb45..1bef16437aa84 100644
--- a/drivers/iio/proximity/sx9324.c
+++ b/drivers/iio/proximity/sx9324.c
@@ -89,7 +89,7 @@
 #define SX9324_REG_PROX_CTRL4_AVGNEGFILT_MASK	GENMASK(5, 3)
 #define SX9324_REG_PROX_CTRL4_AVGNEG_FILT_2 0x08
 #define SX9324_REG_PROX_CTRL4_AVGPOSFILT_MASK	GENMASK(2, 0)
-#define SX9324_REG_PROX_CTRL3_AVGPOS_FILT_256 0x04
+#define SX9324_REG_PROX_CTRL4_AVGPOS_FILT_256 0x04
 #define SX9324_REG_PROX_CTRL5		0x35
 #define SX9324_REG_PROX_CTRL5_HYST_MASK			GENMASK(5, 4)
 #define SX9324_REG_PROX_CTRL5_CLOSE_DEBOUNCE_MASK	GENMASK(3, 2)
@@ -792,7 +792,7 @@ static const struct sx_common_reg_default sx9324_default_regs[] = {
 	{ SX9324_REG_PROX_CTRL3, SX9324_REG_PROX_CTRL3_AVGDEB_2SAMPLES |
 		SX9324_REG_PROX_CTRL3_AVGPOS_THRESH_16K },
 	{ SX9324_REG_PROX_CTRL4, SX9324_REG_PROX_CTRL4_AVGNEG_FILT_2 |
-		SX9324_REG_PROX_CTRL3_AVGPOS_FILT_256 },
+		SX9324_REG_PROX_CTRL4_AVGPOS_FILT_256 },
 	{ SX9324_REG_PROX_CTRL5, 0x00 },
 	{ SX9324_REG_PROX_CTRL6, SX9324_REG_PROX_CTRL6_PROXTHRESH_32 },
 	{ SX9324_REG_PROX_CTRL7, SX9324_REG_PROX_CTRL6_PROXTHRESH_32 },
-- 
2.35.1.723.g4982287a31-goog

