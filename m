Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FE1F51D9CF
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 16:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1441985AbiEFOJ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 10:09:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1441989AbiEFOJY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 10:09:24 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AA4C160064
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 07:05:39 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7424F14BF;
        Fri,  6 May 2022 07:05:39 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E5563F885;
        Fri,  6 May 2022 07:05:38 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 00/11] dt-bindings: Convert Arm Ltd. peripherals to DT schema
Date:   Fri,  6 May 2022 15:05:22 +0100
Message-Id: <20220506140533.3566431-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this drop fixes the review comments from Krzysztof and Rob (many
thanks for that!). Changelog below.

=================
In an effort to get the FVP DTs to pass the automated DT bindings checks,
this series collects some DT schema binding conversions for various
Arm Ltd. IP devices.
This is mostly for old IP, but it's still used by the FVPs, for which we
have DTs in the tree.

Please have a look!

Cheers,
Andre

Changelog:
v1 .. v2:
- all: fix indentation in examples (4 spaces)
- all: drop line break preservation in descriptions
- smmu-v3: tighten IRQ ordering to only allow certain combinations
- spe-pmu: move new .yaml file into perf/ directory
- sp810: don't require fixed clock output names
- sp810: explain optional assigned-clock properties
- pl041/pl051: rename binding file name
- pl041/pl051: use generic node name in example nodes
- vexpress-sysreg: specify additionalProperties
- vexpress-sysreg: disallow uppercase hex letters in node name address
- vexpress-config: specify additionalProperties
- hdlcd/mali-dp: use properties/port instead of $defs/port-base

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
 .../devicetree/bindings/arm/sp810.yaml        |  80 +++++
 .../devicetree/bindings/arm/spe-pmu.txt       |  20 --
 .../bindings/arm/vexpress-config.yaml         | 285 ++++++++++++++++++
 .../bindings/arm/vexpress-sysreg.txt          | 103 -------
 .../bindings/arm/vexpress-sysreg.yaml         |  90 ++++++
 .../devicetree/bindings/display/arm,hdlcd.txt |  79 -----
 .../bindings/display/arm,hdlcd.yaml           |  89 ++++++
 .../bindings/display/arm,komeda.txt           |  78 -----
 .../bindings/display/arm,komeda.yaml          | 130 ++++++++
 .../bindings/display/arm,malidp.txt           |  68 -----
 .../bindings/display/arm,malidp.yaml          | 116 +++++++
 .../devicetree/bindings/display/arm,pl11x.txt | 110 -------
 .../bindings/display/arm,pl11x.yaml           | 174 +++++++++++
 .../bindings/iommu/arm,smmu-v3.yaml           |  16 +-
 .../devicetree/bindings/perf/spe-pmu.yaml     |  40 +++
 .../devicetree/bindings/serio/arm,pl050.yaml  |  67 ++++
 .../devicetree/bindings/sound/arm,pl041.yaml  |  62 ++++
 18 files changed, 1144 insertions(+), 509 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/sp810.txt
 create mode 100644 Documentation/devicetree/bindings/arm/sp810.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/spe-pmu.txt
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
 create mode 100644 Documentation/devicetree/bindings/perf/spe-pmu.yaml
 create mode 100644 Documentation/devicetree/bindings/serio/arm,pl050.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/arm,pl041.yaml

-- 
2.25.1

