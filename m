Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1892141A08F
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 22:48:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236865AbhI0UuN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 16:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236904AbhI0UuM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 16:50:12 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15E73C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:48:34 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id t10so82865598lfd.8
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 13:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2FfNSK5ZZEOLX/CxCr808m1kGIdK7ACfOg/aRhiWqMw=;
        b=CQcEHgGOIRwSfwcv+v0HKPASGAIRGYrPAj2tnWZ3SnVETUhpWjVXEYF2AcwDeh7kZY
         PdGBpVEHpB5DI/3uPSvhwaGKISk7/Bk9TM0ncy78tVw6oTRtG+WPnWodLm1V+WCECMii
         B4Yv1Cv9ZQiLW972j7fun3feEDtVxI3mi918BTqzRQQXiV0PckEbyWq3u647h/WrGtzj
         62PuuXQm+QSy5ZyfXzGPQVa5XlTcR72pl52eiH39rBIG1Z9IZR+NXKk1vXgyPzoGAB5Z
         EIChAnUSwhY00LRlJCuDtRcvpnx3RDJJkYqnm6ih7G716w4T/zMUcl2iZowO+W31yxzA
         EMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2FfNSK5ZZEOLX/CxCr808m1kGIdK7ACfOg/aRhiWqMw=;
        b=j98l94TdSEFxfFCREVq9GRIqZd+tE3tQVF4Pf6ekYcNq1UEFPyuiNcK5Oer7C0rOti
         K1HCjGEjFqllb4mw/4hiJlNISueEDXc05CvY1YG7wvX8enjwg8TopXkTR4B85j1sQzud
         dPOJk+XWu9+UClN3uYYInrjvrFe66JJBiRpRGa7xZC3Up5ElovwrCoateMNctYrpMqHv
         3fnRmU6hptmgXzuN4vG/hYCphuI0v8oIvmMSAKG5bPR3rUQXIMR0wMgO86U2jjbofYaA
         2h0n1ckQt1d72ziFJDjf4FiweBk16JoAYkFGgfLHvJ29lh5dV7ec7oYWn9ViaT8i1Urb
         nn1Q==
X-Gm-Message-State: AOAM531gVVZ/N2dbqj/Wqdh8oLevrNrCaSjA8pIH1rh1rHAdwlp7MLQz
        LF2VPtBswy34SkYsWjmDDkt9zw==
X-Google-Smtp-Source: ABdhPJwQUy8S98nhJS6iEOwcmx2UHTNAXs6rHrvA07vbO+xKhTZ7NdXzUt4jq0U3pmZCS6Ik3iGKWg==
X-Received: by 2002:ac2:5ded:: with SMTP id z13mr1914622lfq.428.1632775712427;
        Mon, 27 Sep 2021 13:48:32 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d16sm1695977lfg.138.2021.09.27.13.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 13:48:32 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Saravana Kannan <saravanak@google.com>
