Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C197E36059A
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 11:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232026AbhDOJ07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 05:26:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232000AbhDOJ06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 05:26:58 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9379EC06175F
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:26:35 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id n138so38231731lfa.3
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=0ljfTFDVD4tIV4a1IL0nOfEWxK1v2gCQHcWI70dPTeE=;
        b=CuJ/tBwqtk+wfQ5w9d2ZpLAuWtd5Q5+lG6sIvf5avCqBNrdhg/QUNROmSMuwKE/Spf
         cAZ52TlYNDzf4K8hvxY+8evVX0fYFDak4LhmK0rNwA7uESkAJaNjBTgSHESnK8SNtzGT
         0/LhkPhg2JyOgssvoZwVWJMvm08rOtiTsiQxhoHJDGfPkx182bRyt0u7IKMX3m73mBeu
         qBHhwf3ELFeneUgigCaB+lchmigdjGEY5HmGFwAnmCscnjRS7TH16ANn3AE2z/dn4Y0i
         UUP8XCDSdz9oF70EdAn8F5jBcy78Qb40XzPf1vmQFxHzvQFN+FfHpsyxQVYa4+qtJ3Pp
         hDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=0ljfTFDVD4tIV4a1IL0nOfEWxK1v2gCQHcWI70dPTeE=;
        b=BQk4fFr29jO5wogzwS35zOe+UQTH5SzW8ZClM5LhK29E361ZkxYdHrw8YAvMu+Q67Z
         AkxoLQtl/tFgsYdxCJKbMtNyKmzcyo1/8stUHk+4zIuhdX5xeN0a1fxChuUzFVnUxvEG
         c0t8gRZohlMTHoRt1KBXGSITbHltG5fLGADQF06rAJhvXxrTtJWt4B086edas5aJ+FqG
         BVQZPykDtreMen8V0+AiJKa5nKPCSyV94yelLxwZbhds+w+husgCPtso36AuP8XQoJxL
         IyBwkNOyNwhrh3eCAYujZ3kLELdMTjwFR/OTiDpVoYdubhszlFkhXDI3C6loWq328/mh
         GQVg==
X-Gm-Message-State: AOAM531A8Tx99CUOUrg6oxIBB1ZfkF6SfyvBo4SNaKXCcazFGLq2iBWy
        bRlBAuU4yaXd2qe7Y6CVvHc9f5WGOw4R/bLX
X-Google-Smtp-Source: ABdhPJzfg3sdXZG0W966CMal5s6MdHUqC2WlLwHui9n5wJrPOw/enbx3z2aY/q4kcJzMkp9nOZOjqQ==
X-Received: by 2002:a05:6512:3091:: with SMTP id z17mr1908219lfd.84.1618478794079;
        Thu, 15 Apr 2021 02:26:34 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id g4sm595557lfc.102.2021.04.15.02.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 02:26:33 -0700 (PDT)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
        olteanv@gmail.com, netdev@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 net-next 4/5] net: dsa: Allow default tag protocol to be overridden from DT
Date:   Thu, 15 Apr 2021 11:26:09 +0200
Message-Id: <20210415092610.953134-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210415092610.953134-1-tobias@waldekranz.com>
References: <20210415092610.953134-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some combinations of tag protocols and Ethernet controllers are
incompatible, and it is hard for the driver to keep track of these.

