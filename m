Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1905636059B
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 11:26:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232000AbhDOJ1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 05:27:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232014AbhDOJ06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 05:26:58 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B281DC061760
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:26:34 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id r128so11135487lff.4
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=L2povlKkt36e0sjHOTf5t3C3yM9joCOGYPIkRk1hnK0=;
        b=OYDGaAdLTG9J63qvY5uEFEkzcSf6aZTyVXGHYZ81fTHIm1d3gyB8WlXWGEMjDnj19t
         93Hcv5AOPsJLQGag8hygXZ/C29z0bp4/FnOb/2Ael4baxG5uViwS5pvJQ+jMksF+dsPZ
         l1QWbwFRPCMGFmSWroeXeNtzPcW5KrK3TY8FNpV1LolAZIu7NbmY8gZNxItU9arLLE35
         bAqEiu0Ofi9HniwKaCFtnZ4JDN6IYMqOPV2I0jQ+XUFU3lcPo8kYtCIi/kHidMGkQgov
         qd72cjSv+cjpn5fzEFSyGaNpkKGaGdJvLd1SaPQnfE7ZjQcqMjB+LoyYsmg4vVfTtW9t
         +btA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=L2povlKkt36e0sjHOTf5t3C3yM9joCOGYPIkRk1hnK0=;
        b=LaHMGyez0er2NJOeTRQLWO8Q0ib44DkPcLUyhFSn9sJ4FPbLYJT1YwOn8fmU3FrhUN
         vNPBEBvyv2tdEBnr4hsUrCbvDyXNC4QtX74KacvUt67650sbCpTY5oli0DxMMYMhDlFf
         wB84XGUn1y6TRS6ffGY64u1s/l3nZAw1b0hFgfJcCFhWpTcJILlSYTzeC0jHifbWYoEH
         ewvPsxuLyYxW6oLYDzJpURnSRMOzLgCedFsTlsn8673JSfs79m1ESARM++qi8A2RRtLj
         bux4pOmPxmLtNNcb7j0t6oDIDWGJLppycAwas7FNflStWwYCCb10UzhN8oHal2foEOBL
         21hg==
X-Gm-Message-State: AOAM533NslpHRtwB8vJl86Cli7h6CUXdPGBXqR5sj0AJay+ixzlBT6he
        iIKypdtpwWm3MMJGA70KuOFkwQ==
X-Google-Smtp-Source: ABdhPJybegTcMw2fpHzRyYu7mWOTxn6oybsevQ2s+qe6bJ4u+vYjIfQoguqhl2qtevNXX9WQ29dvtA==
X-Received: by 2002:ac2:5e2e:: with SMTP id o14mr1672942lfg.397.1618478793289;
        Thu, 15 Apr 2021 02:26:33 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id g4sm595557lfc.102.2021.04.15.02.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 02:26:32 -0700 (PDT)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
        olteanv@gmail.com, netdev@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 net-next 3/5] net: dsa: Only notify CPU ports of changes to the tag protocol
Date:   Thu, 15 Apr 2021 11:26:08 +0200
Message-Id: <20210415092610.953134-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210415092610.953134-1-tobias@waldekranz.com>
References: <20210415092610.953134-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Previously DSA ports were also included, on the assumption that the
protocol used by the CPU port had to the matched throughout the entire
tree.

As there is not yet any consumer in need of this, drop the call.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 net/dsa/switch.c | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/net/dsa/switch.c b/net/dsa/switch.c
index 32963276452f..9bf8e20ecdf3 100644
--- a/net/dsa/switch.c
+++ b/net/dsa/switch.c
@@ -323,15 +323,6 @@ static int dsa_switch_vlan_del(struct dsa_switch *ds,
 	return 0;
 }
 
-static bool dsa_switch_tag_proto_match(struct dsa_switch *ds, int port,
-				       struct dsa_notifier_tag_proto_info *info)
-{
-	if (dsa_is_cpu_port(ds, port) || dsa_is_dsa_port(ds, port))
-		return true;
-
-	return false;
-}
-
 static int dsa_switch_change_tag_proto(struct dsa_switch *ds,
 				       struct dsa_notifier_tag_proto_info *info)
 {
@@ -344,16 +335,14 @@ static int dsa_switch_change_tag_proto(struct dsa_switch *ds,
 	ASSERT_RTNL();
 
 	for (port = 0; port < ds->num_ports; port++) {
-		if (dsa_switch_tag_proto_match(ds, port, info)) {
-			err = ds->ops->change_tag_protocol(ds, port,
-							   tag_ops->proto);
-			if (err)
-				return err;
+		if (!dsa_is_cpu_port(ds, port))
+			continue;
 
-			if (dsa_is_cpu_port(ds, port))
-				dsa_port_set_tag_protocol(dsa_to_port(ds, port),
-							  tag_ops);
-		}
+		err = ds->ops->change_tag_protocol(ds, port, tag_ops->proto);
+		if (err)
+			return err;
+
+		dsa_port_set_tag_protocol(dsa_to_port(ds, port), tag_ops);
 	}
 
 	/* Now that changing the tag protocol can no longer fail, let's update
-- 
2.25.1

