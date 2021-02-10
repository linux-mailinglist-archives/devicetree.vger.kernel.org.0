Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90C9E315E8A
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:05:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbhBJFFP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:05:15 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20614 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbhBJFFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:05:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933511; x=1644469511;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=y7+Iv4l5tkZ5CWOYSGe0JkPbRmlo89yMwmsefYp0XQg=;
  b=TNEioeZGTyWb9aExJZWExfhB3invK7P/Br+hCD6xQ3U+VsM1XGtU3xwh
   na0TUnmGSh4TpD1jhTC5+roCGmZ8ff306uhjwOG7Yg21mDlSt6ux+7ZQt
   3Dkva5IgpPFzZ0ZIhhGL6tD4DnG3qMQ6YmNFuMwxpzFvXFXhzzCSnjelm
   ua78bGiE85boFhlWRnJzWhaE50Vtdj1Nd+DQrrv3PMwQjr/bQLah+MxkN
   VmrqXe20nCe4stLRH8hVA//WtXgUKf96Wlk9JASvHh3V2xK+QFOPG/nIk
   B4V6eeXWoAbBq0ILPWxmWJmKn3jLXIadzNM3X6oI88CJvFERQNU2weiYC
   Q==;
IronPort-SDR: Ei5lKmMWK0TGPAL7NhbFDd7AYbUphk8Nd4T7+m0ZfOADP4xwyutFfFZPYODLCsYeyY0Fh8NHxU
 wX5U+9S1x5OQKCVV/wm77DzAZe7q6TWsgjQnzCVDzcj/y1C822GDsYDqJlwJQ8I7n7/ydIfPDj
 2MQ5gtxJsM0Xl1ZyS5JAdEzV++Dks1R0nBM3PCUxWo7ZpTtS2ioL3jJx4U6kyPc/gz/oPgh5tV
 c9VpS5QlY8TD8LRoUKRq9wp7MKoqG0Slp7hMcNUC476y1p7gS+OgHhS/KEkwz7eOpa8eJS6HSG
 Tvk=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775822"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:54 +0800
IronPort-SDR: iwWlyvg2Gnsd1uMcumO0YFYxFWVzVOjY4j2RBidUDbBbujUElqZeb5/jZqZpM1eWwn0PRQcAYv
 fTfvpJbRnY9GX53O5MAXqqRNX9EjQ++zZln78AUprDES1gTUUDqnOnWzS/G/airPUuSUcFzypR
 u/mjO+KZbagr66OAXAQ0yzIBSSAswEG4xofQCPm3zvCbminEVmNBU2uIrj6VAszumZwzfVW3XQ
 w6VoCEYySUQDWzPYDS67FT11GCyvvFBHxdYAP6xl5AT1DUAGMXSlJpF9Y1zK0H9ZjNqREokusY
 mGMcCJoz8cMTWJyvQTMW5ElD
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:46 -0800
IronPort-SDR: GLJ7214isQu4aJj2VIgRnA4s4WPiLkYcds8sD4UrutqqllhWHpPxz5Fh1Gv+kIJ/Y51+U+Su49
 5122uilUY/jZThOeUHc8yectbLpknVy450F9E81V/JwtYWH82W+Y1ALph1pw01IT2NJl5bexMh
 S4mcOfUoLlgZGWFADhn+9PjPX/zccAgm0/teRaJxjEMRgxffpegkiWQLb30Av54hEu8CfUDERI
 bouiJNI2JCdcyjwfB3EolyPkGg72AVh3laOW20le/OfhA2lGBlvoCo0hv7v73T4/Sv5wva6oFB
 5NA=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:52 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 09/17] dt-bindings: add resets property to dw-apb-timer
Date:   Wed, 10 Feb 2021 14:02:22 +0900
Message-Id: <20210210050230.131281-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
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
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
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

