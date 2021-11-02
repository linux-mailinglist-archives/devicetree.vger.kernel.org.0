Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D73D7443428
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 17:57:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234694AbhKBQ7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 12:59:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234868AbhKBQ7r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 12:59:47 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35991C06120A
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 09:57:09 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id r4so77526213edi.5
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 09:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ck6CnoOUEpGTUA7mAEjajeF6BgfIwURf2ogwlOV0P5c=;
        b=2E8ENMCurJMYMBMn20bfW4pwSZXNVxkggZdmh6mMFi3wdI4hHCwGtMOoMMx1Ct4AC7
         bJD6Ngqr13U0uE7Jp3uqgxHFwe57d3dsOdE7tBBwhnl2s6uwFrKRLX87G6AtukxHQD1q
         TU+ld3N0qx//v+dYj2SrpvHtVs3ML/ehoIRtKERcMHH6DEoyBEE9goecIvmK+7/RNUD7
         Mc8vHfhIw6eo/Mn8TxVPmKlUvMsXeqb4/IGspp1f/Acw4vPjA09GhsfckWZhMMnte0AU
         K3ZX9CzyKQtjVd5Z5OFPxYj8Wf+SfKTFzFrcvzMo0M6sF/69yNo5C1CbvQa2w93/afT0
         fniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ck6CnoOUEpGTUA7mAEjajeF6BgfIwURf2ogwlOV0P5c=;
        b=L2qFG74VUQSxo1mhCJJKuNOzstUVt6h1E1IxBVSkmpNjQ29YVC39rwNizTXcu9aq2X
         ni70bn+07cVTwCm2xD6jJl3rQ7bOzWU+GbVxBhEOUD4vWn43byheZ9t4zvXTxMcT/0J3
         vhoOoRwYhuirdvLzolBoOafKpQbcemHVyUXg7RG7L2vv99+Bke5aaHLVyxbX//ZI5Bb5
         MQmWTiH8ZrWSI9S4kBNTaxC0htr7IIA+ER/DUQtMuZ7PorBKiaJHcDOwIyy8OQlc1dYh
         5SRADlU9x1r/PINY2hJ6pMyIoQZTgq6pN04sN8xqkekrB6dcw/22PhuetRdxAIJC5dEy
         Ge4g==
X-Gm-Message-State: AOAM53047fF27u0RKWoa4fN1QdXgBdU5N6jvErEgLoAkakt317EZZ8mi
        FTl35usbZpqMSK/+NeOH8GDTTQ==
X-Google-Smtp-Source: ABdhPJx3KYuW+asmA2nkoi+WdjzK37hECehh787t8AHs4Nk4TVG+7T90D9aMPCrDmpT5I9ZpytZzBg==
X-Received: by 2002:a17:907:6e0a:: with SMTP id sd10mr46036648ejc.33.1635872227782;
        Tue, 02 Nov 2021 09:57:07 -0700 (PDT)
Received: from fedora.. (cpezg-94-253-144-183-cbl.xnet.hr. [94.253.144.183])
        by smtp.googlemail.com with ESMTPSA id i22sm10816297edu.93.2021.11.02.09.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 09:57:07 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, lee.jones@linaro.org, p.zabel@pengutronix.de,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, andrew@lunn.ch,
        andy.shevchenko@gmail.com
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v7 3/6] dt-bindings: reset: Add Delta TN48M
Date:   Tue,  2 Nov 2021 17:56:54 +0100
Message-Id: <20211102165657.3428995-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102165657.3428995-1-robert.marko@sartura.hr>
References: <20211102165657.3428995-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add header for the Delta TN48M CPLD provided
resets.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 include/dt-bindings/reset/delta,tn48m-reset.h | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 include/dt-bindings/reset/delta,tn48m-reset.h

diff --git a/include/dt-bindings/reset/delta,tn48m-reset.h b/include/dt-bindings/reset/delta,tn48m-reset.h
new file mode 100644
index 000000000000..d4e9ed12de3e
--- /dev/null
+++ b/include/dt-bindings/reset/delta,tn48m-reset.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Delta TN48M CPLD GPIO driver
+ *
+ * Copyright (C) 2021 Sartura Ltd.
+ *
+ * Author: Robert Marko <robert.marko@sartura.hr>
+ */
+
+#ifndef _DT_BINDINGS_RESET_TN48M_H
+#define _DT_BINDINGS_RESET_TN48M_H
+
+#define CPU_88F7040_RESET	0
+#define CPU_88F6820_RESET	1
+#define MAC_98DX3265_RESET	2
+#define PHY_88E1680_RESET	3
+#define PHY_88E1512_RESET	4
+#define POE_RESET		5
+
+#endif /* _DT_BINDINGS_RESET_TN48M_H */
-- 
2.33.1

