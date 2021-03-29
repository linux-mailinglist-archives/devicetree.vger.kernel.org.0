Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64FA934D3BD
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:26:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbhC2PZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:25:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbhC2PY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 11:24:56 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4730C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 08:24:55 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id x7so13266948wrw.10
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 08:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3BjDQPO5XvHFzQtUgs6LH7ol2ep0u1eLVhg0ffmIyak=;
        b=oOA2R79rA1kOLLACi+uWoT+fQBLKYXGZc3JRMCJkJIP+tQHPQf0Qv5T+wRAhD4wamX
         bolMpKpTK2jgcViUCM0vz6FDnYp1kWJmsJNqEiTthgO2l+tlsOPxFqr9RJ3Ue67w9BwH
         wQVhxCCHBQU2R99CB2vnICWngOIOXSy10rFWu/bYAs7yAWvtMvAmg3lnqxchKO7yAxyJ
         XYONtOBI4jev+qzBFXMdEFmacG8AZLnlrQssdnYWJqgGmO1VuF+ob8dXOQOg0ZGXjpO5
         Rh0sN8Bkv1z9INJlB6zQK0GzjwJTIOp6irVE2OBCnhZ2rnes/P0LakuAzulBNs7MoB93
         PzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3BjDQPO5XvHFzQtUgs6LH7ol2ep0u1eLVhg0ffmIyak=;
        b=oAoAlYnbUya0br+PWzHVK5fiV3kLw6Ddq8wHUBDWw4SHzQV4IiNCQFcNHGfGBkNr+c
         DMXnbqMo6KJTpVYJiwuuTt4loIiCtI+bYr1fdBO83zn6AXmmVpHNl8ihWGNkF8zA5A7A
         5+KnegDzntCRGJJCeZYeXEMjtoXMqTRfu9ZeyNbsVCt5Yxf4wysaHwIF8GlPVqs71W8u
         Y0jgg6FEhvW4w/1Naq8R5c/r9YKMEGVETXopftaxavcCeOg5IIxndeioEqo7H33SDq1+
         3SNdngmzV1uju+uUPZGX4XDUy+qy56ED8+NPU2GqaxEomA9VvgGo5xUR9+U7C+KWarUD
         ccow==
X-Gm-Message-State: AOAM530+9P2q4wWBB8P5Grf5FLx7SoDBzqep0aGhNC2Zkh0zwJ8Z4ORt
        hNQAvCBuwkqWi39zIF2QY3b0Sw==
X-Google-Smtp-Source: ABdhPJxG/lWwyYQ0I+O9vaojjU0Bfa+lMEtHEufpl02r0vgN1yoOZORNV84msnRBsvubCP+4jmcu5Q==
X-Received: by 2002:a5d:6587:: with SMTP id q7mr28738296wru.282.1617031494626;
        Mon, 29 Mar 2021 08:24:54 -0700 (PDT)
Received: from dell.default ([91.110.221.217])
        by smtp.gmail.com with ESMTPSA id p17sm23744377wmd.42.2021.03.29.08.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 08:24:54 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org
Subject: [PATCH 1/1] of: base: Fix spelling issue with function param 'prop'
Date:   Mon, 29 Mar 2021 16:24:35 +0100
Message-Id: <20210329152435.900225-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/base.c:1781: warning: Function parameter or member 'prop' not described in '__of_add_property'
 drivers/of/base.c:1781: warning: Excess function parameter 'prob' description in '__of_add_property'
 drivers/of/base.c:1804: warning: Function parameter or member 'prop' not described in 'of_add_property'
 drivers/of/base.c:1804: warning: Excess function parameter 'prob' description in 'of_add_property'
 drivers/of/base.c:1855: warning: Function parameter or member 'prop' not described in 'of_remove_property'
 drivers/of/base.c:1855: warning: Excess function parameter 'prob' description in 'of_remove_property'

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/base.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 457d1ec27300b..aaf52eaa8b8c7 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1775,7 +1775,7 @@ EXPORT_SYMBOL(of_count_phandle_with_args);
 /**
  * __of_add_property - Add a property to a node without lock operations
  * @np:		Caller's Device Node
- * @prob:	Property to add
+ * @prop:	Property to add
  */
 int __of_add_property(struct device_node *np, struct property *prop)
 {
@@ -1798,7 +1798,7 @@ int __of_add_property(struct device_node *np, struct property *prop)
 /**
  * of_add_property - Add a property to a node
  * @np:		Caller's Device Node
- * @prob:	Property to add
+ * @prop:	Property to add
  */
 int of_add_property(struct device_node *np, struct property *prop)
 {
@@ -1844,7 +1844,7 @@ int __of_remove_property(struct device_node *np, struct property *prop)
 /**
  * of_remove_property - Remove a property from a node.
  * @np:		Caller's Device Node
- * @prob:	Property to remove
+ * @prop:	Property to remove
  *
  * Note that we don't actually remove it, since we have given out
  * who-knows-how-many pointers to the data using get-property.
-- 
2.27.0

