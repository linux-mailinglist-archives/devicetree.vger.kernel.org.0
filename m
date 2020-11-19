Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B83E12B98DB
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:08:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728062AbgKSREb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:04:31 -0500
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:37977 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727690AbgKSREb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:04:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1605805470; x=1637341470;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=vXFruGr2aeW8WhqpRz+OKo5sifRSrF1d5mIcR47IXVQ=;
  b=YWATW9BImYcp+l3d0WNbPQHkJwbVtRHXnGG3Y6z/xs9D0e2YmK5Xeu1A
   TzWynyjRmLsG8WIjyPsbO8jOXn/sDiDy4EoeSmLESGyMfNoVachSkW1ne
   rsq0XXtt7GtDteI2KFIP9lKO8Q3Y9qsQazpsGvn5apcNFZbdD96VuHTkB
   awTpvFzvceObM/Ms0KbzqR6XJoRuTfu1WPWEorpcw5JU2+9lFwe5f6ZWG
   KKf3Eli54hzrxssyumhXJ8hnpZld2XdXTAR/0aqmLwB9I7KBbQv0DMSR9
   0aHbzopshQYqeGpHqYR4OJ6gCVQlqTUPEbhgxgvE9ZCtfO1nnMPxOxjbD
   A==;
IronPort-SDR: AMkXjyz8d2ibjOIG7F0VpnoFYjx7m6rlDs5Aedbb/9BNxudKVzzyUKWIqWauJfPA9uj93ehevU
 hQtHjKjV4042RD77ybrBjG/sA/6ajIANgaO3vP2QpgC5dsMkceNj36h1+c+ZiU8PGRtNbArAkE
 X/2xaoMT3AHBKyqDsG1CBHFvT8HVCSNMtpiSwkvKZ/cnonLr2c6x5vih/v8J/VhSBsuoIoMChl
 xdGtDh5E4Ey2ah9RKvySedc6WAE0ShZzBTU2ZK4dZXf3cX+UPP1yEwXUVV25YcsQiKYZTZCSV1
 Y7I=
X-IronPort-AV: E=Sophos;i="5.78,353,1599548400"; 
   d="scan'208";a="34319665"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 19 Nov 2020 10:04:28 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 19 Nov 2020 10:04:28 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 19 Nov 2020 10:04:26 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <jassisinghbrar@gmail.com>,
        <aou@eecs.berkeley.edu>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 2/6] soc: add polarfire soc header file
Date:   Thu, 19 Nov 2020 17:04:25 +0000
Message-ID: <20201119170425.18365-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add header to support the Microchip PolarFire SoC MSS system
controller mailbox.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 include/soc/microchip/mpfs.h | 50 ++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 include/soc/microchip/mpfs.h

diff --git a/include/soc/microchip/mpfs.h b/include/soc/microchip/mpfs.h
new file mode 100644
index 000000000000..60311ab72b76
--- /dev/null
+++ b/include/soc/microchip/mpfs.h
@@ -0,0 +1,50 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Microchip MPFS mailbox
+ *
+ * Copyright (c) 2020 Microchip Corporation. All rights reserved.
+ *
+ * Author: Conor Dooley <conor.dooley@microchip.com>
+ *
+ */
+
+#ifndef __SOC_MPFS_H__
+#define __SOC_MPFS_H__
+
+#include <linux/types.h>
+#include <linux/of_device.h>
+
+struct mpfs_sys_controller;
+
+struct mpfs_mss_msg {
+	u8 cmd_opcode;
+	u16 cmd_data_size;
+	u16 response_size;
+	u8 *cmd_data;
+	u16 mailbox_offset;
+	u16 response_offset;
+};
+
+#if IS_ENABLED(CONFIG_MPFS_SYS_CONTROLLER)
+
+int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, void *msg,
+			      void *response, u16 response_size_bytes);
+
+struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *mailbox_node);
+
+#else
+
+static int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, void *msg,
+				     void *response, u16 response_size_bytes)
+{
+	return -ENOSYS;
+};
+
+struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *mailbox_node)
+{
+	return NULL;
+}
+
+#endif /* IS_ENABLED(CONFIG_MPFS_SYS_CONTROLLER) */
+
+#endif /* __SOC_MPFS_H__ */
-- 
2.17.1

