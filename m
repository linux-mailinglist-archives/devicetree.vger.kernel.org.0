Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DEEE732720
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 08:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242492AbjFPGLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 02:11:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242181AbjFPGLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 02:11:01 -0400
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3557610F7
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 23:10:58 -0700 (PDT)
Received: from loongson.cn (unknown [112.20.112.76])
        by gateway (Coremail) with SMTP id _____8AxGurx_Itk6tsFAA--.12604S3;
        Fri, 16 Jun 2023 14:10:57 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.76])
        by localhost.localdomain (Coremail) with SMTP id AQAAf8CxReTv_ItkFPEcAA--.17020S2;
        Fri, 16 Jun 2023 14:10:56 +0800 (CST)
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
Subject: [PATCH 0/6] LoongArch: Add built-in dtb support
Date:   Fri, 16 Jun 2023 14:10:37 +0800
Message-Id: <cover.1686882123.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8CxReTv_ItkFPEcAA--.17020S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxJr45tF45Jr1kCw4rtrW3CFX_yoW8WFWfp3
        9ruF9xGFs5Gr17KrnIq345urn5ZFyxGwnFqa13JryUGw43Xr1UZ34ftFZ0vF43Aw4rJrW0
        qryrGw13KFy8AagCm3ZEXasCq-sJn29KB7ZKAUJUUUU7529EdanIXcx71UUUUU7KY7ZEXa
        sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
        0xBIdaVrnRJUUUB2b4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
        IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
        e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
        0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
        xVW8Jr0_Cr1UM2kKe7AKxVWUXVWUAwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
        AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWU
        AVWUtwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7V
        AKI48JMxkF7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY
        6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
        xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
        jxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw2
        0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x02
        67AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUxYiiDUUUU
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
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

Binbin Zhou (6):
  dt-bindings: loongarch: Add CPU bindings for LoongArch
  dt-bindings: loongarch: Add Loongson SoC boards compatibles
  LoongArch: Allow device trees to be built into the kernel
  LoongArch: DeviceTree for Loongson-2K0500
  LoongArch: DeviceTree for Loongson-2K1000
  LoongArch: DeviceTree for Loongson-2K2000

 .../devicetree/bindings/loongarch/boards.yaml |  31 +
 .../devicetree/bindings/loongarch/cpus.yaml   |  65 ++
 arch/loongarch/Kconfig                        |  16 +
 arch/loongarch/Makefile                       |  10 +-
 arch/loongarch/boot/dts/Makefile              |   7 +-
 arch/loongarch/boot/dts/loongson_2k0500.dts   | 311 ++++++++++
 arch/loongarch/boot/dts/loongson_2k1000.dts   | 565 ++++++++++++++++++
 arch/loongarch/boot/dts/loongson_2k2000.dts   | 417 +++++++++++++
 arch/loongarch/kernel/setup.c                 |   9 +-
 9 files changed, 1425 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/loongarch/boards.yaml
 create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.yaml
 create mode 100644 arch/loongarch/boot/dts/loongson_2k0500.dts
 create mode 100644 arch/loongarch/boot/dts/loongson_2k1000.dts
 create mode 100644 arch/loongarch/boot/dts/loongson_2k2000.dts

-- 
2.39.3

