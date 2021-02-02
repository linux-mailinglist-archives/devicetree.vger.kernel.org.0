Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B500C30BC2F
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:39:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbhBBKip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:38:45 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35915 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230013AbhBBKil (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:38:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262321; x=1643798321;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lZzHJ95UHiDhalCyr0UWnRyqs9+D5T06N5O98Kg5LfU=;
  b=lDCFTlncB00MHPYd0WD1/abaPPi0arJk+UTzkYhOFEgo3+qC0NzfgM7/
   +csP7AoWZBUSuVClymPe4OSouW1cipsDXqW8AhZkhy6S29OhngH4vogEK
   yFPfhlvJ4hv2mnQgtiKYtRBuYVuisWAllpnq+XCiSstvWqmVWAFsnEOYV
   1nspxX3vaxDipy830b5+T1kQYxxliESA7pusY0lmIxidlNvehfzFW/kT+
   Pg2Evi89nI1Q2dTYvnUq7sfDRsYlgyRsDlZdWNDDbH/NitCE8UyNH9YhA
   umIZbnYfDiYbXANYAUQiIq0oOWToXI9I9vV7IHTQfuSWj450zQh33d9KU
   A==;
IronPort-SDR: 2l7B5Uc2NQt9fzAajD5d/t/0bYngfgYOEo8g52deCdhkrqp3Ms6ka95EsotrnKjqgI7+aFJ/Vs
 470JqRhX4dgrqhNULw1LClOxPiCuoyCr6NtHKU1khG23wiYOn6g8CYZcp2bifaWLOLfKIuxd6B
 6gJGb/uOQvI+XavMuWCJdPLQ/3FcKpY/pzY3hgYQffIxBJ48RujWPPVC7N3rEpPsveLunluAzq
 NmJIP7RJsDig2RDwKIkua3za0EQpSMRyZOhQfcSptLnf4upZk61RHoif0HFn+/lfe614NLsLaV
 DLg=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092495"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:36:49 +0800
IronPort-SDR: wfrcH6IkDsgLlDpsp9ZL29WrZESYXE/EulnWp7gFSGPASPJjAlSAF6a+zQFjgZcdxxlko6W1xO
 XXXTyJrec0UQ0FcaHyNdAnT+F/7CpVD8E2QS6Gt/Q1hslUgLj+/tivp6HKEpU5U5TDhDBex7D0
 ZJN4JpJhmAKcssC64dGePDOshaqbu1fo8oy62g0urbU08m1mEuI7fPVmGA8NxkFnoqFCrSSPzN
 hMaufCJZYXKbGOl/HuS4nWF3zNUp8zv5lHqXqenn4saUYU7MLxbSETW/6wk2NgfHWntBBafSl/
 OdS7nK/DkRwY52XplALOq5J6
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:20:57 -0800
IronPort-SDR: 0lA6LR7gBPjdNLgp5sgJDJIbEW0fvtyG/PC6OgQ1I0ezvpNWTALCLvLFcXA+CrI4Bza1bW4xTv
 hTBIbPHtJWUE1AKwHGkR4E+Zc961KfXehCu35vlcqCdrHL4idAbVTXzliHe0nOMHPoMtgFWKNJ
 FHiiDxlP8E5933Ar8534rTrXHO8ZKStt+sDRXIAwWFc1t2Gzr7hv/v7YIsHrnE5EE0MnodpUDo
 iEF5fKmOM5b6YVk3buZ3yyyqfB/dOGYbqKGw5L6oCQo+vc5Guv+9msUhNOx2ZM8zRx6ZzpvcS0
 dsY=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:36:48 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 06/16] dt-bindings: update sifive uart compatible string
Date:   Tue,  2 Feb 2021 19:36:13 +0900
Message-Id: <20210202103623.200809-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string "canaan,k210-uarths" to the sifive uart
bindings to indicate the use of this IP block in the Canaan Kendryte
K210 SoC.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 Documentation/devicetree/bindings/serial/sifive-serial.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
index 3ac5c7ff2758..5fa94dacbba9 100644
--- a/Documentation/devicetree/bindings/serial/sifive-serial.yaml
+++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
@@ -20,6 +20,7 @@ properties:
       - enum:
           - sifive,fu540-c000-uart
           - sifive,fu740-c000-uart
+          - canaan,k210-uarths
       - const: sifive,uart0
 
     description:
-- 
2.29.2

