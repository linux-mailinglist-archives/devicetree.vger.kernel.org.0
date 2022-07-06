Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 621465682FE
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 11:10:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232859AbiGFJHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 05:07:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232963AbiGFJGg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 05:06:36 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 893412528C
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 02:05:04 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d16so14735233wrv.10
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 02:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=SoR7Ux0on4nf1Qo15rxc7uNb2HO/RqGdhLcmgjl5TJEByBP0inejUpsOr/9+9c4VNe
         U116K/wfR+Ufafd45lYbdRzH3rmt6Y/5FzkewGjvyiK8q6SjpI6u+1dIUiDvyYyC4Mbi
         kwKhdmm9RZMnCRTTCcoYZdYu+JxdHWjrAX3I2fXsey51UGDw96iSQbH4mr2/lvmIjiGJ
         dVtw7lH3wQ4YX72TefVnwD85Nv4XoN2RiIX5+SqTM5bBc3XRAEYGPiLNCoMlJCcOo4LV
         cV79VDm8OAtCOf3BIV4j55ctG2COtEOh9mUkjNzSAs8uq1AHXUA3JSxfLnYfZh/13TP/
         oewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=uI6Reg11RPcO7dsMkklh5yWteaPF3sRQ7sKHNaCBnM4bnCzsvYRnkZbd5rX7HVHE5n
         zuFix0Nw3LNY6Vohm32e6Xcr9HIb5xnpGFwBkILFaMVs7Faqrg5eEA3Z6vtmM71L6ups
         FaRPpR0aZ7j9zvALfHD7+mqfkH8nub4HLMCEu7wob6y8HUKhm+GTztHHJYCvV6q6TC+U
         g1HgxxtD43v9F5OKlo4zaqU4Sbgx8Ud8e9bG9rOZgetY5Dt1yLOwtkhA7XtpLPPeIZz0
         Iw1ZxlXiQqXeH8hqZCLV4/RQGBnCj2C1raQvmOBSrO5IJpyG+N0N8CW/kAbYC4vo9DKE
         7yhA==
X-Gm-Message-State: AJIora8Ig+GHA2KtFHyvyP+eXYiLscBZvLOksaC/7oAhnwLGMIpWjdCC
        XWcARtuMIZ5ponFAdldzHf7SGw==
X-Google-Smtp-Source: AGRyM1s0NtrzbFsGKeEvThnAUtfR0Dz41YElbKBkLJkfRZht8Yko9gJ0WTqHFIVMkhaWXaYuStEsBg==
X-Received: by 2002:a5d:6e8d:0:b0:21d:7223:1e1b with SMTP id k13-20020a5d6e8d000000b0021d72231e1bmr7736406wrz.713.1657098300111;
        Wed, 06 Jul 2022 02:05:00 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:59 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        john@metanate.com, didi.debian@cknow.org,
        Corentin Labbe <clabbe@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v8 26/33] clk: rk3399: use proper crypto0 name
Date:   Wed,  6 Jul 2022 09:04:05 +0000
Message-Id: <20220706090412.806101-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
Only reset for crypto1 is correctly named, but crypto0 is not.
Since nobody use them , add a 0 to be consistent with the TRM and crypto1 entries.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 include/dt-bindings/clock/rk3399-cru.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 44e0a319f077..39169d94a44e 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -547,8 +547,8 @@
 #define SRST_H_PERILP0			171
 #define SRST_H_PERILP0_NOC		172
 #define SRST_ROM			173
-#define SRST_CRYPTO_S			174
-#define SRST_CRYPTO_M			175
+#define SRST_CRYPTO0_S			174
+#define SRST_CRYPTO0_M			175
 
 /* cru_softrst_con11 */
 #define SRST_P_DCF			176
@@ -556,7 +556,7 @@
 #define SRST_CM0S			178
 #define SRST_CM0S_DBG			179
 #define SRST_CM0S_PO			180
-#define SRST_CRYPTO			181
+#define SRST_CRYPTO0			181
 #define SRST_P_PERILP1_SGRF		182
 #define SRST_P_PERILP1_GRF		183
 #define SRST_CRYPTO1_S			184
-- 
2.35.1

