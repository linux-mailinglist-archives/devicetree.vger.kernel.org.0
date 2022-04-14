Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3EE25009C9
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 11:28:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237249AbiDNJbD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 05:31:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241745AbiDNJbA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 05:31:00 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAA8650E2A
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 02:28:35 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id e21so6061030wrc.8
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 02:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Av8EzP8d6KVoQi/yXwkBOAZabP9Xc8kXclRu9dT4+Lw=;
        b=XW/DvwVmRs0u+HPVCBNJh0m4E34d8hn5teI5p4MFlw1AwT0QGpyDrvDYKeFL04RmRK
         jvJG4o7qAJeCTCf9MHamgs4HLvZ9Sp1qgwjYT6HwHxwOr7ayhQgJeTOVefciIbCRRfcN
         kAIWOaIp3+4P5k1D8vWT9Ug6Fw28yDxDjq/go=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Av8EzP8d6KVoQi/yXwkBOAZabP9Xc8kXclRu9dT4+Lw=;
        b=GSh/fkP05tOT5Px4ofn2wkS4WhCMsXVI9Cyaj50nE+Z80iENiEFig7wsgO3XWKV7P4
         JSnToiScpglXGxGpgwQs/xh0qTihYntuTIxy+wYajz4SERc4v0eqplZxUTVcct1xGqQv
         uCSFAxv31aRUFF1598ThYibEkIz8BX7Qxq08iSfy3XGgTefCiXXDBmZe33M9dFOx+faF
         Xr9A+miwzrO/G280CvPYRjsSwm0hwqA77xJLNJQosbRNIDM4w0Ndzidm6ubZFgzaDRXk
         rhzP0Cd8qm/5Sj42WbaCGWVrhg93lE8r1gmjOeq1OENZG/1jfdfZFtzqSoIzoV5nr5rs
         7H6A==
X-Gm-Message-State: AOAM5322O8McOUHS+tl9gCAJD2ZRxZAxfa0ulf279uv8PugLGmCNqtO7
        yjfZwrU16v2zTWKQx+NlZwTBoA==
X-Google-Smtp-Source: ABdhPJwICPNoTiCyXovM+uFrLY1cRUMc9NSi0tZTBQi5obLIMnAkksH5rZ/OUVje2hYRLnI13kqUcw==
X-Received: by 2002:adf:d1c7:0:b0:205:dc0e:383a with SMTP id b7-20020adfd1c7000000b00205dc0e383amr1370718wrd.335.1649928514435;
        Thu, 14 Apr 2022 02:28:34 -0700 (PDT)
Received: from fabiobaltieri-linux.lan ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id bg8-20020a05600c3c8800b0038e4c5967besm1698099wmb.3.2022.04.14.02.28.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 02:28:34 -0700 (PDT)
From:   Fabio Baltieri <fabiobaltieri@chromium.org>
To:     Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        chrome-platform@lists.linux.dev, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Fabio Baltieri <fabiobaltieri@chromium.org>
Subject: [PATCH v4 1/4] dt-bindings: add mfd/cros_ec definitions
Date:   Thu, 14 Apr 2022 09:28:28 +0000
Message-Id: <20220414092831.3717684-2-fabiobaltieri@chromium.org>
X-Mailer: git-send-email 2.36.0.rc0.470.gd361397f0d-goog
In-Reply-To: <20220414092831.3717684-1-fabiobaltieri@chromium.org>
References: <20220414092831.3717684-1-fabiobaltieri@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a dt-bindings include file for cros_ec devicetree definition, define
a pair of special purpose PWM channels in it.

Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
---
 include/dt-bindings/mfd/cros_ec.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 include/dt-bindings/mfd/cros_ec.h

diff --git a/include/dt-bindings/mfd/cros_ec.h b/include/dt-bindings/mfd/cros_ec.h
new file mode 100644
index 000000000000..3b29cd049578
--- /dev/null
+++ b/include/dt-bindings/mfd/cros_ec.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * DTS binding definitions used for the Chromium OS Embedded Controller.
+ *
+ * Copyright (c) 2022 The Chromium OS Authors. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_MFD_CROS_EC_H
+#define _DT_BINDINGS_MFD_CROS_EC_H
+
+/* Typed channel for keyboard backlight. */
+#define CROS_EC_PWM_DT_KB_LIGHT		0
+/* Typed channel for display backlight. */
+#define CROS_EC_PWM_DT_DISPLAY_LIGHT	1
+/* Number of typed channels. */
+#define CROS_EC_PWM_DT_COUNT		2
+
+#endif
-- 
2.35.1.1178.g4f1659d476-goog

