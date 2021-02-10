Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96155315E84
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:04:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbhBJFEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:04:30 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20609 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbhBJFE2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:04:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933469; x=1644469469;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6K57gJ4d4JJEae1PJW0yBIWM0fdObKVyG7NMETneATc=;
  b=gUhcyyij+ds5p0vK0dW/I/Kb8JLc7J2u3DdVeSG8rA3ECLj+ljodVgeR
   Md0Oqz/78fq7mL+Api2OdiUVt5bC8BL4rdT1UaPV78hpoGKrWN8QpjPls
   WBEmSpgGJELWJ77FXy+wkPWfiowhvlBrrXGNbREoHBbSOEnehXm5W5OAB
   qisPCdwT/bxyl6WFj7/KwjopwRh1VYmM9u0fzJag6dYT+7R+AkZyQOHkD
   FbYjAdqVb55cFnDY335iTCm2t/EXTVoZGkQDJy7RdjOB+hjUZ6aOJRiPM
   dUzNe35M8vD+4pV1wrGm9BUQbD/Z9SZMdrRJJgOCZYPWmqn/RiQo65luM
   g==;
IronPort-SDR: 2NsxU1Tj4r7/METBc7wfCuUiR2AjgTcwDYhHAeGoQdB2cn1DCx9yhUBTRQSRHPVxu7cRi1fBH2
 uH5nZZrLuAklkWHORSfueBiBsPBrwoNvvO/CqdphjQpL6SJgbA/w4b+O9EVSgcwtUnhU33Kohw
 r2Qsg9pmYUfKZ4Om803YZUO2EkxyRK2PVOdcWTip6xUalKOkRhJo7jLJ0TQSo64QHwrWdPhZzR
 PdKu3WPAZLnZinNnlSKJ+2EqFOVCdYmLisLaUIjl+5L4obbDFI3Db+rLsb7/eFc7VGDcDed6U9
 eRA=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775808"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:45 +0800
IronPort-SDR: cMs5HJNwW0CwHTKI0fgL29wLGdFC0x9hhCiKGQfQnCqJim0Unjs92E2Z91/a/e08rOl/PrwZ7G
 DcI5ZRJ/EK67VgxeuU1SPEVOw4c1gTUrocR+xHU2xcVmgwCligBw1s+oj102VsTTunkRFjsMvt
 jctFjBQuFY/AJLJTqOMx+esPkOd8T5c+0nxbrv0M1fvphL5TOYw5Ic6e/6NCpYU3MhCP4R3Cyv
 MxEeK6ulG7xL/H7vmyR2RRVdsB7RYkg5sy9V6rzAn+1susdSH/WvAV7Mb+TSfV23rh3o5KlgYL
 jhz9uU9GRjDwg9PA5RehRocm
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:37 -0800
IronPort-SDR: TITWKvSN19c3WNW5f5rorrmo5m5zbFm2KO5kAgK0rfPO8BtfjNhipHZAazDySqj8mR78HptrFK
 MNzogvfUqAnhOkyMoPEXgG2WzWU6Ul0fjbU5H+3pUJWp6iZjYtEgRD5y480M5KupPAXEnnbegF
 mgCxsBRr/ufGnQcF56gZFCHxDh1VvmpFypo6eA4SO+qJgJ6vu9rn1icv3NwdaoDY8hbsudRu1J
 jXClDkxCL7fKFIS8FaMJelcm/qUEkf9hIIo1VTxqquUfOsjBhIeKKSLUvUWwCAZ99v4P7ByXuK
 ETU=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:44 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 04/17] dt-bindings: update risc-v cpu properties
Date:   Wed, 10 Feb 2021 14:02:17 +0900
Message-Id: <20210210050230.131281-5-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
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
Acked-by: Rob Herring <robh@kernel.org>
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

