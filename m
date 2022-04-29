Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F12785157B6
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:02:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381061AbiD2WFO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:05:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238809AbiD2WFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:05:11 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70935C74BB
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:51 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id n8so8276692plh.1
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oulsZQUSai/GQqwCFE/sf/lZc5vm5lyYOo24OaUn+3s=;
        b=JhXrmz+vT1k8mmGi4h+6saa78JoxnphHESdlCnTKGGLHj1W1jBI4F+OTw8+P1Qhafd
         gh2W7nJU8VsW0TcOqdSmHvWkY6vXYJmsdx8fNumcu5WqUbdXB/pZ9m/M4yqI7Yg6DZ0P
         3D7BQE9Z4CtcpUIGdUGspvPgOihDPgqcOxjUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oulsZQUSai/GQqwCFE/sf/lZc5vm5lyYOo24OaUn+3s=;
        b=dsFh6vqa36mrnMxZSf9K01Z6EvVD/1CQumysHC5uilP4kRj/62J89zzoPDv1yq04Eu
         u6X/kZlszkW59/UuJIqtLbU5i7n3jFMcsxtBBI8WceQ50GpyswG8JgoLMV+Yx5T4LYi/
         BTS0uBs5P8FuibyWZ1VSU836F5fYVpXFy1ImEsxD07rOiPFV9lZ6pr1SUPmsux3YHOyo
         DUWDZOgXZTwIHErlNOLiK+Cxs61uxLLl4Bz4hzLDCxna7J7etVPiSj/NPq3E4l5LSsPl
         bZSskCeExJ3GoEoc+Y5klNPjEiTUTzqtn6Bs3geZ1QG7oGbbNdXDs0o3YXJhcKCfmxQL
         Vf5g==
X-Gm-Message-State: AOAM531bov/aQLmRptF2hDtMANo8p6HArDkA/h7KztVnsqoqYOWooPJv
        KjYo0GJ4UGWmB28L64f4FOM8fnKHD5YNgw==
X-Google-Smtp-Source: ABdhPJxX7fB0OdX/c5jbmuu/mY1SnL663+hUj7I5GdWpG7G4ozZU4FVx8K0oqixnF+QeuT5KYU+Tlg==
X-Received: by 2002:a17:90a:8d82:b0:1d8:a5a9:5489 with SMTP id d2-20020a17090a8d8200b001d8a5a95489mr1211122pjo.102.1651269710991;
        Fri, 29 Apr 2022 15:01:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6161:73ca:10a5:5383])
        by smtp.gmail.com with UTF8SMTPSA id n9-20020aa79049000000b0050dc762813bsm167705pfo.21.2022.04.29.15.01.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 15:01:50 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v5 01/10] iio: sx9324: Fix default precharge internal resistance register
Date:   Fri, 29 Apr 2022 15:01:35 -0700
Message-Id: <20220429220144.1476049-2-gwendal@chromium.org>
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

Fix the default value for the register that set the resistance:
it has to be 0x10 per datasheet.

Fixes: 4c18a890dff8d ("iio:proximity:sx9324: Add SX9324 support")
Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
No changes since v4, already targeted for stable kernels.
Changes since v3:
- Fix commit, use RESERVED instead of RSVD.
Changes since v2:
- no changes

Changes since v1:
- new patch.

 drivers/iio/proximity/sx9324.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/sx9324.c b/drivers/iio/proximity/sx9324.c
index 0d9bbbb50cb45..378c2a17bae6e 100644
--- a/drivers/iio/proximity/sx9324.c
+++ b/drivers/iio/proximity/sx9324.c
@@ -70,7 +70,8 @@
 #define SX9324_REG_AFE_PH2		0x2a
 #define SX9324_REG_AFE_PH3		0x2b
 #define SX9324_REG_AFE_CTRL8		0x2c
-#define SX9324_REG_AFE_CTRL8_RESFILTN_4KOHM 0x02
+#define SX9324_REG_AFE_CTRL8_RESERVED	0x10
+#define SX9324_REG_AFE_CTRL8_RESFILTIN_4KOHM 0x02
 #define SX9324_REG_AFE_CTRL9		0x2d
 #define SX9324_REG_AFE_CTRL9_AGAIN_1	0x08
 
@@ -781,7 +782,8 @@ static const struct sx_common_reg_default sx9324_default_regs[] = {
 	{ SX9324_REG_AFE_PH2, 0x1a },
 	{ SX9324_REG_AFE_PH3, 0x16 },
 
-	{ SX9324_REG_AFE_CTRL8, SX9324_REG_AFE_CTRL8_RESFILTN_4KOHM },
+	{ SX9324_REG_AFE_CTRL8, SX9324_REG_AFE_CTRL8_RESERVED |
+		SX9324_REG_AFE_CTRL8_RESFILTIN_4KOHM },
 	{ SX9324_REG_AFE_CTRL9, SX9324_REG_AFE_CTRL9_AGAIN_1 },
 
 	{ SX9324_REG_PROX_CTRL0, SX9324_REG_PROX_CTRL0_GAIN_1 |
-- 
2.36.0.464.gb9c8b46e94-goog

