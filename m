Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3701C5091C0
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 23:09:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382328AbiDTVMY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 17:12:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379079AbiDTVMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 17:12:23 -0400
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2564E47AE6
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 14:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1650488976; x=1682024976;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=CVpGC15qTB4Dx3RmzQhS+gi/i1dRRHj+8ZZU5naui3I=;
  b=C4lk6QTtuGPe/LlxT1yyGqv4RgbH7rpdXVTIW95jmWAUym31Sr4EkxAO
   zWsXxHy5nXbc4UQ4p+6gnzwzPfnE5eSpusnwAo4crt4CRzecX1hsBTGSF
   qHtsjbrIdaPaVCmOLEXXwWRHmVgthH2VESaiLNwiMw0ZptZ0ZcfebXVht
   8=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 20 Apr 2022 14:09:35 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2022 14:09:35 -0700
Received: from nalasex01b.na.qualcomm.com (10.47.209.197) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 20 Apr 2022 14:09:35 -0700
Received: from hu-pdaly-lv.qualcomm.com (10.49.16.6) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 20 Apr 2022 14:09:34 -0700
From:   Patrick Daly <quic_pdaly@quicinc.com>
To:     <robh+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <surenb@google.com>
CC:     Patrick Daly <quic_pdaly@quicinc.com>
Subject: [PATCH] of: of_reserved_mem: Increase limit for reserved_mem regions
Date:   Wed, 20 Apr 2022 14:09:14 -0700
Message-ID: <1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reserved_mem array must be statically allocated because it is used
prior to memblock being aware of all "no-map" or otherwise reserved
regions which have fixed physical addresses. Due to this limitation,
if one architecture/board has a large number of reserved_mem regions,
this limit must be raised for all.

In particular, certain new qcom boards currently have 63 reserved memory
regions, which when new features are added, pushes them over the existing
limit of 64.

A generalized breakdown by region type:
13 for linux-loaded device firmware
9 for guest-vms or inter-vm communication
15 cma heaps/dma-buf heaps
24 for bootloaders/hypervisor/secure-world devices or software
2 misc

Although this number could be reduced by a minor amount by combining
physically adjacent regions, this comes at the cost of losing
documention on what/who the regions are used by. In addition, combining
adjacent regions is not possible if there are phandles in devicetree
referring to the regions in question, such as "memory-region".

Vmlinux before:
text      data      bss     dec       hex      filename
31030829  15807732  588524  47427085  2d3ae0d  dist/vmlinux

Vmlinux after:
text      data      bss     dec       hex      filename
31030877  15807668  592108  47430653  2d3bbfd  dist/vmlinux

Signed-off-by: Patrick Daly <quic_pdaly@quicinc.com>
---
 drivers/of/of_reserved_mem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
index 75caa6f..de0cdda 100644
--- a/drivers/of/of_reserved_mem.c
+++ b/drivers/of/of_reserved_mem.c
@@ -26,7 +26,7 @@
 
 #include "of_private.h"
 
-#define MAX_RESERVED_REGIONS	64
+#define MAX_RESERVED_REGIONS	128
 static struct reserved_mem reserved_mem[MAX_RESERVED_REGIONS];
 static int reserved_mem_count;
 
-- 
2.7.4

