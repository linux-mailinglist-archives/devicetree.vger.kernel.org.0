Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 073E6360595
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 11:26:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231719AbhDOJ04 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 05:26:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbhDOJ04 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 05:26:56 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E270DC061760
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:26:32 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id r128so11135377lff.4
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=roiXvnhq0qpWIi8UO8TrQqzbKM/WD1U2Ju2ywGxcWOE=;
        b=Jyo84GPsKnfWiGU1uif6DpT5kzwv48JMoeHJLhlsygnaU3KmaEwotqK0a2jvKHIh3J
         x1DstbiQmYr8A81fvLsF3sdNy1UMWb6wlz0nq4YUgomIalbiM6rQ07WgRsTb7r1BBLUj
         r5/YAv1Fs+bCRl3aUhWNV0hkkA5Fr53KjOykITiESj6y8UKqsHY99+sHRMiJ6f4hJasW
         iwqZmR+xyFuHWD0IYBllefQ1dqa4cAiU2OOV8x32t8Ztwt2+e8s/mbjA/KBT7GyVbX+5
         okSrcA6ZGNEMjqe5bW6Tis1Y1iO3wKKyEmPO9h9zOoYHqA/Qtuxc+Bm1SJsbUTlVMLhx
         NTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=roiXvnhq0qpWIi8UO8TrQqzbKM/WD1U2Ju2ywGxcWOE=;
        b=hAxcq66n4+f7+55jEsoYA+gy8NVLuBvcwWhmKo4Kktg5BfcF8XTVg2CodOOq0eYH3f
         eqQ/laULk275CrVPLl4TnUSJqMKJzbJaJC77+SHjzVanpsR2Ua4oc9Ig0yfMBOLd99cj
         IZANQI4H4PWcHLrU0lRZEncUAHzlbkDLwvyKUSlh96N6xkQcPMHgwq8G6/LDZpN4lykk
         RRNnEguA0UcefZiDCze0LB+qpjwZZ1R7gAxekwCD7o3rK9hKpPqTZ4DxnefIVQ51MlpV
         sJk1xGJ7l3yudVka3zdmy4KeYFHPWTY4znPbJrr0abkeIpWEj56haissjy761hxM1AiT
         m0Aw==
X-Gm-Message-State: AOAM531sjo4qA9fdv8A6aDQ0d6O0Bs3iPy+gEs15bvqPGOj7ZYzAlvu0
        hiwyLu2hXIDQ5ZQq7Gq3jfsRtg==
X-Google-Smtp-Source: ABdhPJwQWudybn36vbPw1+IxjVVwCpqVzDMHsflcotW1D4NP33YREnm3Q06mXgDISm0xGNSeDPesPQ==
X-Received: by 2002:a19:ec11:: with SMTP id b17mr2000555lfa.290.1618478791275;
        Thu, 15 Apr 2021 02:26:31 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id g4sm595557lfc.102.2021.04.15.02.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 02:26:30 -0700 (PDT)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
        olteanv@gmail.com, netdev@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 net-next 1/5] net: dsa: mv88e6xxx: Mark chips with undocumented EDSA tag support
Date:   Thu, 15 Apr 2021 11:26:06 +0200
Message-Id: <20210415092610.953134-2-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210415092610.953134-1-tobias@waldekranz.com>
References: <20210415092610.953134-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All devices are capable of using regular DSA tags. Support for
Ethertyped DSA tags sort into three categories:

1. No support. Older chips fall into this category.

2. Full support. Datasheet explicitly supports configuring the CPU
   port to receive FORWARDs with a DSA tag.

3. Undocumented support. Datasheet lists the configuration from
   category 2 as "reserved for future use", but does empirically
   behave like a category 2 device.

So, instead of listing the one true protocol that should be used by a
particular chip, specify the level of support for EDSA (support for
regular DSA is implicit on all chips). As before, we use EDSA for all
chips that fully supports it.

In upcoming changes, we will use this information to support
dynamically changing the tag protocol.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 drivers/net/dsa/mv88e6xxx/chip.c | 60 ++++++++++++++------------------
 drivers/net/dsa/mv88e6xxx/chip.h | 21 ++++++++++-
 2 files changed, 46 insertions(+), 35 deletions(-)

diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
index 95f07fcd4f85..09e3c47bf005 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.c
+++ b/drivers/net/dsa/mv88e6xxx/chip.c
@@ -2531,10 +2531,10 @@ static int mv88e6xxx_setup_port_mode(struct mv88e6xxx_chip *chip, int port)
 		return mv88e6xxx_set_port_mode_normal(chip, port);
 
 	/* Setup CPU port mode depending on its supported tag format */
-	if (chip->info->tag_protocol == DSA_TAG_PROTO_DSA)
+	if (chip->tag_protocol == DSA_TAG_PROTO_DSA)
 		return mv88e6xxx_set_port_mode_dsa(chip, port);
 
-	if (chip->info->tag_protocol == DSA_TAG_PROTO_EDSA)
+	if (chip->tag_protocol == DSA_TAG_PROTO_EDSA)
 		return mv88e6xxx_set_port_mode_edsa(chip, port);
 
 	return -EINVAL;
@@ -4789,7 +4789,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ops = &mv88e6085_ops,
 	},
 
@@ -4810,7 +4809,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g1_irqs = 8,
 		.atu_move_port_mask = 0xf,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ops = &mv88e6095_ops,
 	},
 
@@ -4833,7 +4831,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6097_ops,
 	},
 
@@ -4856,7 +4854,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6123_ops,
 	},
 
@@ -4877,7 +4875,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g1_irqs = 9,
 		.atu_move_port_mask = 0xf,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ops = &mv88e6131_ops,
 	},
 
@@ -4901,7 +4898,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g2_irqs = 10,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6141_ops,
 	},
 
@@ -4924,7 +4921,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ptp_support = true,
 		.ops = &mv88e6161_ops,
 	},
@@ -4948,7 +4945,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6165_ops,
 	},
@@ -4972,7 +4968,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6171_ops,
 	},
 
@@ -4996,7 +4992,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6172_ops,
 	},
 
@@ -5019,7 +5015,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6175_ops,
 	},
 
@@ -5043,7 +5039,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6176_ops,
 	},
 
@@ -5064,7 +5060,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g1_irqs = 8,
 		.atu_move_port_mask = 0xf,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6185_ops,
 	},
 
@@ -5082,7 +5078,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.phy_base_addr = 0x0,
 		.global1_addr = 0x1b,
 		.global2_addr = 0x1c,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.age_time_coeff = 3750,
 		.g1_irqs = 9,
 		.g2_irqs = 14,
@@ -5112,7 +5107,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ops = &mv88e6190x_ops,
 	},
 
@@ -5135,7 +5129,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6191_ops,
 	},
@@ -5158,7 +5151,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6393x_ops,
 	},
@@ -5181,7 +5173,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6393x_ops,
 	},
@@ -5208,7 +5199,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g2_irqs = 10,
 		.atu_move_port_mask = 0xf,
 		.dual_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6250_ops,
 	},
@@ -5233,7 +5223,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ptp_support = true,
 		.ops = &mv88e6240_ops,
 	},
@@ -5255,7 +5245,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g2_irqs = 10,
 		.atu_move_port_mask = 0xf,
 		.dual_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6250_ops,
 	},
@@ -5279,7 +5268,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6290_ops,
 	},
@@ -5304,7 +5292,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ptp_support = true,
 		.ops = &mv88e6320_ops,
 	},
@@ -5328,7 +5316,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g2_irqs = 10,
 		.atu_move_port_mask = 0xf,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ptp_support = true,
 		.ops = &mv88e6321_ops,
 	},
@@ -5353,7 +5341,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.g2_irqs = 10,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ptp_support = true,
 		.ops = &mv88e6341_ops,
 	},
@@ -5377,7 +5365,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6350_ops,
 	},
 
@@ -5400,7 +5388,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ops = &mv88e6351_ops,
 	},
 
@@ -5424,7 +5412,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0xf,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_EDSA,
+		.edsa_support = MV88E6XXX_EDSA_SUPPORTED,
 		.ptp_support = true,
 		.ops = &mv88e6352_ops,
 	},
