Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3492D2D68B1
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 21:29:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393381AbgLJU3W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 15:29:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393787AbgLJU3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 15:29:22 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D301C0613D3
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 12:28:41 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id x23so8213196lji.7
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 12:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v13PsshndG89LyYYoye/My4vJgfzMpm5itJIsCaIY+4=;
        b=o9eCZIRtMIAzbD3JXvX274VC1v8XOtAaVhbTr9trkQA/RdRV7zEkOyEdTGCqfuZ/pW
         3ilL2vi9dkXoE+iyJoeuKhclSLMfSSKwvf6YZ0I9n1M0ZEuCb6ztnCWsK/GS8XQBjSIg
         5DRhucD5Iz304agF7eKe1Zkg/xw7KsC8xJUjoMKHjPy1/QUiGA89Ov6vdt6umEPtEOLW
         G80ofo8xZU51laIyrY/coiuN/MlzHPp2He7hrpiNte6fvwgOj/9jlAbyBmxWm4yLM+as
         yVtQ1vn3IxjcCr1IJTizmRjSphQEaksYvLxJFfPoQp7yD85xbk54fzf7fP9wJYMzGqAj
         501w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=v13PsshndG89LyYYoye/My4vJgfzMpm5itJIsCaIY+4=;
        b=Bz1yV4I9jCkO4F+IZ4U/fdyPXjnIY4jOeaBHQXJqSjYKBoFsYtRU3VIG7Pgk0GWWmp
         iu9nc/3CEifgbIcxcCtbP5HOeY+MftS2mp46yu2Mn4OepEzjE2MwuJ66jMJi4EVP2BDW
         eRFoHD2/8ZwtN7tOB79XGEqcrqp4CRBl2x1wQlE/g7QLxsJwHy4boNIouBjG6XUmqgiT
         4TJHeLphOVJBCPWml7jaXQuYoOu5AmMRet3yMSquWEhykEEmBT9iS9K4P4BB/H2/NUOG
         eiooVZUQnhw2Uhh9R9rzNcATI1lcHmeGI8bSMbLhM0rsXE3R7qKigmiWc3rXj8U3+Gu4
         gn+w==
X-Gm-Message-State: AOAM531D9/39janMShe5dObJvL2z2drH7Vt5eOPMkkEEo45WD7yo8Qxn
        bQotnFhlVntPoyxWvWZQU49JCayQzoXr4oDe
X-Google-Smtp-Source: ABdhPJwjM6OoA3N0FiFoe4OmDhc9Zx7jYxDZaFaKESQNL+7y/1bQUUSX5QJp3MACBNpM78EmPd+skA==
X-Received: by 2002:a2e:8113:: with SMTP id d19mr1909725ljg.303.1607632119436;
        Thu, 10 Dec 2020 12:28:39 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id r4sm364279lfc.247.2020.12.10.12.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 12:28:38 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        John Stultz <john.stultz@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH 1/2] of: property: Get rid of code duplication in port getting
Date:   Thu, 10 Dec 2020 22:29:44 +0200
Message-Id: <20201210202944.6747-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Both of_graph_is_present() and of_graph_get_next_endpoint() functions
share common piece of code for obtaining the graph port. Extract it into
separate static function to get rid of code duplication and avoid
possible coding errors in future.

Fixes: 4ec0a44ba8d7 ("of_graph: add of_graph_is_present()")
Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 drivers/of/property.c | 34 ++++++++++++++++++++--------------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 408a7b5f06a9..da111fcf37ac 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -30,13 +30,13 @@
 #include "of_private.h"
 
 /**
- * of_graph_is_present() - check graph's presence
+ * of_graph_get_port - find the "port" node in a given node
  * @node: pointer to device_node containing graph port
  *
- * Return: True if @node has a port or ports (with a port) sub-node,
- * false otherwise.
+ * Return: A 'port' node pointer with refcount incremented if found or NULL
+ * otherwise. The caller has to use of_node_put() on it when done.
  */
-bool of_graph_is_present(const struct device_node *node)
+static struct device_node *of_graph_get_port(const struct device_node *node)
 {
 	struct device_node *ports, *port;
 
@@ -46,8 +46,22 @@ bool of_graph_is_present(const struct device_node *node)
 
 	port = of_get_child_by_name(node, "port");
 	of_node_put(ports);
-	of_node_put(port);
 
+	return port;
+}
+
+/**
+ * of_graph_is_present() - check graph's presence
+ * @node: pointer to device_node containing graph port
+ *
+ * Return: True if @node has a port or ports (with a port) sub-node,
+ * false otherwise.
+ */
+bool of_graph_is_present(const struct device_node *node)
+{
+	struct device_node *port = of_graph_get_port(node);
+
+	of_node_put(port);
 	return !!port;
 }
 EXPORT_SYMBOL(of_graph_is_present);
@@ -631,15 +645,7 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 	 * parent port node.
 	 */
 	if (!prev) {
-		struct device_node *node;
-
-		node = of_get_child_by_name(parent, "ports");
-		if (node)
-			parent = node;
-
-		port = of_get_child_by_name(parent, "port");
-		of_node_put(node);
-
+		port = of_graph_get_port(parent);
 		if (!port) {
 			pr_err("graph: no port node found in %pOF\n", parent);
 			return NULL;
-- 
2.27.0

