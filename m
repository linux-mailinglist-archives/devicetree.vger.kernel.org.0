Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7192310558
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:01:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230487AbhBEHBO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:01:14 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41747 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231264AbhBEHBO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:01:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509616; x=1644045616;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CdDSnYoUg4x8z9E5kd8zeW/UQhTCXdRY19IDHVs+Ulg=;
  b=oUwesLtrJ1uvjC4jHfj7JKcbsccVdAQRT0yABZLmG2x2/aun+xIIqcqk
   6pRd+ECIxLNHwvDrjwH2D6gnnCX1AwS5EWYW/2KMehZ9UGCxX4jvlskg5
   NK8/B1yu/X9KOBrFWvRMjRVfGRNJokqIKoNCclxT7G4U3QlM6LDph2F0e
   I1bc3vm8TI4olxivbwE/X3tb7+xwKN49BpDDSEJfSJDp3bxF13KTMcbrl
   JZmS1KBeEOTOumPkJy+TbBhCSxpHQDp69GhExgrA9ZuS2juKFcC1GbXck
   eEg+xbGMmFGaDUMIHq+bKUMBnR1oBWokv66BwuUlfdpDg9+H+b7h3RHzU
   g==;
IronPort-SDR: c1ASP5fwetKvu+M7Q+ZzbzOnjYKYrDDv06LHS9SyBLGErlUZsyvRFaJno+hOfWeiTdSEVlPIrA
 LdcoLFiVqGb7wcyJHtKQH/K8DDlo5yMlKshLYjBW4XlC3iXPvM3+3ysEmRCiFgFpyR8PRLJltt
 OmQ9jnnd/eWFJfJgHRwvHaRsNxNyo9EtC0Tu6wfwhvYp+FpCpLRF6rOQfImBOPMSxB7KGV8Rh4
 8kJSsEgiDCw134WKIuS6BoZY+sdhA84hculdfNocCX88WvNQZzZjJERtnsQCpyloE0ogjmCALB
 JKc=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312072"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:37 +0800
IronPort-SDR: IScSfWeELpiiOhN6fox9jVyMjilneiZy7VT9m2yHL+lUBEWE/88l356IKYuWQeHj6UvDEuPXFp
 ABsBQ1T4Vq7TjYrfb1DBD2kGsuomrKg+HsbzdIwl+UhVjHb1kHA8BX8YbZnrRn80PI7lSduaUi
 YJSXQ7tDPMc6lz5TPa+3XO0KnuqInWaDRAHAn3Gno9ABjFSV2lYuIhZ5NvWbbhiushs9PE87qO
 417N3hL9XcLwZf6FjJqFrM9J/RZear0sJHh5fKYej9ywQuog5ji/v1OWdwRQPf+s3sZF6kaeUF
 O1bkU2dbQkqeREOBthxBpk8l
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:50 -0800
IronPort-SDR: LJ4ijRoBawtS+Y/PSYZ+xUZRiROjnv9E/NRd25l/i7x2l1aXhvbcix09p9wjI2aESp4ETkJSeF
 ecWUaFTTAAUIMafv8g0+MnH5UYD0N2rVDgcpS7dt0VIHfRALGTNcAJ7+eZd6PVyiv5i62em3ih
 OdYBX8/yWMAwO0J/XYr/LHtsLYWLyPI45HH/A0r3Ng8hOojTlGgksIQgFNpi6zrGC6Oy8wRmJq
 VMgK3wrAx8mYjJpSLc7r3xbQ9yHc7AhJN3zFtd7DwGlwx8jFM6QXfIoOSuUzlKed+8NFnkr4cq
 o7Y=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:46 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 08/16] dt-bindings: add resets property to dw-apb-timer
Date:   Fri,  5 Feb 2021 15:58:19 +0900
Message-Id: <20210205065827.577285-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Synopsis DesignWare APB timer driver
(drivers/clocksource/dw_apb_timer_of.c) indirectly uses the resets
property of its node as it executes the function of_reset_control_get().
Make sure that this property is documented in
timer/snps,dw-apb-timer.yaml to avoid make dtbs_check warnings.

Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml b/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
index d65faf289a83..d33c9205a909 100644
--- a/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/snps,dw-apb-timer.yaml
@@ -24,6 +24,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  resets:
+    maxItems: 1
+
   clocks:
     minItems: 1
     items:
-- 
2.29.2

