Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD11C2F9795
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:06:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730944AbhARCGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:06:01 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:23242 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730940AbhARCF7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:05:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610935559; x=1642471559;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=CN0WY+YBp4RNoOYHuHqovxX2R6rFlSK3nLo4F3hEm8c=;
  b=EfNNdOXrX+ZwTjAedsMWU4YXmH+o7dDOb3nIvf56NKJpAWOh13sG8Rdj
   JoVai8Rm4Rss6XlHoz/euiCnDgAoIP/GQdbi8lVxVumeZTxfRX2UEUgH+
   MCpzMYVTIwh/qE5C7GegH/m5VZVhvbgRKfRBbM3WA6wwQHM1Ihj3BLia7
   Plk4rgIUpZMuwJbeQlhyBOzuEMn+lfp0TQ86KK9LooVtCKXUgGqTTe5Xz
   3bu9PDksoHEsuue7RpaCD3vLVwPiifpHtFplfusLq5phIKP6+9goY0iQ/
   Xqq+bvsBqIsi0IA+KfvPV8XC1kiLnM+ZP+1Vm2eBQhjn+ccNT0Rr8LZGZ
   w==;
IronPort-SDR: ke9oLEVfYgSKnjuu+jg+/fHoD+roaOi3jVmhW288qA2lplGbVDL4I8SdBfwPGoZoZJReRtOCXD
 xbOOpFwfxOMb4TyIbFt4Oa4iBs1iZebkma2vFuMYXhzr/UdZwKlPMsuEj7qB68lsDLto/08FUl
 9qWZeHXib7aokdDKztaphqGfdBaE4HL0qeZ6cszXHfa3VHINWxZSn7bvanxKlUzNyNlxxA958+
 sWPUqTGhbe5BZEWv1asKfijQC3i3mQDY9UzMuqiuBqzEHHvxY8tr9v/PqcqxRk9Mn4J7GliRnf
 2W0=
X-IronPort-AV: E=Sophos;i="5.79,355,1602518400"; 
   d="scan'208";a="158840889"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 18 Jan 2021 10:03:14 +0800
IronPort-SDR: qUT1LzVytVlhEorsUYIHU8h07WFlOxf+hdKFoykKYnyO0Pacbs57BGM8tgM5zzSj5CCwmdh4a3
 QMQLih7d7bEt3sxQGBLpTIvjWpY6Z5fzE8/o1lF09IlLnnr7GdgXve8kdSyGSfpv56IFr8ySYL
 oslfAedq/VDtoKQoMkijvDq9REDr11doCpMv8sKtOb4ZMk9FGAJLnfc3D7d541doZKl7lqEm/a
 1mumbC80C7RUZZZW3mV13PBQ8+r5SI91uVKfOzBfGEcZLuvfHdEbjpH3uxdFnMvXbdr6RsxNNB
 QvfzoeOEJ0cJbyQyYwlyjil8
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 17:47:52 -0800
IronPort-SDR: 0Ww+WspsWKqiL6scSyttJ7h5YcUOy30rm0T6J7XNY3hK+Q3rrPY+mCm8F9m2U6wkiKKz+EdO3x
 VHaiHoB2BsjRlmf03gAVfPFneIa+YeSvoc1jdLBSEjIclvcLd1CSaM3LiCPE+qV+p15px0BlTl
 FePKlcAYXcvGKdCc9nncgoY5jHLCwwSC7voWj2hhWpxBMcihIa+4nCR2pnmJXZrQJjmNtJZ6yF
 VUb68H+E41kngRKZwMGoBk3HzDOgacD1pcSNMWa9pjnWgbroASGkGsoW+kdTmfPl3do5aFJKaq
 ZY4=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 17 Jan 2021 18:03:13 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v13 09/17] dt-bindings: add resets property to dw-apb-timer
Date:   Mon, 18 Jan 2021 11:02:36 +0900
Message-Id: <20210118020244.103451-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118020244.103451-1-damien.lemoal@wdc.com>
References: <20210118020244.103451-1-damien.lemoal@wdc.com>
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

