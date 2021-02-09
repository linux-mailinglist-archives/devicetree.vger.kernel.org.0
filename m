Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB05314EF1
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:33:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhBIMdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:33:20 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39165 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbhBIMdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:33:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612873997; x=1644409997;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CdDSnYoUg4x8z9E5kd8zeW/UQhTCXdRY19IDHVs+Ulg=;
  b=ja53ggpd7Cphf8/smyP3ZSvW3tMUNyjC2LWBr2f3Ouh0ntPicQLaPURD
   0Rl0w2/8t6O3RWVmREL1RnbO+Y5F/dWcb+zftvpoa4VUoE8IjZja4bH7m
   NoEfDuLPpj7VauDs4vH4AmHO/mPGCiNQhC4hAsFpyeWTu7dhH743XHXAx
   dr/+X1y9LQkcl2D3IAMs2EMAVdZjtPYWJEdVfm9Syi9ZYjzS2pmG4ehtd
   9hneG0PHRIIERtGRqGe4fM/Tw/zOcT8D77q7EqxdPh38OVa4swHGdv+DX
   IUEtzIoYuaW7JA77j2//HX8J3Ho8qBctIOCZdVEeOj3Yw58YbfDoncNj0
   w==;
IronPort-SDR: +yUmojXudX+6C29z/mzHmExIOaypGucILxe3LDphDCDx4LWi38X9WGT1NExMMB0SXStvRU17/E
 3E6nUnNkvCjQ1NTKYmyVTEJsq3EiKHEsEfj5k5J5kmGzx7E2hiPnXMDG86V9og5zHlDNL5JkoZ
 Hu5V1kRrDTY4CTOgenmikt2oUq7dEaxVe00kIPbXjdQdS+UBFsEu3TfhPosh1AHkA3vuG7DQnw
 U5dr4ltUv4cbIQsxQdQT++cacJq1PIpFq0mqHedB6GGRZmwjTJENDXw/u21NbURSAM5AJeeZQH
 kcc=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996814"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:31 +0800
IronPort-SDR: xw1jHdcCiFvJOboOiCY02dsc+cUy9UMKDhAETptUSGgd5smhBMgeGYJZu3U3k7Pnb5mH+BXZCu
 fSQwxplhCI1fK3ImD/jdssB1ABoAqOLCMH6nOcbAT6fI1UJKtRD9ZytoQ8REkyIxnvcOuGilpI
 wZ7n/RGCk6fcbjA6tebnOEz0vifZRi3ArF+EuYhfSyUmfJZepyfnWplGM5RJdrKp2yPmVHNIZ2
 ZHO2+i4atTrOjPhF6dtE/FfC4m+ybV48Ld2QGPDIHguCSkUbeBvuNq3YNG4ekGcnOhjJHVAOfR
 KMK9VvQvFYMD5sbVoqFMkh1q
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:15 -0800
IronPort-SDR: 5cL0Thx6WDBaCz2ayEZmhttWOulinwOkASJ58p4pqWuqpATlAHpqsmZu+ufE1HNQ+rWJJvyBM2
 pOJM1RsFbp5sbj5v8eOIe2BqVcWDtR6ql7UgCvI5CQus3Dfirvb6Ax2U92qv98GZjRooqFrOSC
 2KuyjVFZM/3aQsH7CMhztdTtwCEnvBAllTAu8TCVPVz292D04e2nPnVxrKL8LfKH3Z3uCABFQL
 4uTG3uoqr8/JPHFIgU0iZu2vuuQ4YWj3PRduaUvkme3KMdNZqD1LtQuoobGYyMrJjl2eJMKKiC
 s28=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:30 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 08/16] dt-bindings: add resets property to dw-apb-timer
Date:   Tue,  9 Feb 2021 21:30:06 +0900
Message-Id: <20210209123014.165928-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
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

