Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72AED2F7DAF
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:06:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729011AbhAOOG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:06:27 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:1768 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbhAOOG1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:06:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610719588; x=1642255588;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CN0WY+YBp4RNoOYHuHqovxX2R6rFlSK3nLo4F3hEm8c=;
  b=BayrrjiB04pw9UZhmjku0WQWpCpt7jbMzUVLHmTRQdjYzJAoXzf49C03
   rosfscbVFN9wPhPvEiOyYD83HpzDcDIUVmAbnoVgNdLaEohou5xhcCDF0
   mvvgGeJ3J9t66iPEGUFPwsSvZCmE6CxQ+1Fil2tkMctRNQB+WiUTvHshI
   lyPW1mqeyo2yLiFskfhwpFa22v+00pAfp0GlwrDx3s7bhurjfsAdWAAgh
   7RE9KvQhG0kwyenltN7MTYZO2Lsn21bKtS927rVfFSo/AMH0A2yon0M8+
   WfAoeXf2hGScaLB8LXI2GvH9H5OTnw5mv3y47LRTJil/8XVPNpL8ucno5
   Q==;
IronPort-SDR: JxUFObFRuLV+ZlWBYf8iZ5UEXQObeQpEeVS5jx1Hm0jHZ/up+WtRYZ/X30Rnl9BawzfZz1kL+y
 ppOJA31NMuz9xF1K/CDqHgcGfzavn7SJVpPPMABLamRFDFbOvCJWY2FmE7fyti3Xrpb1OyzFBw
 j/B22SCx5otb12feFXBEEa794Gm9tBEoHPl5xJXI/d7mb3a5EqbJUyOeKDHxfjsbL91wOn3SEG
 gkj3fmccNhLxfMN1+8H/+7Aa91fCTxhV9f6unKe8fGsEtmZgqka4amNELcn70+AQisf23A3wX3
 6tM=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="158693648"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:04:46 +0800
IronPort-SDR: ieNcKxnTrMmcPaftTy8eFtCSkbsMZY2wKsl8O1jy+VTXaxlYDmscL/mSb+1Sgnq3trXLNEmy4B
 jkc3yEipQJ3hJYr8BYzt3L44zvd54boyhsQUnICrZjg6WyEU4h2hUbPsg/NCMqawC1b3wQa4/b
 xjcS0hQA+P2Ap9IQpMdCEZ1zj9t2AAStZTr6s2uCRAattT3L2nNVIPzOyAuUgv0o+yf/HMn/by
 ndOk1rRphZFNS+BDste1pVg6C1gmUaXX7WDRxZYcCeWqYvCXiAsTHAOShT+KCN2opqQ3gflX1s
 VP2PR2lMxvZkgbHBe9uc2A/0
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:27 -0800
IronPort-SDR: Fn3rEK6WIfgU9zOzR3ARbUv9VcNsbosccCPrnWgTYWHMmo87uBBAmDczhH1AT9628znV+U34cs
 WGUzgOiONdK4XKuQOB0rxVLXeN88ktY2CluiC/pTVO6t7JrsGjbor1U/CXNqeDqWjVurQLfeVe
 epw5TwXvQw9F3FQEjWihOK9ijjARh2FHgYxgJIOzRbORu+JNeljHw0OGQnLEPfDhUqu/bio9xi
 kFJsajIEIajbIu6pM2/hEgU/1XQ0LIvjLH8JYK1kCZ9r2lVVPo8MYQeu6/xCYpVu8vkMVGWqDg
 NJc=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:04:44 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v12 06/17] dt-bindings: add resets property to dw-apb-timer
Date:   Fri, 15 Jan 2021 23:03:41 +0900
Message-Id: <20210115140352.146941-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
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

