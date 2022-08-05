Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4F3458AE23
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 18:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241135AbiHEQ3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 12:29:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240801AbiHEQ3G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 12:29:06 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E99B4CE2D
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 09:29:04 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id z12so3786839wrs.9
        for <devicetree@vger.kernel.org>; Fri, 05 Aug 2022 09:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=er0g7uHt/REArzX+ze5K8GPRuPY+Jxgp51y8SELP3FM=;
        b=EbOTl21mdJTL1GSzLoH5mndTGZ7rvd3Xg13P4ZKyz1HCSdoZ+u7F/xmaKdmhUrrJYR
         ArAdrwc4a1//4AnluZSlFDO6+T3WonDWZ7YJAoV50fmI/J5ExQUtkLJKbPjLjsScuXwe
         WN1Qs3sMEseZZVv/O9h179kGKXIXUaZ7acdsR24+fFhX69GI2nTzP/kZtlcjr7KN9DOZ
         vFaNNYQYq6E/a41Mn8Y+odfAkjrhdjCAvuuGk00A/HgX+GlhAhe93bBVZfYbqTMm1ZFx
         Vpkg4f2wo26DXiVBb+vHMqHogYZl59hldL5jGPOYrirc97C0RUGdzYLF2J//OSiPFvsa
         0YFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=er0g7uHt/REArzX+ze5K8GPRuPY+Jxgp51y8SELP3FM=;
        b=f4UEVhqC6V1lOKFt/Uwx9+hTNOBhREUflSCiNMruQNM35Xq5fD1PGuWQ1T5fz+1sOg
         tYDtafp2+qHYXiVBJ0/nBb32u9xAgK2zSPkgFbXduFQyb02daV1gpUJ1etCZoE8Kkn5r
         V2jOVKNirwSgxRCAKmXhq/wV0gfVIc7cWBxBxn09nkhintv8/v4iZHIlCyx1YYhueqiT
         7l8mHHgdIlBABG2biyolW7OiJAwEaZtslfy61VvYjbYrMONyUnCk0BJFmNiT/1+TE7gy
         BSIjLUcJdSV5BgU3aIuUy6aI696tNjJaFPFMoDHHU7agXIAUQALCAREASv8AU2/bzOjQ
         qWSw==
X-Gm-Message-State: ACgBeo0bChI9lk8GgnZaH4HG2xciua4IuNo45x6W15gR8OyG6meRwzDg
        BAJU9csDEmCBm9t6+TbQ2aKgwQ==
X-Google-Smtp-Source: AA6agR5PYR+Wl+0VOlguEQQuXuRRJGr8efSXklKvUOQvZ7GXAI/mg5rEbgBwI6yH/e0BdmhHI1txbw==
X-Received: by 2002:a05:6000:1542:b0:220:603d:ec93 with SMTP id 2-20020a056000154200b00220603dec93mr5044554wry.73.1659716943539;
        Fri, 05 Aug 2022 09:29:03 -0700 (PDT)
Received: from henark71.. ([93.107.66.220])
        by smtp.gmail.com with ESMTPSA id b10-20020a056000054a00b00220633d96f2sm5210086wrf.72.2022.08.05.09.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 09:29:03 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Anup Patel <anup@brainfault.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Guo Ren <guoren@kernel.org>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org
Subject: [PATCH 0/3] Fix dt-validate issues on qemu dtbdumps due to dt-bindings
Date:   Fri,  5 Aug 2022 17:28:42 +0100
Message-Id: <20220805162844.1554247-1-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The device trees produced automatically for the virt and spike machines
fail dt-validate on several grounds. Some of these need to be fixed in
the linux kernel's dt-bindings, but others are caused by bugs in QEMU.

Patches been sent that fix the QEMU issues [0], but a couple of them
need to be fixed in the kernel's dt-bindings. The first patches add
compatibles for "riscv,{clint,plic}0" which are present in drivers and
the auto generated QEMU dtbs. The final patch adds some new ISA strings
which needs scruitiny from someone with more knowledge about what ISA
extension strings should be reported in a dt than I have.

Thanks to Rob Herring for reporting these issues [1],
Conor.

To reproduce the errors:
./build/qemu-system-riscv64 -nographic -machine virt,dumpdtb=qemu.dtb
dt-validate -p /path/to/linux/kernel/Documentation/devicetree/bindings/processed-schema.json qemu.dtb
(The processed schema needs to be generated first)

0 - https://lore.kernel.org/linux-riscv/20220805155405.1504081-1-mail@conchuod.ie
1 - https://lore.kernel.org/linux-riscv/20220803170552.GA2250266-robh@kernel.org/

Conor Dooley (3):
  dt-bindings: timer: sifive,clint: add legacy riscv compatible
  dt-bindings: interrupt-controller: sifive,plic: add legacy riscv
    compatible
  dt-bindings: riscv: add new riscv,isa strings for emulators

 .../sifive,plic-1.0.0.yaml                     |  5 +++++
 .../devicetree/bindings/riscv/cpus.yaml        |  2 ++
 .../bindings/timer/sifive,clint.yaml           | 18 ++++++++++++------
 3 files changed, 19 insertions(+), 6 deletions(-)


base-commit: 42d670bda02fdba0f3944c92f545984501e5788d
-- 
2.37.1

