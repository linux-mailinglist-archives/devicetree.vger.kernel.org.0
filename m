Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9070AEF5BF
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2019 07:50:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387756AbfKEGuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Nov 2019 01:50:14 -0500
Received: from mail-ua1-f74.google.com ([209.85.222.74]:37254 "EHLO
        mail-ua1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387734AbfKEGuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Nov 2019 01:50:11 -0500
Received: by mail-ua1-f74.google.com with SMTP id d8so3116225uan.4
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2019 22:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=XdaR2+XQAwKYeyNEgWxgp1az1blUC06vkdAbdXcvcHc=;
        b=nUl64/xkq2h+x/6diTzoYw3dMaLXxsZslGG01jwxj5LvxjCpYCllR+lvA7rqmABjFJ
         SM3gnWp22AWlSj4qnMJwYQYVJZzHOhku70sbAOjua55kqEBElTQZDJK778I3gAPqGF42
         toVBq0NAHnaesNNlKD57il/5xFMqGNmw2LL8JTuFCMg5a0Q0WQ0oGLri5a5RGi3wxkFV
         HIHMVglpq5ylXrLjieRH2tLZQI0AU7beWo2ak3h9u0a9W8u54VgEQfdSNgOtkKKqcmZn
         nnvGhebvkGwOHCkgd1Fx3p3SeNfQgIrwzvQ/I9LV92v6eTcsRhopwfwE/lj6u01oJStj
         nznA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=XdaR2+XQAwKYeyNEgWxgp1az1blUC06vkdAbdXcvcHc=;
        b=sF7kzEGMPuyA8SMHlf8Cu1uol0E4xTvjaCykGBu6FsEc4zCDCa9exYbHZpbvY2wU/e
         zfw4acDPlltz1shtdarqseNbZF7e4ANJU1Bx4CI36JNQrXTzif0/fJBRMB+MR+hjVzKC
         Cu+v+67uKfd5P/AdFVBef/uIJCh0j60r3xk/jJdyojBIxWELiundf9N9DSanuOIGpc7z
         6Cb6v30eJJKefXIB/IZU9Fue37cawtW6L3VP01mVtAzzEPmuH3A+D/cK5lQ+gl8Auh3H
         fwBlcjdKaMItaEhzOM2t+cKnJSjzaHsMVw0xfqok+3iGPIdJBml2SZFiGVvBgyI5NEoH
         HEXA==
X-Gm-Message-State: APjAAAW0rmL24vE7zUIiiLncbtFwkeFGGJJcvQiMii+eeG/DDBY507gg
        dK3ZxeZu/Ys1dvFKpekyts+yho+h8eGXrYc=
X-Google-Smtp-Source: APXvYqx7e/3siD7qr54PhuB4erzvgSmw1n5+YeJ5H/aaXcKQQrR94nDyBXh1cmLkpwLvtNOmD9AbdIDevq1S03k=
X-Received: by 2002:a67:edce:: with SMTP id e14mr14848549vsp.182.1572936610441;
 Mon, 04 Nov 2019 22:50:10 -0800 (PST)
Date:   Mon,  4 Nov 2019 22:49:59 -0800
In-Reply-To: <20191105065000.50407-1-saravanak@google.com>
Message-Id: <20191105065000.50407-3-saravanak@google.com>
Mime-Version: 1.0
References: <20191105065000.50407-1-saravanak@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v1 2/3] of: property: Make it easy to add device links from DT properties
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a DEFINE_SIMPLE_PROP macro to make it easy to add support for simple
properties with fixed names that just list phandles and phandle args.

Add a DEFINE_SUFFIX_PROP macro to make it easy to add support for
properties with fixes suffix that just list phandles and phandle args.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 62 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 47 insertions(+), 15 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index fbc201330ba0..812b69a029d1 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1101,17 +1101,11 @@ static struct device_node *parse_prop_cells(struct device_node *np,
 	return sup_args.np;
 }
 
-static struct device_node *parse_clocks(struct device_node *np,
-					const char *prop_name, int index)
-{
-	return parse_prop_cells(np, prop_name, index, "clocks", "#clock-cells");
-}
-
-static struct device_node *parse_interconnects(struct device_node *np,
-					       const char *prop_name, int index)
-{
-	return parse_prop_cells(np, prop_name, index, "interconnects",
-				"#interconnect-cells");
+#define DEFINE_SIMPLE_PROP(fname, name, cells)				  \
+static struct device_node *parse_##fname(struct device_node *np,	  \
+					const char *prop_name, int index) \
+{									  \
+	return parse_prop_cells(np, prop_name, index, name, cells);	  \
 }
 
 static int strcmp_suffix(const char *str, const char *suffix)
@@ -1125,13 +1119,47 @@ static int strcmp_suffix(const char *str, const char *suffix)
 	return strcmp(str + len - suffix_len, suffix);
 }
 
-static struct device_node *parse_regulators(struct device_node *np,
-					    const char *prop_name, int index)
+/**
+ * parse_suffix_prop_cells - Suffix property parsing function for suppliers
+ *
+ * @np:		Pointer to device tree node containing a list
+ * @prop_name:	Name of property to be parsed. Expected to hold phandle values
+ * @index:	For properties holding a list of phandles, this is the index
+ *		into the list.
+ * @suffix:	Property suffix that is known to contain list of phandle(s) to
+ *		supplier(s)
+ * @cells_name:	property name that specifies phandles' arguments count
+ *
+ * This is a helper function to parse properties that have a known fixed suffix
+ * and are a list of phandles and phandle arguments.
+ *
+ * Returns:
+ * - phandle node pointer with refcount incremented. Caller must of_node_put()
+ *   on it when done.
+ * - NULL if no phandle found at index
+ */
+static struct device_node *parse_suffix_prop_cells(struct device_node *np,
+					    const char *prop_name, int index,
+					    const char *suffix,
+					    const char *cells_name)
 {
-	if (index || strcmp_suffix(prop_name, "-supply"))
+	struct of_phandle_args sup_args;
+
+	if (strcmp_suffix(prop_name, suffix))
 		return NULL;
 
-	return of_parse_phandle(np, prop_name, 0);
+	if (of_parse_phandle_with_args(np, prop_name, cells_name, index,
+				       &sup_args))
+		return NULL;
+
+	return sup_args.np;
+}
+
+#define DEFINE_SUFFIX_PROP(fname, suffix, cells)			     \
+static struct device_node *parse_##fname(struct device_node *np,	     \
+					const char *prop_name, int index)    \
+{									     \
+	return parse_suffix_prop_cells(np, prop_name, index, suffix, cells); \
 }
 
 /**
@@ -1155,6 +1183,10 @@ struct supplier_bindings {
 					  const char *prop_name, int index);
 };
 
+DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
+DEFINE_SIMPLE_PROP(interconnects, "interconnects", "#interconnect-cells")
+DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
+
 static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

