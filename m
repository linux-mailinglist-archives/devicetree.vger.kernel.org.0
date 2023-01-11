Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43DB5665BA6
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 13:42:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231747AbjAKMmT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 07:42:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbjAKMmS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 07:42:18 -0500
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C125E5
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 04:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1673440935; x=1704976935;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=pq+rQQcA4VRLiAd2uAByro3JX2cinbE3qzl2fsix2yU=;
  b=awqGaXangUZHX5Ej3K1O6aIvhv3CWx7TTEFQvkbuF6xn07BAYWtF18yz
   KzgoFMgdVWOTUZYgNfL7m/+vX/tzlp6QJgf1sEPsB0A0HsDoDxaZTNL9p
   AwSlJakkPB3oNYBD5/fP2VSgsg4B+R7Bt0+84onjhsfyRKcix28geCnMj
   YnPI7+3sUhZygVfi76ObDyTHZCOqGkV8Yk3FOQKhcZowHmDI4iT+X2GZ6
   z4xt8Cf7xPM7vKN4fWSoJckz8A3n7Ibh4nVW/2XrH1FLsPo1DCRFKbOg8
   abdMUShzOi0ydYXhRPKHueB6B6flrRbvpB3zX+FEZy87Zq7HNt/74usjo
   A==;
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; 
   d="scan'208";a="195258637"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 Jan 2023 05:42:14 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 05:42:08 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.16 via Frontend
 Transport; Wed, 11 Jan 2023 05:42:07 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
CC:     Daire McNamara <daire.mcnamara@microchip.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: [PATCH v2 0/3] Add a devicetree for the Aldec PolarFire SoC TySoM
Date:   Wed, 11 Jan 2023 12:41:04 +0000
Message-ID: <20230111124106.2417152-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey All,

The board has 32 GB of DDR but the DT I have access to only has a small
bit of that mapped. I tried accessing more DDR, but it was not possible
with the FPGA design as things stand. I'd rather have the devicetree
match what the vendor is shipping, so left the design/DDR as-was.

Other than fixing some minor bits from Krzysztof, the other change is
that I dropped the PCI node as that doesn't appear to be mapped.

Thanks,
Conor.

v1: https://lore.kernel.org/linux-riscv/20220906121525.3212705-1-conor.dooley@microchip.com/

Conor Dooley (3):
  dt-bindings: vendor-prefixes: Add entry for Aldec
  dt-bindings: riscv: microchip: document the Aldec TySoM
  riscv: dts: microchip: add the Aldec TySoM's devicetree

 .../devicetree/bindings/riscv/microchip.yaml  |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/riscv/boot/dts/microchip/Makefile        |   1 +
 .../dts/microchip/mpfs-tysom-m-fabric.dtsi    |  47 +++++
 .../riscv/boot/dts/microchip/mpfs-tysom-m.dts | 165 ++++++++++++++++++
 5 files changed, 216 insertions(+)
 create mode 100644 arch/riscv/boot/dts/microchip/mpfs-tysom-m-fabric.dtsi
 create mode 100644 arch/riscv/boot/dts/microchip/mpfs-tysom-m.dts

-- 
2.39.0

