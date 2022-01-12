Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19CE548CB9E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 20:12:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241976AbiALTMC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 14:12:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356632AbiALTLF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 14:11:05 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EF8FC03325A
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 11:10:55 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id pf13so7157790pjb.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 11:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BGP24qVZTEpaBQ1xv9moCmCJQ917JXiSUjVHHrmVp/E=;
        b=PVG7VTvqlLNGORnwYw9j1OMg3+3ZTPcoOj7kAksry9PLrHcTCLejULVii9l67Eb/Yb
         OyWS2q9EPoXcwoFq2f9ykMMa51KEQobaL9AdrHlljItrFlLb84qUPypxl7NeIFM2gYfP
         F73jNvzEHeYQkxbqSRA7deWpXLcHHVQuVGgD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BGP24qVZTEpaBQ1xv9moCmCJQ917JXiSUjVHHrmVp/E=;
        b=Km9PRKwfgBpVBO6nCbdIOV2seNvktLsqWKo9ay6jv2OxqpL6UM28QjTLNzSkiU/RoM
         tBcNaxyPX5MAzx+36IWVWTDf54EgdqIGo3RxO9a09mk9LLeqabgjdhjmhelelYhnY8Q9
         uSuN/IOFgCxSzUl2mt3S7mR9wE/Ca9BYLi5WtOmqM/JNyl3efuxWTmKI7R8t3J7Vy9b/
         4EMYZ9WNQiL1gfwy3E9gtRmxU85RFJ+zysYgSCZZyCWP690kIvXfISSUJPzWrYT0uQKe
         FBsv/vxlmG5MWdEA/ys0s9VFOWHxxvaWhW4wgYiw8m+qBlg66VqX/ZXw4ETF7bSgJKkB
         LOHg==
X-Gm-Message-State: AOAM5323lZ4EBcWUBZlSM2rRA7RW4+ruLZuV3XQtLc5kwDn4Bqm41OiB
        qzTphbV2R+9jvL0vERsettRKHA==
X-Google-Smtp-Source: ABdhPJw0V7BAx/B4MLxvQ6u03zIBW4izudN2SvaqvG2oZbVic37IkfQmBRwmo4ewdqAYV59wyZCiPw==
X-Received: by 2002:a63:a74d:: with SMTP id w13mr904351pgo.7.1642014654994;
        Wed, 12 Jan 2022 11:10:54 -0800 (PST)
Received: from localhost ([2620:15c:202:201:f6eb:5b26:28c:1ca5])
        by smtp.gmail.com with UTF8SMTPSA id n8sm356040pgh.94.2022.01.12.11.10.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jan 2022 11:10:54 -0800 (PST)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Cc:     Bastien Nocera <hadess@hadess.net>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Peter Chen <peter.chen@kernel.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        linux-usb@vger.kernel.org, Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v19 1/5] of/platform: Add stubs for of_platform_device_create/destroy()
Date:   Wed, 12 Jan 2022 11:10:44 -0800
Message-Id: <20220112111028.v19.1.I08fd2e1c775af04f663730e9fb4d00e6bbb38541@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220112191048.837236-1-mka@chromium.org>
References: <20220112191048.837236-1-mka@chromium.org>
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

Changes in v19:
- still no changes ...

Changes in v18:
- still no changes ...

Changes in v17:
- none

Changes in v16:
- none

Changes in v15:
- none

Changes in v14:
- none

Changes in v13:
- none

Changes in v12:
- none

Changes in v11:
- none

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
2.34.1.575.g55b058a8bb-goog

