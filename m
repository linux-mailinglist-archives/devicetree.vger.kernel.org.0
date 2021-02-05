Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC204310552
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:01:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231328AbhBEG7s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 01:59:48 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41747 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231221AbhBEG7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 01:59:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509482; x=1644045482;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Psza/nTy12u4z4eFovqg8PCnJ6Lt4zZtRvlW1Nk85qs=;
  b=ZqfAZQ2Cq4qJr0Tig3Tzf5dYDnyvkv0drOARj7t1h7/O7CqGA+hP++sm
   +EdMAGQkfkGkplew3e9EhZeot1/rRecTBSlYcKuBKxpquwHikpzFDHWxT
   zgwETkOc05nC45EMAbYhiwj+XZDQNqCqzOlEXnNkNlOcEt9qOqnyTmmN9
   7zReUDRMq1ladDJgCSwboKJFCyIW6vOmKk3PKDwwv/NK0aFNQPhDanZqi
   kvrJrAY4bGRDtZ+Tm4e4Q7TWKXqQJ+CVM6/3nqQ4Yj4PEBS3TbGQqXjy7
   zCotsJCdDxO4gYvBdkwKdAWPEIHdhHjo7j9K0bUPesvdOkSk6w/XLcjBM
   g==;
IronPort-SDR: Of8xLOjVPnq/K/mxtVZF31FVsLPusGaMryElzvD6CHODXwd7QoSMFodjKdHmGB3RjCTfBRUtgj
 lG7tIJ8qJuNUvvz/t1HeZMzt0E7fGZiBZ1Cms0iSGvXeEQg1P9X56RnJEfkmundvFiZyiOzHvx
 Ev5saFAD82/kigg72piVHRGcvpL81oRXQxp/jRbtpUO/pEd5c913EhatxBo2GyQY3Pf2UVwztF
 4InFp38LYE5gcfekHmvNf4Aed3apEytjqMuxvD4WfM7QGpBp/TdMPUOyhtgfnatgxssfCQd5PE
 egE=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312044"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:23 +0800
IronPort-SDR: qrl17j/KK2lRYEQjH9CBVbMihjangAipf//2qVoSBrvwTt8pU0OOPnA6oyXmf1P7Iboq8IEpWk
 TmXlTcTvxMXIoUFhDmaluPnVk+CcElykxNCylzfCm/hpu/8agKWydjJSNZQ/t1HCnrxeocxbx/
 34KiterWdzdp9ZZd1LG9W+KpD+Drpd6/L1y7MwlProOhHFSMNJBwUB3Fpx2YuKrdd5ZOT7BE4n
 +YfQr5mmu7WNxIuNKoEhyrWTpilXr/h791jQxbAFut04VEfLcfjogxoaXSN86/gqczQZsUX3lq
 iFioCdalrBmE557k86IzW5Kh
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:41 -0800
IronPort-SDR: 4UQThxBkXkhPrN7IK9i+5fbRZ1hgfICpWMDU8lbTR4LtD8JNjkR97Xf2hAG11glW/2tlNj5/FA
 lkSw5GIuPTbBIF+576TQtbZ6YJbzlLSBWeb8VBFhWFUQJGOTelk7v+zbLjU92vZFJwLavbSkUM
 C5MlbHf3OgdX7PKpvm731Z9U0XdYdMQosik9Ffso0xI4e6wZ+Ua56e5+eaBDsXcQG8b90LcH1x
 4S9+iA+n2NHfz6h2ogxJvyyH7veYMODYrWxtHDGbMGq7uFEosx7nCNYsO1EnKSOJEKrZy0T61X
 x+w=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:37 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 03/16] dt-bindings: update risc-v cpu properties
Date:   Fri,  5 Feb 2021 15:58:14 +0900
Message-Id: <20210205065827.577285-4-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
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
Reviewed-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
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