Therefore, allow the device tree author (typically the board vendor)
to inform the driver of this fact by selecting an alternate protocol
that is known to work.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 include/net/dsa.h |  5 +++
 net/dsa/dsa2.c    | 95 ++++++++++++++++++++++++++++++++++++++---------
 2 files changed, 83 insertions(+), 17 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 1259b0f40684..2b25fe1ad5b7 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -149,6 +149,11 @@ struct dsa_switch_tree {
 	/* Tagging protocol operations */
 	const struct dsa_device_ops *tag_ops;
 
+	/* Default tagging protocol preferred by the switches in this
+	 * tree.
+	 */
+	enum dsa_tag_protocol default_proto;
+
 	/*
 	 * Configuration data for the platform device that owns
 	 * this dsa switch tree instance.
diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
index d7c22e3a1fbf..80dbf8b6bf8f 100644
--- a/net/dsa/dsa2.c
+++ b/net/dsa/dsa2.c
@@ -668,6 +668,35 @@ static const struct devlink_ops dsa_devlink_ops = {
 	.sb_occ_tc_port_bind_get	= dsa_devlink_sb_occ_tc_port_bind_get,
 };
 
+static int dsa_switch_setup_tag_protocol(struct dsa_switch *ds)
+{
+	const struct dsa_device_ops *tag_ops = ds->dst->tag_ops;
+	struct dsa_switch_tree *dst = ds->dst;
+	int port, err;
+
+	if (tag_ops->proto == dst->default_proto)
+		return 0;
+
+	if (!ds->ops->change_tag_protocol) {
+		dev_err(ds->dev, "Tag protocol cannot be modified\n");
+		return -EINVAL;
+	}
+
+	for (port = 0; port < ds->num_ports; port++) {
+		if (!dsa_is_cpu_port(ds, port))
+			continue;
+
+		err = ds->ops->change_tag_protocol(ds, port, tag_ops->proto);
+		if (err) {
+			dev_err(ds->dev, "Tag protocol \"%s\" is not supported\n",
+				tag_ops->name);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 static int dsa_switch_setup(struct dsa_switch *ds)
 {
 	struct dsa_devlink_priv *dl_priv;
@@ -718,6 +747,10 @@ static int dsa_switch_setup(struct dsa_switch *ds)
 	if (err < 0)
 		goto unregister_notifier;
 
+	err = dsa_switch_setup_tag_protocol(ds);
+	if (err)
+		goto teardown;
+
 	devlink_params_publish(ds->devlink);
 
 	if (!ds->slave_mii_bus && ds->ops->phy_read) {
@@ -1068,34 +1101,60 @@ static enum dsa_tag_protocol dsa_get_tag_protocol(struct dsa_port *dp,
 	return ds->ops->get_tag_protocol(ds, dp->index, tag_protocol);
 }
 
-static int dsa_port_parse_cpu(struct dsa_port *dp, struct net_device *master)
+static int dsa_port_parse_cpu(struct dsa_port *dp, struct net_device *master,
+			      const char *user_protocol)
 {
 	struct dsa_switch *ds = dp->ds;
 	struct dsa_switch_tree *dst = ds->dst;
 	const struct dsa_device_ops *tag_ops;
-	enum dsa_tag_protocol tag_protocol;
+	enum dsa_tag_protocol default_proto;
+
+	/* Find out which protocol the switch would prefer. */
+	default_proto = dsa_get_tag_protocol(dp, master);
+	if (dst->default_proto) {
+		if (dst->default_proto != default_proto) {
+			dev_err(ds->dev,
+				"A DSA switch tree can have only one tagging protocol\n");
+			return -EINVAL;
+		}
+	} else {
+		dst->default_proto = default_proto;
+	}
+
+	/* See if the user wants to override that preference. */
+	if (user_protocol) {
+		if (ds->ops->change_tag_protocol) {
+			tag_ops = dsa_find_tagger_by_name(user_protocol);
+		} else {
+			dev_err(ds->dev, "Tag protocol cannot be modified\n");
+			return -EINVAL;
+		}
+	} else {
+		tag_ops = dsa_tag_driver_get(default_proto);
+	}
+
+	if (IS_ERR(tag_ops)) {
+		if (PTR_ERR(tag_ops) == -ENOPROTOOPT)
+			return -EPROBE_DEFER;
+
+		dev_warn(ds->dev, "No tagger for this switch\n");
+		return PTR_ERR(tag_ops);
+	}
 
-	tag_protocol = dsa_get_tag_protocol(dp, master);
 	if (dst->tag_ops) {
-		if (dst->tag_ops->proto != tag_protocol) {
+		if (dst->tag_ops != tag_ops) {
 			dev_err(ds->dev,
 				"A DSA switch tree can have only one tagging protocol\n");
+
+			dsa_tag_driver_put(tag_ops);
 			return -EINVAL;
 		}
+
 		/* In the case of multiple CPU ports per switch, the tagging
-		 * protocol is still reference-counted only per switch tree, so
-		 * nothing to do here.
+		 * protocol is still reference-counted only per switch tree.
 		 */
+		dsa_tag_driver_put(tag_ops);
 	} else {
-		tag_ops = dsa_tag_driver_get(tag_protocol);
-		if (IS_ERR(tag_ops)) {
-			if (PTR_ERR(tag_ops) == -ENOPROTOOPT)
-				return -EPROBE_DEFER;
-			dev_warn(ds->dev, "No tagger for this switch\n");
-			dp->master = NULL;
-			return PTR_ERR(tag_ops);
-		}
-
 		dst->tag_ops = tag_ops;
 	}
 
@@ -1117,12 +1176,14 @@ static int dsa_port_parse_of(struct dsa_port *dp, struct device_node *dn)
 
 	if (ethernet) {
 		struct net_device *master;
+		const char *user_protocol;
 
 		master = of_find_net_device_by_node(ethernet);
 		if (!master)
 			return -EPROBE_DEFER;
 
-		return dsa_port_parse_cpu(dp, master);
+		user_protocol = of_get_property(dn, "dsa,tag-protocol", NULL);
+		return dsa_port_parse_cpu(dp, master, user_protocol);
 	}
 
 	if (link)
@@ -1234,7 +1295,7 @@ static int dsa_port_parse(struct dsa_port *dp, const char *name,
 
 		dev_put(master);
 
-		return dsa_port_parse_cpu(dp, master);
+		return dsa_port_parse_cpu(dp, master, NULL);
 	}
 
 	if (!strcmp(name, "dsa"))
-- 
2.25.1

