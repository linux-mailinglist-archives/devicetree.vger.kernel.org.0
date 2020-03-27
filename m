Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 331B0195B3F
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2020 17:37:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727773AbgC0QhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Mar 2020 12:37:10 -0400
Received: from foss.arm.com ([217.140.110.172]:48552 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727726AbgC0QhK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 27 Mar 2020 12:37:10 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E1D0101E;
        Fri, 27 Mar 2020 09:37:09 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A0F6D3F71F;
        Fri, 27 Mar 2020 09:37:08 -0700 (PDT)
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
Cc:     Sudeep Holla <sudeep.holla@arm.com>, f.fainelli@gmail.com,
        linux-imx@nxp.com
Subject: [PATCH 2/4] firmware: arm_scmi: Drop empty stub for smc_mark_txdone
Date:   Fri, 27 Mar 2020 16:36:52 +0000
Message-Id: <20200327163654.13389-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200327163654.13389-1-sudeep.holla@arm.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The scmi protocol core driver check for non NULL mark_txdone before
invoking the same. There is no need to provide a empty stub. SMC/HVC
calls are synchronous and the call return indicates the completion.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/smc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
index 6dc8a88cc91b..dd4b54c29679 100644
--- a/drivers/firmware/arm_scmi/smc.c
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -114,10 +114,6 @@ static int smc_send_message(struct scmi_chan_info *cinfo,
 	return res.a0;
 }
 
-static void smc_mark_txdone(struct scmi_chan_info *cinfo, int ret)
-{
-}
-
 static void smc_fetch_response(struct scmi_chan_info *cinfo,
 			       struct scmi_xfer *xfer)
 {
@@ -139,7 +135,6 @@ static struct scmi_transport_ops scmi_smc_ops = {
 	.chan_setup = smc_chan_setup,
 	.chan_free = smc_chan_free,
 	.send_message = smc_send_message,
-	.mark_txdone = smc_mark_txdone,
 	.fetch_response = smc_fetch_response,
 	.poll_done = smc_poll_done,
 };
-- 
2.17.1

