Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA206EF288
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 12:46:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbjDZKqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 06:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240567AbjDZKpr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 06:45:47 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E6FD524E
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1682505896; x=1714041896;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=rASUDUjAMobSHY+COftalHdmixChbCCB8oDf4dP/C0E=;
  b=c9cy3HjADrPly3josF+d7kd1j9E57+6kj/sJhCg4Zf32YVOrDeIaiU0d
   PV1LkYauaOH5uGAihAuaEgyFZQkq/uV7K7xrBBHB0pkeVvjaMmiylDBZC
   pHA6nVT7TpQvCb5ZO1oD1PiQduQUpXa/5Um418e8qSO611QQe5GckVZgJ
   N5S/OxCp1owEz92SxwdFR3+6KeyK9EfuMxzN1uvIxd2cfILHBncjOMZH7
   Zon/PiOmmRC5IpJ6PiwkmkSMeX9shDLqN9JguyXUDEdotBWVjXsk0ZXs1
   IGSVWSgjfkKT1MC3dOxcOMvjcPWYV+a9U2BV+9sRmMKCQFPdgkjw3s65U
   w==;
X-IronPort-AV: E=Sophos;i="5.99,227,1677567600"; 
   d="scan'208";a="212354507"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Apr 2023 03:44:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 26 Apr 2023 03:44:07 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Wed, 26 Apr 2023 03:44:05 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     <palmer@dabbelt.com>
CC:     <conor@kernel.org>, <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: [PATCH v1 0/2] Handle multi-letter extensions starting with caps in riscv,isa
Date:   Wed, 26 Apr 2023 11:43:23 +0100
Message-ID: <20230426-satin-avenging-086d4e79a8dd@wendy>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1187; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=rASUDUjAMobSHY+COftalHdmixChbCCB8oDf4dP/C0E=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmeDJ7bVm6b18rGoHN4SY74xpTnmy3/PuNjiZpenZYlGCLC /PBqRykLgxgHg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTAG6yGiPDa56oc9+OxpwNOviC1fX8nQ 1Ljt++GR2W7qz5PGPV8SRtZYZ/yjXF3XMX7K+dU51x+YGvuUzoxJnp68ssZF6Hys2341rLAgA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey,

Following on from [1] in which Yangyu reported kernel panics for a
riscv,isa string containing "rv64ima_Zifencei", as the parser got
confused by the capital letter, here's a small change to the parser to
handle invalid extensions starting with capital & the removal of some
inaccurate wording from the dt-binding.

Cheers,
Conor.

1 - https://lore.kernel.org/all/tencent_1647475C9618C390BEC601BE2CC1206D0C07@qq.com/

CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Wende Tan <twd2.me@gmail.com>
CC: Soha Jin <soha@lohu.info>
CC: Hongren Zheng <i@zenithal.me>
CC: Yangyu Chen <cyy@cyyself.name>
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org

Conor Dooley (2):
  RISC-V: skip parsing multi-letter extensions starting with caps
  dt-bindings: riscv: drop invalid comment about riscv,isa lower-case
    reasoning

 .../devicetree/bindings/riscv/cpus.yaml         |  2 +-
 arch/riscv/kernel/cpufeature.c                  | 17 ++++++++++++++---
 2 files changed, 15 insertions(+), 4 deletions(-)

-- 
2.39.2

