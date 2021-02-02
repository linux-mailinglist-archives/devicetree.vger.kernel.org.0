Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F412530BC2A
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:39:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229537AbhBBKh4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:37:56 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35924 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbhBBKhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:37:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262266; x=1643798266;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=0gydr514UdHfaLZyMWZlPzEDnEe7NJxvNWRTRtcTWlQ=;
  b=GGw2YN0rOWcRNyWMNb6XHuZ6X1rzX3e41emPqmfQOmCCLccNxEouIFpT
   mRT1vknA369U9jM4chnvB9+NzOZqc584lvIUdRJJwnzq03QyKyOT5HESi
   M2hMWzdpUZ3X8UTaTpa14QBaek/Kq1Tcpz/uUQFAJ3v2lX+D+sGWAjJH3
   2D9xOMRIT7NhNkGmJbcqBhGhFAfJxbQMDJDhlZRjqgewdzttwRVuQPyVj
   XgvQKJelW86fXMtmNTYen9wRh/x+ICWM/GQB1fWsGk+OQTeLWkkl6M8Lk
   GX/MahI/Uy+hSDt8ATI3y23XU93gcCThSFw/Ujqroc4dV75IyoQnGCmHT
   w==;
IronPort-SDR: 2jz4diBmzQi1AzA1GwTj0qAdaMsC+iFxH46+RKiqWb15/db5BIZI6LVgq952yeIu5u2sfNVTed
 j45jrT8JLnis3Rl1bWb6bOs0MHpxyO7V5bTlFd0H52k+rV0S3CeLVUeaeBJ2SD+/B0WkvEKryT
 5U7hwoXehW75zfK7op4P9oLNzqCPdDnTQ2IrMZSBMQE2vdGv7ok3ueZ61RkTKnuJ4d4sXIQGFj
 +2tbvw3MoHvUhOnQvsz7h7peQ8FvuQtpOANWrvHAnhGAmEfrl5rzbE1CBRB0+0++nIrjh+FjfP
 vAw=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092487"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:36:41 +0800
IronPort-SDR: Q7evx8uyBnrEFO2g09f5TmVByC38dQoAvmUauhwOTgbSUTNyZUCubj2dAsDt1U2648Kdymd7s8
 59y5kZi4yNGUs7oRsl4oc4T9cseGqfK0JnPxPSfDsx7VQ3Ba1D2YzVEOhRLQcQl7f8jNbaT8rH
 zHIo8j03MKO8iPjKfuoLLCzS4leUkZ18JmAyDmiZVH2irJwmOlRUBP6HosyH79fr/J/lz7bpE9
 /NxhqlkOD5DpuCKa8GpWXSy98fiyEB98cJlI3JrbonBd3gSj1T8CC6MlL5rUa6m4OTtvq5CeZn
 /jKGKH+LRxnDVvQH9E/gpqKF
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:20:49 -0800
IronPort-SDR: O/5YLX26xHBHZ47wxLB98AXixV5nwPdFuDDfOj0UjPef28lyhWd+9Na61rFSsdMXkZqbGYg03E
 YttiLsAChJNdrGmXdEzxSEG6PaBHJZG4IHZfsABfg3rdC634tWvZ+hWk3836Iz4Cxe5I1jEht2
 THbuFT3FZPz5lQ69XsnqryR3UyH7UftP9s0gNmazL+Qm9cyZOGdkUequmDiTV74C1vu/8bkTfw
 +GOlIOCy8S1a2PPWoS6fUjHMo6PHm7qX57kL6RniQfOULdZpayTgmWcH+RdlM/8MTq9+20cdGv
 g2Q=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:36:40 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 03/16] dt-bindings: update risc-v cpu properties
Date:   Tue,  2 Feb 2021 19:36:10 +0900
Message-Id: <20210202103623.200809-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Canaan Kendryte K210 SoC CPU cores are based on a rocket chip
version using a draft verion of the RISC-V ISA specifications. To avoid
any confusion with CPU cores using stable specifications, add the
compatible string "canaan,k210" for this SoC CPU cores.

Also add the "riscv,none" value to the mmu-type property to allow a DT
to indicate that the CPU being described does not have an MMU or that
it has an MMU that is not usable (which is the case for the K210 SoC).

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index eb6843f69f7c..e534f6a7cfa1 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -39,6 +39,7 @@ properties:
               - sifive,u74
               - sifive,u5
               - sifive,u7
+              - canaan,k210
           - const: riscv
       - const: riscv    # Simulator only
     description:
@@ -56,6 +57,7 @@ properties:
       - riscv,sv32
       - riscv,sv39
       - riscv,sv48
+      - riscv,none
 
   riscv,isa:
     description:
-- 
2.29.2

