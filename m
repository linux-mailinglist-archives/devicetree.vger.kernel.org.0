Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0297837B1D2
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 00:52:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230184AbhEKWxw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 18:53:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230186AbhEKWxp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 18:53:45 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28DD5C06138B
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 15:52:34 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id j12so10741451pgh.7
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 15:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8aKnVtIxlUG/2eUQmNl0qPhaQg9l3TplAhr5B7EOd6U=;
        b=LvzERiaiALvJFXjzftXoHUCyKmzQ4UBbwHeONAJXlRmCEFlO7I1pPQBoo51KsymSOC
         izVUQGDqJF43p1PMQqu3RTbUEknJP2LEoPusHVkm35IFDHE1EcXzm+DDGZ9PnIg4GVln
         ZePnFPrFMA0JsA1+JnW4vWXx0HQ5ISkwnuUXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8aKnVtIxlUG/2eUQmNl0qPhaQg9l3TplAhr5B7EOd6U=;
        b=q0iDKXHJLlaESKBL+qUI7p9/x+DAPrPTD3RN4EFux5vqR543b/hB5iOYYpGi00ADeG
         cnQYo2h5p94FremrUd/e2V0KR/PnPjQY6C9aZvyKJZkasd0hrl/etkjDuMbJzSn429Uq
         mJTNJizitz2zDBD9+F5O/ECXidyZThns3IUz+44F2ceIF2U+f+5tA8bDm2J/iNrgy68D
         bpi5bklPhkGSbeviHDnc2bQ38ODdx3BaS+GAwctrqq0VHpzgggtb20k+joBR0LKyrWpB
         szgY4BqNzC3nBqUECpOjiwFX0FD6tuqIzYwq729uBZLdKLRBLlJUhn5CZ3Rd8CrsgEgj
         JAgQ==
X-Gm-Message-State: AOAM533h4Blf7c8LLEvyfl9xfPMhhqHSY1yMMYlCgx4UQ3jzCAT5q1Iq
        p28acXQ1F4t6M++IJTDMlY9QTA==
X-Google-Smtp-Source: ABdhPJzcc0HOveQxurQucFIXSEwc1uBL9OYa3E78PzbfuEgM9Oc9XcjLr/Ej3fQt4k23AWDj8Izisg==
X-Received: by 2002:a63:540b:: with SMTP id i11mr33172485pgb.44.1620773553616;
        Tue, 11 May 2021 15:52:33 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:f1d7:673a:456e:c653])
        by smtp.gmail.com with UTF8SMTPSA id x22sm14230968pfa.24.2021.05.11.15.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 15:52:33 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Michal Simek <michal.simek@xilinx.com>, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-usb@vger.kernel.org, Peter Chen <peter.chen@kernel.org>,
        linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v10 3/5] of/platform: Add stubs for of_platform_device_create/destroy()
Date:   Tue, 11 May 2021 15:52:21 -0700
Message-Id: <20210511155152.v10.3.I08fd2e1c775af04f663730e9fb4d00e6bbb38541@changeid>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210511225223.550762-1-mka@chromium.org>
References: <20210511225223.550762-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Code for platform_device_create() and of_platform_device_destroy() is
only generated if CONFIG_OF_ADDRESS=y. Add stubs to avoid unresolved
symbols when CONFIG_OF_ADDRESS is not set.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---

Changes in v10:
- none

Changes in v9:
- added Rob's 'Acked-by' tag

Changes in v8:
- fixed C&P error in commit message

Changes in v7:
- none

Changes in v6:
- patch added to the series

 include/linux/of_platform.h | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/include/linux/of_platform.h b/include/linux/of_platform.h
index 84a966623e78..d15b6cd5e1c3 100644
--- a/include/linux/of_platform.h
+++ b/include/linux/of_platform.h
@@ -61,16 +61,18 @@ static inline struct platform_device *of_find_device_by_node(struct device_node
 }
 #endif
 
+extern int of_platform_bus_probe(struct device_node *root,
+				 const struct of_device_id *matches,
+				 struct device *parent);
+
+#ifdef CONFIG_OF_ADDRESS
 /* Platform devices and busses creation */
 extern struct platform_device *of_platform_device_create(struct device_node *np,
 						   const char *bus_id,
 						   struct device *parent);
 
 extern int of_platform_device_destroy(struct device *dev, void *data);
-extern int of_platform_bus_probe(struct device_node *root,
-				 const struct of_device_id *matches,
-				 struct device *parent);
-#ifdef CONFIG_OF_ADDRESS
+
 extern int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
 				const struct of_dev_auxdata *lookup,
@@ -84,6 +86,18 @@ extern int devm_of_platform_populate(struct device *dev);
 
 extern void devm_of_platform_depopulate(struct device *dev);
 #else
+/* Platform devices and busses creation */
+static inline struct platform_device *of_platform_device_create(struct device_node *np,
+								const char *bus_id,
+								struct device *parent)
+{
+	return NULL;
+}
+static inline int of_platform_device_destroy(struct device *dev, void *data)
+{
+	return -ENODEV;
+}
+
 static inline int of_platform_populate(struct device_node *root,
 					const struct of_device_id *matches,
 					const struct of_dev_auxdata *lookup,
-- 
2.31.1.607.g51e8a6a459-goog

