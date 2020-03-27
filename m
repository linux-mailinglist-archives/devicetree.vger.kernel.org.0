Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4FFAD195B41
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2020 17:37:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727770AbgC0QhM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Mar 2020 12:37:12 -0400
Received: from foss.arm.com ([217.140.110.172]:48572 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727726AbgC0QhM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 27 Mar 2020 12:37:12 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF9D331B;
        Fri, 27 Mar 2020 09:37:11 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E1FBA3F71F;
        Fri, 27 Mar 2020 09:37:10 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, f.fainelli@gmail.com,
        linux-imx@nxp.com
Subject: [PATCH 4/4] firmware: arm_scmi: Drop checking for shmem property in parent node
Date:   Fri, 27 Mar 2020 16:36:54 +0000
Message-Id: <20200327163654.13389-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327163654.13389-1-sudeep.holla@arm.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The scmi protocol core driver checks for the channel availability
before evaluating the shmem property. If the individual protocols
don't have separate channel assigned to them, the channel alloted
for the BASE protocol is reused automatically.

Therefore there is no need to check for the shmem property in the
parent node if it is absent in the child protocol node.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/smc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 5929c668dc1d..833e793b5391 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -60,8 +60,6 @@ static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
 		return -ENOMEM;
 
 	np = of_parse_phandle(cdev->of_node, "shmem", 0);
-	if (!np)
-		np = of_parse_phandle(dev->of_node, "shmem", 0);
 	ret = of_address_to_resource(np, 0, &res);
 	of_node_put(np);
 	if (ret) {
-- 
2.17.1