@@ -5448,7 +5436,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
+		.edsa_support = MV88E6XXX_EDSA_UNDOCUMENTED,
 		.ptp_support = true,
 		.ops = &mv88e6390_ops,
 	},
@@ -5472,7 +5460,7 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
+		.edsa_support = MV88E6XXX_EDSA_UNDOCUMENTED,
 		.ptp_support = true,
 		.ops = &mv88e6390x_ops,
 	},
@@ -5495,7 +5483,6 @@ static const struct mv88e6xxx_info mv88e6xxx_table[] = {
 		.atu_move_port_mask = 0x1f,
 		.pvt = true,
 		.multi_chip = true,
-		.tag_protocol = DSA_TAG_PROTO_DSA,
 		.ptp_support = true,
 		.ops = &mv88e6393x_ops,
 	},
@@ -5564,7 +5551,7 @@ static enum dsa_tag_protocol mv88e6xxx_get_tag_protocol(struct dsa_switch *ds,
 {
 	struct mv88e6xxx_chip *chip = ds->priv;
 
-	return chip->info->tag_protocol;
+	return chip->tag_protocol;
 }
 
 static int mv88e6xxx_port_mdb_add(struct dsa_switch *ds, int port,
@@ -6209,6 +6196,11 @@ static int mv88e6xxx_probe(struct mdio_device *mdiodev)
 	if (err)
 		goto out;
 
+	if (chip->info->edsa_support == MV88E6XXX_EDSA_SUPPORTED)
+		chip->tag_protocol = DSA_TAG_PROTO_EDSA;
+	else
+		chip->tag_protocol = DSA_TAG_PROTO_DSA;
+
 	mv88e6xxx_phy_init(chip);
 
 	if (chip->info->ops->get_eeprom) {
diff --git a/drivers/net/dsa/mv88e6xxx/chip.h b/drivers/net/dsa/mv88e6xxx/chip.h
index bce6e0dc8535..4f116f73a74b 100644
--- a/drivers/net/dsa/mv88e6xxx/chip.h
+++ b/drivers/net/dsa/mv88e6xxx/chip.h
@@ -96,6 +96,22 @@ enum mv88e6xxx_family {
 	MV88E6XXX_FAMILY_6393,	/* 6191X 6193X 6393X */
 };
 
+/**
+ * enum mv88e6xxx_edsa_support - Ethertype DSA tag support level
+ * @MV88E6XXX_EDSA_UNSUPPORTED:  Device has no support for EDSA tags
+ * @MV88E6XXX_EDSA_UNDOCUMENTED: Documentation indicates that
+ *                               egressing FORWARD frames with an EDSA
+ *                               tag is reserved for future use, but
+ *                               empirical data shows that this mode
+ *                               is supported.
+ * @MV88E6XXX_EDSA_SUPPORTED:    EDSA tags are fully supported.
+ */
+enum mv88e6xxx_edsa_support {
+	MV88E6XXX_EDSA_UNSUPPORTED = 0,
+	MV88E6XXX_EDSA_UNDOCUMENTED,
+	MV88E6XXX_EDSA_SUPPORTED,
+};
+
 struct mv88e6xxx_ops;
 
 struct mv88e6xxx_info {
@@ -133,7 +149,7 @@ struct mv88e6xxx_info {
 	 */
 	bool dual_chip;
 
-	enum dsa_tag_protocol tag_protocol;
+	enum mv88e6xxx_edsa_support edsa_support;
 
 	/* Mask for FromPort and ToPort value of PortVec used in ATU Move
 	 * operation. 0 means that the ATU Move operation is not supported.
@@ -261,6 +277,9 @@ struct mv88e6xxx_region_priv {
 struct mv88e6xxx_chip {
 	const struct mv88e6xxx_info *info;
 
+	/* Currently configured tagging protocol */
+	enum dsa_tag_protocol tag_protocol;
+
 	/* The dsa_switch this private structure is related to */
 	struct dsa_switch *ds;
 
-- 
2.25.1

