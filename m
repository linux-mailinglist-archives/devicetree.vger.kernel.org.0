Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA40CA12E8
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 09:46:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728061AbfH2Hqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 03:46:32 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:48362 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728056AbfH2Hqc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 03:46:32 -0400
Received: by mail-pf1-f201.google.com with SMTP id t14so1835447pfq.15
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 00:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=nhjHwCHt3mcz+mHDiVxN7s8L1KuUZ7MDwDAfLe16I50=;
        b=G+4eBBbE8eR+JweFO/MTbU/JiiK//ZmQj8k/LyrXbCGTThb38w/Z2lUm+J9+GnNM0R
         ILZAbYqpRKL7TOIZvfQiUJ2cF39/iD9rfGRzN/JPmUP0imOiTAzvaNMocnkNuQkRpez1
         TeFD7m5SShMLKZ99sCn6+3Jk0GWByzZ/IZjTTkJhmHdk/U8KSb8jext129vtnUphdVPK
         3Og8DoR1JhhS8QHP8PSei9z2OIoEIJgw7WByG4I5s8EIdtWDrfnC1s2xxQI7P6I0R2oo
         vZCWREqieybOCkNKb7WgvgWuO6NUQORyGlcpSxF+myfSq3RilEg/tbt3CAbeESXosLmc
         vLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=nhjHwCHt3mcz+mHDiVxN7s8L1KuUZ7MDwDAfLe16I50=;
        b=mcaUSqsTM7DdL5LeCeykKwAGuStQqoGH/z5s+zbcHJvG3M7bjejc2P4DdlBtKGHOTC
         HKNVvzLLOSNhCUhLhOZLbTfpCQdaX+mZlPNz+BC85eRE/VMUI2QtM4tFF9sM6QYGvtGM
         ZMtepg0MQuKY5J45XqrsqcuXES+o1TdISGZQtmYnNSvVI0fOjR3rArp4jF9C70NrZ+XL
         xiywx1Y/GOcDlow/lPZ3Wva2eyUFAO5CA3NTfjn19mJ8HAxnekYcFibLKReiGFi+QiHW
         h13Bsk0wmb3pdGeCLDOiieAksQ45H7cfObkRS3xTraJ1MBOF/K/kkOxAnlBbAe246BwA
         seXg==
X-Gm-Message-State: APjAAAUUPTHSPevjvdAJHFlgt8wqRe1wpx4vkeziAQbb5r3NRJSgjQRR
        APjuG1+ysOQ/FxyknkHp0uKWY5GCGKSk/fo=
X-Google-Smtp-Source: APXvYqxjRrI7v0tAcH4lDhIBqUhl0wBMcJY40NePOKQ5MWBcbB/tbpokA1E16lgkYG8HCTLquA1Ns3qi+HNbWZE=
X-Received: by 2002:a65:690f:: with SMTP id s15mr6855732pgq.432.1567064791199;
 Thu, 29 Aug 2019 00:46:31 -0700 (PDT)
Date:   Thu, 29 Aug 2019 00:46:03 -0700
In-Reply-To: <20190829074603.70424-1-saravanak@google.com>
Message-Id: <20190829074603.70424-8-saravanak@google.com>
Mime-Version: 1.0
References: <20190829074603.70424-1-saravanak@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v10 7/7] of: property: Add "depends-on" parsing support to of_fwnode_add_links()
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com,
        David Collins <collinsd@codeaurora.org>,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If dependencies inferred by of_fwnode_add_links() result in a cycle, it
can prevent the probing of all the devices in the cycle. The depends-on
property has been added to explicitly override inferred dependencies
when they create a cycle.

Add depends-on parsing support to of_fwnode_add_links() so that
platforms with cyclic dependencies can use "depends-on" to break the
cycle and continue successfully probing devices.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 420c2d428184..78a262e24686 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1106,6 +1106,12 @@ static struct device_node *parse_interconnects(struct device_node *np,
 				"#interconnect-cells");
 }
 
+static struct device_node *parse_depends_on(struct device_node *np,
+					    const char *prop_name, int index)
+{
+	return parse_prop_cells(np, prop_name, index, "depends-on", NULL);
+}
+
 static int strcmp_suffix(const char *str, const char *suffix)
 {
 	unsigned int len, suffix_len;
@@ -1151,6 +1157,7 @@ static const struct supplier_bindings bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
 	{ .parse_prop = parse_regulators, },
+	{ .parse_prop = parse_depends_on, },
 	{},
 };
 
@@ -1203,6 +1210,12 @@ static int __of_link_to_suppliers(struct device *dev,
 	struct property *p;
 	int ret = 0;
 
+	if (of_find_property(con_np, "depends-on", NULL)) {
+		if (of_link_property(dev, con_np, "depends-on"))
+			ret = -EAGAIN;
+		return ret;
+	}
+
 	for_each_property_of_node(con_np, p)
 		if (of_link_property(dev, con_np, p->name))
 			ret = -EAGAIN;
-- 
2.23.0.187.g17f5b7556c-goog

