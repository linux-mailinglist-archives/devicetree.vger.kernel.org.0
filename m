Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54E8D567735
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 21:04:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbiGETEw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 15:04:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbiGETEv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 15:04:51 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2746B13E9B
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 12:04:50 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id v14so18872100wra.5
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 12:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rNypS/Ps1CBWBgjYuZdy3z58WPT5M3xoTeMQ0thxPjc=;
        b=IxTJoMz0nCrBnES3le7XtC6QWHQBYzxQdxKrvgrWHHQ1Eqc6fqgsW1Je3s5Eoq1Ukx
         nHZxm1tjHoLxqasEAqolPgRSjl5KYLED1gpKJ2vbMN+EOV/8yClDbEN5oI6UHMb6O6Qe
         AUkZWIiUoqelRGWJaqIXpgRys7uRJWzBTleJt20vBOX48UDE1pPFHyLDvGEZ0k69hv+s
         5aVTdO4rMNMtHShXzFEuVzVr/kHcOrJxmfh5wtqK5xMfXNGI7eOUdkbmgJ/sPBWqt8/A
         y0JIv4b/uLHPz8S7qPM038/r0Ev5FKHflxeDn1VwIMObPciof1a0sUlCB8iG5HbX4KpG
         9epw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rNypS/Ps1CBWBgjYuZdy3z58WPT5M3xoTeMQ0thxPjc=;
        b=FdMhlttS6Gskcw9hluhgdpnPlLOHjQ7dGkJOGnKsgI4u3cf9iZBiFOUeU2RSpTbtrP
         jqs71x8dORhRNsbEP4URNW0Cv+9h0z2kNs8IMRJpja0ognYpyYBQx4qpqT3O9DaRCZqD
         njEPmdMm6CxRRch87p+Yu6wfkOKiKQ2zc8wHN4xWKNWKSpdEivmVNodXAW5goMmUx8NY
         NsyzB3kyJ6eu7Tqcm3gyYQtyRj7fbRfgIumFWvOgNywTcduf8fEM1tiuL5QMlKCYPZ1K
         wDTTWIiazuK4YoAOd8OV3RLBaEm+Ce/kvi5MoevNDCjtfNfc28xmDceTu9tzaFHzuxIj
         nONA==
X-Gm-Message-State: AJIora8GXOCMXgpsHXbrFbBS4T1hEBIW7OsyHe1K94Mr8wr17Aqo+efN
        TEHwYOuq3z3Hr58x8mwrmBGrUw==
X-Google-Smtp-Source: AGRyM1v+pz/4/WniSytkHRMrvOxqQ4ODFnWcGJAOF8n1YlCXqvGhgw4JSjMjHyUc5qatO2N2ueFCww==
X-Received: by 2002:a5d:6d06:0:b0:21b:c433:d1f6 with SMTP id e6-20020a5d6d06000000b0021bc433d1f6mr34255767wrq.717.1657047888610;
        Tue, 05 Jul 2022 12:04:48 -0700 (PDT)
Received: from henark71.. ([51.37.234.167])
        by smtp.gmail.com with ESMTPSA id d7-20020a5d5387000000b0021d5c52f4b4sm9912961wrv.34.2022.07.05.12.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 12:04:48 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Zong Li <zong.li@sifive.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Jonas Hahnfeld <hahnjo@hahnjo.de>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, Brice Goglin <Brice.Goglin@inria.fr>
Subject: [PATCH 0/5] RISC-V: Add cpu-map topology information nodes
Date:   Tue,  5 Jul 2022 20:04:31 +0100
Message-Id: <20220705190435.1790466-1-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

It was reported to me that the Hive Unmatched incorrectly reports
its topology to hwloc, but the StarFive VisionFive did in [0] &
a subsequent off-list email from Brice (the hwloc maintainer).
This turned out not to be entirely true, the /downstream/ version
of the VisionFive does work correctly but not upstream, as the
downstream devicetree has a cpu-map node that was added recently.

This series adds a cpu-map node to all upstream devicetrees, which
I have tested on mpfs & fu540. The first patch is lifted directly
from the downstream StarFive devicetree.

Thanks,
Conor.

0: https://github.com/open-mpi/hwloc/issues/536

Conor Dooley (4):
  riscv: dts: sifive: Add fu540 topology information
  riscv: dts: sifive: Add fu740 topology information
  riscv: dts: microchip: Add mpfs' topology information
  riscv: dts: canaan: Add k210 topology information

Jonas Hahnfeld (1):
  riscv: dts: starfive: Add JH7100 CPU topology

 arch/riscv/boot/dts/canaan/k210.dtsi       | 12 +++++++++++
 arch/riscv/boot/dts/microchip/mpfs.dtsi    | 24 ++++++++++++++++++++++
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 24 ++++++++++++++++++++++
 arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 24 ++++++++++++++++++++++
 arch/riscv/boot/dts/starfive/jh7100.dtsi   | 16 +++++++++++++--
 5 files changed, 98 insertions(+), 2 deletions(-)


base-commit: b6f1f2fa2bddd69ff46a190b8120bd440fd50563
-- 
2.37.0

