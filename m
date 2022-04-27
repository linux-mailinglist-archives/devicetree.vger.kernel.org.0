Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA20F51159C
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 13:33:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232680AbiD0L3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 07:29:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232644AbiD0L25 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 07:28:57 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0B6BF340F4
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 04:25:47 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAAFCED1;
        Wed, 27 Apr 2022 04:25:46 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F4133F5A1;
        Wed, 27 Apr 2022 04:25:45 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>
Subject: [PATCH 00/11] dt-bindings: convert various Arm Ltd. IP to DT schema
Date:   Wed, 27 Apr 2022 12:25:17 +0100
Message-Id: <20220427112528.4097815-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

in an effort to get the FVP DTs to pass the automated DT bindings checks,
this series collects some DT schema binding conversions for various
Arm Ltd. IP devices.
This is mostly for old IP, but it's still used by the FVP, for which we
have a DT in the tree.

Please have a look!

Cheers,
Andre

Andre Przywara (11):
  dt-bindings: iommu: arm,smmu-v3: make PRI IRQ optional
  dt-bindings: arm: spe-pmu: convert to DT schema
  dt-bindings: arm: sp810: convert to DT schema
  dt-bindings: sound: add Arm PL041 AACI DT schema
  dt-bindings: serio: add Arm PL050 DT schema
  dt-bindings: arm: convert vexpress-sysregs to DT schema
  dt-bindings: arm: convert vexpress-config to DT schema
  dt-bindings: display: convert PL110/PL111 to DT schema
  dt-bindings: display: convert Arm HDLCD to DT schema
  dt-bindings: display: convert Arm Mali-DP to DT schema
  dt-bindings: display: convert Arm Komeda to DT schema

 .../devicetree/bindings/arm/sp810.txt         |  46 ---
 .../devicetree/bindings/arm/sp810.yaml        |  82 ++++++
 .../devicetree/bindings/arm/spe-pmu.txt       |  20 --
 .../devicetree/bindings/arm/spe-pmu.yaml      |  40 +++
 .../bindings/arm/vexpress-config.yaml         | 274 ++++++++++++++++++
 .../bindings/arm/vexpress-sysreg.txt          | 103 -------
 .../bindings/arm/vexpress-sysreg.yaml         |  89 ++++++
 .../devicetree/bindings/display/arm,hdlcd.txt |  79 -----
 .../bindings/display/arm,hdlcd.yaml           |  91 ++++++
 .../bindings/display/arm,komeda.txt           |  78 -----
 .../bindings/display/arm,komeda.yaml          | 130 +++++++++
 .../bindings/display/arm,malidp.txt           |  68 -----
 .../bindings/display/arm,malidp.yaml          | 117 ++++++++
 .../devicetree/bindings/display/arm,pl11x.txt | 110 -------
 .../bindings/display/arm,pl11x.yaml           | 174 +++++++++++
 .../bindings/iommu/arm,smmu-v3.yaml           |  21 +-
 .../devicetree/bindings/serio/amba-pl050.yaml |  67 +++++
 .../devicetree/bindings/sound/amba-pl041.yaml |  62 ++++
 18 files changed, 1142 insertions(+), 509 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/sp810.txt
 create mode 100644 Documentation/devicetree/bindings/arm/sp810.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/spe-pmu.txt
 create mode 100644 Documentation/devicetree/bindings/arm/spe-pmu.yaml
 create mode 100644 Documentation/devicetree/bindings/arm/vexpress-config.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.txt
 create mode 100644 Documentation/devicetree/bindings/arm/vexpress-sysreg.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/arm,hdlcd.txt
 create mode 100644 Documentation/devicetree/bindings/display/arm,hdlcd.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/arm,komeda.txt
 create mode 100644 Documentation/devicetree/bindings/display/arm,komeda.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/arm,malidp.txt
 create mode 100644 Documentation/devicetree/bindings/display/arm,malidp.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/arm,pl11x.txt
 create mode 100644 Documentation/devicetree/bindings/display/arm,pl11x.yaml
 create mode 100644 Documentation/devicetree/bindings/serio/amba-pl050.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/amba-pl041.yaml

-- 
2.25.1

