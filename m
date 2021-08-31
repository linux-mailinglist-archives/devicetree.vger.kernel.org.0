Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A13743FC58D
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 12:28:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240932AbhHaKWe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 06:22:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240895AbhHaKWe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 06:22:34 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 032E3C061575
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 03:21:39 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id p38so37547592lfa.0
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 03:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SaQiFvhNq7368+94ke7tCwmU8u/vT5hggbptJeHOcYo=;
        b=OQ8Bc7H/j7dY8F+7/WWLC8l2pfhCHESOHANGP40xBtANdPJhhCoXsFJE8/mcMLl6lb
         bKH2QIzdw8Z3bHXrkZiaqsbkx9pU/7qQ3ikcKw5DsQifxf7w4S6mRQvk1kjExY/XCrBL
         x1f8EISuWCWhIkqllRSOpX0AE8ii8ONpNBj807/cw5HxrPKESUk9MTq7svvQQbGk8/DX
         PT6GqOiEW+D9hmrjFv2Db0EVRCjLTLSb9b0DMV2Id/Pszpdi0+sYj409rQuECO1+Zsdc
         D/bTITEW67QawE23Dz0u5spWInPsJ8lnUGdvyx/xOZCTiDWTFogofPOFgZWhd5KL98sg
         ZfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SaQiFvhNq7368+94ke7tCwmU8u/vT5hggbptJeHOcYo=;
        b=hWn6s5vBy12fxrQsoN/SaQqs7JOqsRGrkxm2JJsB+J/b9S+0Pej0OIu/Tq4v9D2Zux
         Mmuo0mM6DWbNCHUGHbmg3mMpndOB+eWJ+wAR34QeZUCoNgZnk4m+aMhEBiDQlSjzwdPX
         k3T1FWQ/6cuijqrftPSa+7yrXFrKLiA5mUYDSYkdS0yGPsRqHIDiQysPJJwZ45Ae5IGS
         Q55kJc+2X/hCoBjfEQny99Tz9PURX6fEK7AdaYaapYZavxmj2AIfLNoAFSn9XCEbdCbF
         QggvWeHAZsdWk96JnlVeDD9K+omzGl1pTGpWUoO++eb49M8f00SsuWNQUGrITZg+cjfP
         0law==
X-Gm-Message-State: AOAM5338jO63lJtLYW4JorjqYwo5bZxc6VZq4vt8esQ5R49ow8Pry2a7
        yWHGrf++ugMyHdCaW6o6yYkMuDOe6FDBL4lu
X-Google-Smtp-Source: ABdhPJysTQHKjj6sHl08LoVd8gzCM5Oi5pHDfNeAo1fs+lBAhuD47ThIpXSDKSYwaxeOL6peufsGZQ==
X-Received: by 2002:a05:6512:2210:: with SMTP id h16mr20684305lfu.621.1630405297014;
        Tue, 31 Aug 2021 03:21:37 -0700 (PDT)
Received: from localhost.localdomain (h-155-4-129-146.NA.cust.bahnhof.se. [155.4.129.146])
        by smtp.gmail.com with ESMTPSA id b21sm753714lfi.104.2021.08.31.03.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 03:21:36 -0700 (PDT)
From:   Ulf Hansson <ulf.hansson@linaro.org>
To:     Saravana Kannan <saravanak@google.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Cc:     "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] of: property: fw_devlink: Rename 'node_not_dev' to 'optional_con_dev'
Date:   Tue, 31 Aug 2021 12:21:25 +0200
Message-Id: <20210831102125.624661-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the struct supplier_bindings the member 'node_not_dev' is described as
"The consumer node containing the property is never a device.", but that
doesn't match the behaviour of the code in of_link_property().

To make the behaviour consistent with the description, let's rename the
member to "optional_con_dev" and clarify the corresponding comment.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/of/property.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 6c028632f425..2babb1807228 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1249,7 +1249,8 @@ static struct device_node *parse_##fname(struct device_node *np,	     \
  * @parse_prop.index: For properties holding a list of phandles, this is the
  *		      index into the list
  * @optional: Describes whether a supplier is mandatory or not
- * @node_not_dev: The consumer node containing the property is never a device.
+ * @optional_con_dev: The consumer node containing the property may not be a
+ *		      device, then try finding one from an ancestor node.
  *
  * Returns:
  * parse_prop() return values are
@@ -1261,7 +1262,7 @@ struct supplier_bindings {
 	struct device_node *(*parse_prop)(struct device_node *np,
 					  const char *prop_name, int index);
 	bool optional;
-	bool node_not_dev;
+	bool optional_con_dev;
 };
 
 DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
@@ -1370,7 +1371,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl6, },
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
-	{ .parse_prop = parse_remote_endpoint, .node_not_dev = true, },
+	{ .parse_prop = parse_remote_endpoint, .optional_con_dev = true, },
 	{ .parse_prop = parse_gpio_compat, },
 	{ .parse_prop = parse_interrupts, },
 	{ .parse_prop = parse_regulators, },
@@ -1415,7 +1416,7 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
 		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
 			struct device_node *con_dev_np;
 
-			con_dev_np = s->node_not_dev
+			con_dev_np = s->optional_con_dev
 					? of_get_compat_node(con_np)
 					: of_node_get(con_np);
 			matched = true;
-- 
2.25.1

