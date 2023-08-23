Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2713F7854B3
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 11:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236070AbjHWJ4Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 05:56:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236155AbjHWJ4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 05:56:07 -0400
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A4C8A10C9
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 02:54:57 -0700 (PDT)
Received: from loongson.cn (unknown [112.20.109.102])
        by gateway (Coremail) with SMTP id _____8BxXetv1+VkYS4bAA--.50346S3;
        Wed, 23 Aug 2023 17:54:55 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.109.102])
        by localhost.localdomain (Coremail) with SMTP id AQAAf8CxF81s1+VkLT1hAA--.37275S2;
        Wed, 23 Aug 2023 17:54:54 +0800 (CST)
From:   Binbin Zhou <zhoubinbin@loongson.cn>
To:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>,
        Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v4 0/7] LoongArch: Add built-in dtb support
Date:   Wed, 23 Aug 2023 17:54:48 +0800
Message-Id: <cover.1692783907.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8CxF81s1+VkLT1hAA--.37275S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxuF1DuryfZF47Ar4rJF1kWFX_yoWrWrWrpr
        W7ursxGFs5Gr4xGrsxt345ur1kZw1rJrZxWF13AryUC39rZr4UZw1ftas0qF43Aa1rJ340
        qr1rG347KFWUAabCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
        sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
        0xBIdaVrnRJUUUB2b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
        IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
        e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
        0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
        xVW8Jr0_Cr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
        AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
        AVWUtwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
        AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
        6r1j6r4UMxCIbckI1I0E14v26r126r1DMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
        xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
        jxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw2
        0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x02
        67AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUxYiiDUUUU
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all:

This patchset introduces LoongArch's built-in dtb support.

As we know, the Loongson-2K family supports DT. Inevitably, some systems
do not provide a useful device tree to the kernel at boot time. Chasing
around bootloaders for these systems is a headache, so we just keep a
device tree table in the kernel, keyed by the dts filename, that
contains the relevant DTBs.

Thanks.

-----
V4:
patch(1/7):
  - Drop device_type property.
patch(2/7):
  - Rename board.yaml to loongson.yaml.
patch(4/7):
  - Keep the ranges attribute after compatible;
  - Add bootargs = "ttyS0,115200", which is needed for reference board;
patch(5/7):
  - Keep the ranges attribute after compatible;
  - Add bootargs = "ttyS0,115200", which is needed for reference board;
  - Change node name global-utilities to chipid.
patch(6/7):
  - Keep the ranges attribute after compatible;
  - Add bootargs = "ttyS0,115200", which is needed for reference board.

Link to V3:
https://lore.kernel.org/all/cover.1692618548.git.zhoubinbin@loongson.cn/

V3:
patch(1/7):
  - Add reference to the common cpu schema.
patch(2/7):
  - Add reviewed-by tag.
patch(4/7):
  - Drop bootargs;
  - Move the cpus node to dtsi, which is part of the SoC.
patch(5/7):
  - Drop bootargs;
  - Move the cpus node to dtsi, which is part of the SoC;
  - Fix gmac0/1-mdio node: compatible is always the first property;
  - Drop i2c-gpio node.
patch(6/7):
  - Drop bootargs;
  - Move the cpus node to dtsi, which is part of the SoC.
  - Changes liointc to liointc-1.0, for Loongson-2K2000 has 32 interrupt
    sources.

Link to V2:
https://lore.kernel.org/all/cover.1692088166.git.zhoubinbin@loongson.cn/

V2:
patch(1/7):
  - Drop model and clock-frequency properties;
  - Add clocks property;
  - Rewrite the description.
patch(2/7):
  - Add the proper compatibles for boards.
patch(4/7)(5/7)(6/7):
  - Format commit message head;
  - Drop undocumented compatible, such as pci_bridge compatible;
  - Distinguish the attributes, put SoC-related into DTSI and
    board-related into DTS;
  - Check DTS with 'make dtbs_check W=1'.
patch(7/7)
  - New patch;
  - Parses Molde name and CPU MHz from the DTS attribute.

Link to V1:
https://lore.kernel.org/loongarch/cover.1686882123.git.zhoubinbin@loongson.cn/

Binbin Zhou (7):
  dt-bindings: loongarch: Add CPU bindings for LoongArch
  dt-bindings: loongarch: Add Loongson SoC boards compatibles
  LoongArch: Allow device trees to be built into the kernel
  LoongArch: dts: DeviceTree for Loongson-2K0500
  LoongArch: dts: DeviceTree for Loongson-2K1000
  LoongArch: dts: DeviceTree for Loongson-2K2000
  LoongArch: Parsing CPU-related information from DTS

 .../devicetree/bindings/loongarch/cpus.yaml   |  61 +++
 .../bindings/loongarch/loongson.yaml          |  34 ++
 arch/loongarch/Kconfig                        |  16 +
 arch/loongarch/Makefile                       |  10 +-
 arch/loongarch/boot/dts/Makefile              |   7 +-
 .../boot/dts/loongson-2k0500-ref.dts          |  89 ++++
 arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 254 +++++++++++
 .../boot/dts/loongson-2k1000-ref.dts          | 172 ++++++++
 arch/loongarch/boot/dts/loongson-2k1000.dtsi  | 397 ++++++++++++++++++
 .../boot/dts/loongson-2k2000-ref.dts          |  73 ++++
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  | 291 +++++++++++++
 arch/loongarch/kernel/env.c                   |  33 ++
 arch/loongarch/kernel/setup.c                 |   9 +-
 13 files changed, 1440 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.yaml
 create mode 100644 Documentation/devicetree/bindings/loongarch/loongson.yaml
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi
 create mode 100644 arch/loongarch/boot/dts/loongson-2k1000-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k1000.dtsi
 create mode 100644 arch/loongarch/boot/dts/loongson-2k2000-ref.dts
 create mode 100644 arch/loongarch/boot/dts/loongson-2k2000.dtsi

-- 
2.39.3