Subject: [PATCH] Revert "of: property: fw_devlink: Add support for remote-endpoint"
Date:   Mon, 27 Sep 2021 23:48:30 +0300
Message-Id: <20210927204830.4018624-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the commit f7514a663016 ("of: property: fw_devlink: Add support
for remote-endpoint") Linux kernel started parsing and adding devlinks
for the remote-endpoint properties. However this brings more harm than
good.

For all the remote-endpoints in the graph two links are created. Thus
each and every remote-endpoint ends up in the cyclic graph (instead of
the original intent of catching a cycle of graph + non-graph link):

[    0.381057] OF: remote-endpoint linking /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b to /soc@0/mdss@ae00000/dsi@ae94000/ports/port@1/endpoint
[    0.394421] OF: remote-endpoint linking /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b to /hdmi-out/port/endpoint
[    0.407007] OF: remote-endpoint linking /soc@0/phy@88e9000 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/connector/ports/port@0/endpoint@0
[    0.419648] OF: remote-endpoint linking /soc@0/usb@a6f8800/usb@a600000 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/ports/port@2/endpoint@0
[    0.432578] OF: remote-endpoint linking /soc@0/cci@ac4f000/i2c-bus@1/cam1@c0 to /soc@0/camss@ac6a000/ports/port@1/endpoint
[    0.444450] OF: remote-endpoint linking /soc@0/camss@ac6a000 to /soc@0/cci@ac4f000/i2c-bus@1/cam1@c0/port/endpoint
[    0.455292] OF: remote-endpoint linking /soc@0/mdss@ae00000/mdp@ae01000 to /soc@0/mdss@ae00000/dsi@ae94000/ports/port@0/endpoint
[    0.467210] OF: remote-endpoint linking /soc@0/mdss@ae00000/mdp@ae01000 to /soc@0/mdss@ae00000/dsi@ae96000/ports/port@0/endpoint
[    0.479239] OF: remote-endpoint linking /soc@0/mdss@ae00000/dsi@ae94000 to /soc@0/mdss@ae00000/mdp@ae01000/ports/port@0/endpoint
[    0.491147] OF: remote-endpoint linking /soc@0/mdss@ae00000/dsi@ae94000 to /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b/ports/port@0/endpoint
[    0.504979] OF: remote-endpoint linking /soc@0/spmi@c440000/pmic@2/typec@1500 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/ports/port@0/endpoint
[    0.517958] OF: remote-endpoint linking /soc@0/spmi@c440000/pmic@2/pdphy@1700 to /soc@0/spmi@c440000/pmic@2/pmic-tcpm/ports/port@1/endpoint
[    0.565326] OF: remote-endpoint linking /hdmi-out to /soc@0/geniqup@9c0000/i2c@994000/hdmi-bridge@2b/ports/port@2/endpoint

Under some conditions the device can become it's own supplier,
preventing this device to be probed at all:

$ ls -l /sys/bus/platform/devices/ae00000.mdss/
lrwxrwxrwx    1 root     root             0 Aug  4 15:13 consumer:platform:ae00000.mdss -> ../../../virtual/devlink/platform:ae00000.mdss--platform:ae00000.mdss

I think that until of_link can be tought to handle bi-directional links
on its own, we should not parse remote-endpoint properties. Thus the
aforementioned commit should be reverted.

Cc: Saravana Kannan <saravanak@google.com>
Fixes: f7514a663016 ("of: property: fw_devlink: Add support for remote-endpoint")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/of/property.c | 47 +++++++++++++++----------------------------
 1 file changed, 16 insertions(+), 31 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index a3483484a5a2..6aaaf01ef36e 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1056,25 +1056,6 @@ static bool of_is_ancestor_of(struct device_node *test_ancestor,
 	return false;
 }
 
-static struct device_node *of_get_compat_node(struct device_node *np)
-{
-	of_node_get(np);
-
-	while (np) {
-		if (!of_device_is_available(np)) {
-			of_node_put(np);
-			np = NULL;
-		}
-
-		if (of_find_property(np, "compatible", NULL))
-			break;
-
-		np = of_get_next_parent(np);
-	}
-
-	return np;
-}
-
 /**
  * of_link_to_phandle - Add fwnode link to supplier from supplier phandle
  * @con_np: consumer device tree node
@@ -1098,11 +1079,25 @@ static int of_link_to_phandle(struct device_node *con_np,
 	struct device *sup_dev;
 	struct device_node *tmp_np = sup_np;
 
+	of_node_get(sup_np);
 	/*
 	 * Find the device node that contains the supplier phandle.  It may be
 	 * @sup_np or it may be an ancestor of @sup_np.
 	 */
-	sup_np = of_get_compat_node(sup_np);
+	while (sup_np) {
+
+		/* Don't allow linking to a disabled supplier */
+		if (!of_device_is_available(sup_np)) {
+			of_node_put(sup_np);
+			sup_np = NULL;
+		}
+
+		if (of_find_property(sup_np, "compatible", NULL))
+			break;
+
+		sup_np = of_get_next_parent(sup_np);
+	}
+
 	if (!sup_np) {
 		pr_debug("Not linking %pOFP to %pOFP - No device\n",
 			 con_np, tmp_np);
@@ -1249,7 +1244,6 @@ static struct device_node *parse_##fname(struct device_node *np,	     \
  * @parse_prop.index: For properties holding a list of phandles, this is the
  *		      index into the list
  * @optional: Describes whether a supplier is mandatory or not
- * @node_not_dev: The consumer node containing the property is never a device.
  *
  * Returns:
  * parse_prop() return values are
@@ -1261,7 +1255,6 @@ struct supplier_bindings {
 	struct device_node *(*parse_prop)(struct device_node *np,
 					  const char *prop_name, int index);
 	bool optional;
-	bool node_not_dev;
 };
 
 DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
@@ -1286,7 +1279,6 @@ DEFINE_SIMPLE_PROP(pinctrl5, "pinctrl-5", NULL)
 DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
 DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
 DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
-DEFINE_SIMPLE_PROP(remote_endpoint, "remote-endpoint", NULL)
 DEFINE_SIMPLE_PROP(pwms, "pwms", "#pwm-cells")
 DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
 DEFINE_SIMPLE_PROP(leds, "leds", NULL)
@@ -1374,7 +1366,6 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl6, },
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
-	{ .parse_prop = parse_remote_endpoint, .node_not_dev = true, },
 	{ .parse_prop = parse_pwms, },
 	{ .parse_prop = parse_resets, },
 	{ .parse_prop = parse_leds, },
@@ -1421,16 +1412,10 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
 		}
 
 		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
-			struct device_node *con_dev_np;
-
-			con_dev_np = s->node_not_dev
-					? of_get_compat_node(con_np)
-					: of_node_get(con_np);
 			matched = true;
 			i++;
-			of_link_to_phandle(con_dev_np, phandle);
+			of_link_to_phandle(con_np, phandle);
 			of_node_put(phandle);
-			of_node_put(con_dev_np);
 		}
 		s++;
 	}
-- 
2.33.0

