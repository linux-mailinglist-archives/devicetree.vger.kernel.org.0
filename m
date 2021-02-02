Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 773D730BC31
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:39:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbhBBKjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:39:25 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35924 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbhBBKjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:39:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262363; x=1643798363;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CN0WY+YBp4RNoOYHuHqovxX2R6rFlSK3nLo4F3hEm8c=;
  b=YsKXwAx16pq0WoW4y72v+t12I6NPLX0Eo8vy5ZaXVwGiL+jTwAtQIYT7
   OJ2ghVHjvIcLRN0hCLusPtVg/kpN9AF1uJtmRaFukUURT6Z5zbnoARyuM
   vXhLl/LgHKXO62eJcLMXYS1jD/SexpvOQTkWdTBMO1sC+cMhgsQ7KL3b2
   w/0Vlc4ET527lK4JgO1TSbG3H/6Cv45XsPlxDGheFIkNk/7YWFAPiG0ax
   Rkruet+NSYTidlVkm03yX/ojUU+phHgCLmBzAITxrTErW9xAVN4yBMKoH
   MwMLlJ+5ogwT0cTI/UKtIgls8Llvl6wwj3UbQIRRKsiH0664VcG24xvMs
   Q==;
IronPort-SDR: HUjLS18A+Vjd5JssMe4p2Kz/jnv2GwDkCBO5mP4oFbqZGzUp1mnMCoZhN2tBIEKF6AiXH3wIZ6
 zpJjSAiRUzpU35qgsKg8aKnZCsyQ4oIkPnrSv+dw//Gksuendqpu49/u6IO95O8dZG3tVlCw3k
 CqYZvOsQ67tAsBFEaqeE8n5O2+77zcFMS0PfXkFSqdK1IQQcR9CEssAcs5ZvOEmnA+3Z14+0oY
 RRwwFOPUhFhvrJX2WbEylHMVnX+zV756ERjvR6XFjoo2J7oThGfFnVEr9knGX8JmLn+YDb0m1y
 Dg0=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092500"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:36:54 +0800
IronPort-SDR: TvySCJuD5wUJGE0iyDL3oml6j5LGJWxplA1TJVCV2wc7iRFBS8dle9pv8yzNhEAXAI5XJs3WPf
 /sqsSR3tOwJ/16bQTfhhiiQ9JArujCKuM989ZgRwMzZgQcCTOf7iyfk/IhycX7Z1zN2mp2Ww9p
 tFaax9SZeowp1muP2xWHjygoKiR6mWSf9ziM+4fon+9TzAiWJr6d8xyxUePKvUYlSU17imigrw
 ZYHI5/HjLZQgu8EXQmu1t/k42goSpU6lMZOjPzSqLWqlpHqZZKo9+/FX/CUApAWbKQmIIZpYiD
 1fUtR+cQSNNIl7k6Ip47biik
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:21:02 -0800
IronPort-SDR: 362wvnRVH3IHs6aQDGZksUt5AilGK+hPunyRpV7qLEPp4wUgFOjkchmb7RJukJT5eakYqRrZs2
 W0WwVJbOU0CQqaG6E5sQxH+5bbBNYr03xvunwhQUPP/mYW50qg94KDJXPM+7pVTRniQKGjr6aJ
 zIG6mXCVl4PsRaWQ8yzPxAYPJv8iS/CDd8kvjUfxPPOXBTjYA2Y3K9l1pYpaHlxHZdg546ZzZR
 01kcc2gPX7kYNDXUmPWymEB9I0J4pGVLcSNaZj39YF3R37nzLBTsrUOoCKUehuP1aNWE9J+kms
 blM=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:36:53 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 08/16] dt-bindings: add resets property to dw-apb-timer
Date:   Tue,  2 Feb 2021 19:36:15 +0900
Message-Id: <20210202103623.200809-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
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

