Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFA6230DA82
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:03:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbhBCNCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:02:46 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14157 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231178AbhBCNCl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:02:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612357973; x=1643893973;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sBO4dz7he5GLPA95Zeo5B595YhLnzXq0AGmRkHWAaCE=;
  b=mBwDdZZxJsrLbyMG/IBLdo41Ld1J4kl5hXW3H47yeh9uAhucSRwvbmg2
   UQS92UE6Wuc/P+pb90YTxLppUB9M5Ntt1BImj1eA3v/03DMUTMGYY5MoV
   SNB8+bj+mtvQqyl2i37EQr9cKZU7GlWNqPjPmmY37TdISe0vhFaTo4QEx
   mxxhNdwQ5cXe+3HDPgeVvdeTfa1PfYcdtb4gDtMXvAq4278QrzNKkLjtt
   NtYV1U3JsgQpreKLLHCDKbbDkoE2LeOq/joHQfOGlFzZQbnxSz6scM82w
   XZlcr8owHKPmwGgUllgugAFz8T46O7Zg3Ml3LxPa/9/ot5MomyaqhtdOk
   Q==;
IronPort-SDR: SLpjL0Z88ZK9bz31w4Zo/hVDnCAL/LmUI9elPiPAN5jJ+DUcEhEzqtFZ8m76HqdgcXGjjRkZeM
 3fnLJKeC2up7PkCeGXnTb5+ZqPUhx31eifbQyeOscEek8NrpicNoYwkVciDfnYlCTI/iq+KduK
 EduVfrXxCFnUaGWstiQMBj3Kc7CtI9nwyHMl6iarnW7AIgtZkHxGP6yRAiB3vYIZk7nVWevjvS
 IpMBZ7MXoKtEiJEnx1tvsjtRuSR9KPvtxukn2a6JMRnhU0z4v6mbX8HkQGw5k0VuLrxCWNeDjf
 n08=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106945"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:42 +0800
IronPort-SDR: fCwBiGqabi35IfepzKQS+j3FvzAIdjyS/PYTzaCJs8BKdm9bp5+obhEF/F231q3srH9hWIGBAv
 xT54uIT5QRxOd3jlrbSlRXDXtbv9+yZ6r063v44W3D6tONDhvww3eGin35HkXvwyU27/3OCp/E
 OfkJRD75sRHhJEPEW7+fVmMYTaH4ekn7aTZSytjdLlh6J0ELRh4M9q4fGb1rb1IasvblQ+ZijZ
 O2/p1sSsckc/60R2arEz55bNWAha2AftnCiKijY+5ZQMLZGEhgDWjU5YaOvvfMzAYjgWH7VzpN
 s1Sd2/DvwRlMqI2sviSzjmEt
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:43:54 -0800
IronPort-SDR: L0+tMOvq5FBqITOcvEMr/uhWTbbh9T8q3FEQE7uJ9fCnwEsrKjkn73qrJwRIGJxwQxK2KVltD5
 0C0ttIwHoQwuaSwBuzzAVUBKGQ41kBYHjJM/W89JNuQ2MFCQAgtHJCY+l5lUPEWxEFB0fil1ek
 qmdLf0znusdoWwMnJU9gxAylcHRxNv5R5fcQZ44hIWk6FMVy0S4Tk5Y/r8pYgDaBvTVD/X/moL
 AmUaaLTBaGw5nvHusxgE58XWaBI3YtddZYMP+WlwsyM8uO0IH8yRISvjAX4cVthLagCo8fw6UV
 nh0=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 04:59:52 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 08/16] dt-bindings: add resets property to dw-apb-timer
Date:   Wed,  3 Feb 2021 21:59:05 +0900
Message-Id: <20210203125913.390949-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
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

