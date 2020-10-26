Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9604C2997F9
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 21:32:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731805AbgJZUc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 16:32:28 -0400
Received: from foss.arm.com ([217.140.110.172]:51652 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731788AbgJZUc1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Oct 2020 16:32:27 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90EA514BF;
        Mon, 26 Oct 2020 13:32:27 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3BA223F68F;
        Mon, 26 Oct 2020 13:32:20 -0700 (PDT)
From:   Cristian Marussi <cristian.marussi@arm.com>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     sudeep.holla@arm.com, lukasz.luba@arm.com,
        james.quinlan@broadcom.com, Jonathan.Cameron@Huawei.com,
        broonie@kernel.org, robh@kernel.org, satyakim@qti.qualcomm.com,
        etienne.carriere@linaro.org, f.fainelli@gmail.com,
        vincent.guittot@linaro.org, souvik.chakravarty@arm.com,
        cristian.marussi@arm.com
Subject: [PATCH v3 2/4] firmware: arm_scmi: add SCMI Voltage Domain devname
Date:   Mon, 26 Oct 2020 20:31:46 +0000
Message-Id: <20201026203148.47416-3-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201026203148.47416-1-cristian.marussi@arm.com>
References: <20201026203148.47416-1-cristian.marussi@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SCMI Voltage Domain device name to the core list of supported protocol
devices.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index ada35e63feae..5392e1fc6b4e 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -743,6 +743,7 @@ static struct scmi_prot_devnames devnames[] = {
 	{ SCMI_PROTOCOL_CLOCK,  { "clocks" },},
 	{ SCMI_PROTOCOL_SENSOR, { "hwmon" },},
 	{ SCMI_PROTOCOL_RESET,  { "reset" },},
+	{ SCMI_PROTOCOL_VOLTAGE,  { "regulator" },},
 };
 
 static inline void
-- 
2.17.1

