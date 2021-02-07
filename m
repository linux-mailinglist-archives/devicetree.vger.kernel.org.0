Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F313C312819
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:16:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbhBGXQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:16:42 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:1047 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhBGXQl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:16:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612739855; x=1644275855;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CdDSnYoUg4x8z9E5kd8zeW/UQhTCXdRY19IDHVs+Ulg=;
  b=ncJ+PnUfPAv2K53BZ94fy4uOtXzA2sjQQBsavTkxG/HSx6fpsvdmcmxe
   F8MkouHg0yn+tQHdUufO+iqoOmXUBUHJUE6C4v+F4/lRd1vfS6Wf4XwHP
   zNRY5CsjuSkST4+iBXwqqE/3Ni4cuJMoPCfGMsbxOxBa2Sw4+1STetx3l
   B0IIt+lLt8y5pXN1w1hYlRP/gItVAlO15Q99FoSDPdCz2SSWWXGsYO3XS
   pnm1eQ3e+wWrSzWCYZAJoobDpaPNIc9ZlqtrT0DA10SiSQMUay9Wl8AOl
   Th4bV4DiOztqIgNSbdiImzYGsXqqk1kY1/MUZqwvCIhdNfAuav27Sf+a0
   g==;
IronPort-SDR: XUJAW8F3P3n97sG/uuhZ/WDcGeP8I2gvX8/1Mg4EdLJ90o64oAN/u/sJQ47Xn43mNSWMnyHXW+
 nZvn5tNoLCRk9V9ZRKuNBzuwTEK1OKGsOU2mtZaTpTcx/S6gn0qGnxz6Vn4bSwM5b6cf/7yhwK
 WpSu6vfimWnilQQOLPUd2UIc9TnH1GA5zJMCJXqJMQYhxqMUQWlTp++7iGIZaRQTDF9u1hVeqR
 TT3av0E9No54cjKibjpChJD/w0ZvemGjtBG/G2LaFMwDbyszHjFJgf/luNylv0jDn62vuP2ylC
 Wq4=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503260"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:41 +0800
IronPort-SDR: PuVeuAkNb69TqRXo5cyHJeETWr9fkswnJkTJ1n1bL6vkmqsj28kt6IdIbUpMYVH7n0gfNezaST
 ziozp2KTrr/amJHAr+dcjnrnR3QrHw1VS2zUTHH4V22SvoCP+zTkeCUsimfR8yhvRtMEqCfmC+
 Auz+6docYkbD4opKpFmfAMZLUYwZ7nkCFqt5ePBP26LEscfOuUjYXk9npV+lBtE+9oHDT/Qfwl
 SPZWrQnQApTslI1QMKtxR9aRBA4nGYm4IhrhBnb+TUnvxHK8HLCICZoUPs2a0KsGrMtOPdzuQj
 ZqQpZ3siOMuMpWs7q1ftvPGc
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:57:07 -0800
IronPort-SDR: GO2Nb81Njuh7n8ZTGXQj1eZ804q2giD54zoHuEOC4VFCegqvcqGZNgcgc3fHio+ZKi9oyU7iXP
 sqSnlxF06raz9BI9t6r9Ux57PhATuSm4GAXwXtoSRDDP6kDFRn164auqM1UCIPxYHVmBDnbT7j
 FoEeMU1Bmy+ZBSwJ/xAa0KcFY7+h3y1w7W/DoOdflNCYJzXECFh/Lj0OUMVXOPRdEH9o/3gEg3
 q8VpCTAaA2EPqx75+dB7SX9NAwoKjFuT9/IUIAQOW55A6lBCwlgJda1cLotFekd3gDGGWLNef2
 E5Q=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:14 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 08/16] dt-bindings: add resets property to dw-apb-timer
Date:   Mon,  8 Feb 2021 08:12:48 +0900
Message-Id: <20210207231256.115130-9-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
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

