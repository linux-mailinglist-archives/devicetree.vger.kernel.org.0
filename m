Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 811734BA8A7
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 19:45:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236209AbiBQSnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 13:43:23 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244516AbiBQSnW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 13:43:22 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24CC1E027
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 10:43:07 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id t4-20020a17090a510400b001b8c4a6cd5dso6255177pjh.5
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 10:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6IUCcm+Xv8CevqetI7u2KdRt47l5psRZKi3kkjgGmu4=;
        b=D5qGn9RS8fKps1ygiiiA7oCQ2S6DH/tdHqBGidSFqAx6pfr+S0uf0j0jpEENFsiyoJ
         Hv13aj3rT1LldQa0Z6HY7kIVb0v47q8ZgYP/tL3ZPV6yUb6yg7tL7hCRTugRJgoWzBUJ
         PM7ydl5Ib1PJH/SGFfCd1zpkTSdOwp/dC/bqw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6IUCcm+Xv8CevqetI7u2KdRt47l5psRZKi3kkjgGmu4=;
        b=yMoQBuJYo/ZXXB0dvUt6dC2DSslWd0VuOw3HQoV3k9O1XcBhCo5BppxSCCGGOzDllj
         9bqDdGXL2RqkPCtl1y2SFoXf4hK9ZhtXOTygFfH3Qaiwm5TxkRP8AFsLmx3JqmrswMdE
         np5rPR+g8mx7lbjYYtItLxylCdLHdA/ABPz+AJRS3Uf5I1+n3pYfDY9mU1ICQ2F9wYVV
         /+b8E90tTzykq4crIHxRVSZTSZL4Z25mUKQ4Pg9/4G3wkUirlYS7mtzaB7Vj9hePlKKC
         WBLhz0Av5EtngI4+o6hU65BvbEQe4RfvvgTQVAOHRoamMk1V5DDAQRHpOLNqVqlyN3Rw
         dh5Q==
X-Gm-Message-State: AOAM533FjE2ajzWFhlGtd3oVqVzILQvpFTO3slQMnh2vfU5VuzETvHmR
        UwKmw87nIoI32wUVA5wmDFKwgw==
X-Google-Smtp-Source: ABdhPJwxXLV76Yfk3oRUaeH9SCUlA4Jogb+q7Sy+2Pc7si2QBPYdC6e6Wk6BIy7AjeATNqnWXDOXVA==
X-Received: by 2002:a17:902:ce11:b0:14a:a6aa:4fa6 with SMTP id k17-20020a170902ce1100b0014aa6aa4fa6mr3948885plg.149.1645123386679;
        Thu, 17 Feb 2022 10:43:06 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b42d:98cc:5dcc:5ef5])
        by smtp.gmail.com with UTF8SMTPSA id c23sm296081pfi.136.2022.02.17.10.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 10:43:06 -0800 (PST)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Cc:     linux-usb@vger.kernel.org,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Roger Quadros <rogerq@kernel.org>,
        linux-kernel@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
        Douglas Anderson <dianders@chromium.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Peter Chen <peter.chen@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v21 1/3] of/platform: Add stubs for of_platform_device_create/destroy()
Date:   Thu, 17 Feb 2022 10:42:52 -0800
Message-Id: <20220217104219.v21.1.I08fd2e1c775af04f663730e9fb4d00e6bbb38541@changeid>
X-Mailer: git-send-email 2.35.1.473.g83b2b277ed-goog
In-Reply-To: <20220217184254.4141705-1-mka@chromium.org>
References: <20220217184254.4141705-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Code for platform_device_create() and of_platform_device_destroy() is
only generated if CONFIG_OF_ADDRESS=y. Add stubs to avoid unresolved
symbols when CONFIG_OF_ADDRESS is not set.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v21:
- none

Changes in v20:
- added 'Reviewed-by' tags from Stephen and Doug

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
2.35.1.473.g83b2b277ed-goog

