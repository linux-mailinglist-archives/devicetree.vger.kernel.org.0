Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B166859EC8A
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231389AbiHWThd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:37:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231796AbiHWThQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:37:16 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0168089812
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:33:55 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id e20so17520872wri.13
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=q+TKEP48DscTRDbw52nvoVUMRS8D3Vksl/C8HoYqAy4=;
        b=WpT9FPSBFg5gj+3SEKAhIEbYy3VkM3t5SkcVrrpMsQvWqW6CpC+os07Y68qsl5lQwm
         AD9aui8SzjnCNTdK/B+NdogzMwQrEARSnmNh4Em/mpaCF3tt1dncmTSuRqeFOdwzSLIA
         ls1vTNAj6nNguGE8AWF1bWbb7hbNKits7Us+r+sE8+Zf745XQuV65ozSkZ799QhNmWIt
         r/QETJq4bRmHVBSsM/Lb9KTTbgiafcDeVKvFZzseo/e4jvxjzHuGzjhdqFjndp7rnJ8+
         2fdRyICsC9C/YbtB+TJEha0s9c6kCOxBi+SMHs9CTaMBb9rbeDhdjijQkuK0JShl4rxX
         z1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=q+TKEP48DscTRDbw52nvoVUMRS8D3Vksl/C8HoYqAy4=;
        b=nXTfjmxokLvSp8WbduuZ6lafA/40JJQz+lcSEIza11hcNUG6Ir0ZKOEzfaqwPoYxv/
         eKuHqMg/c+NdqXvpKy/emuAcI1/X1sRDStEmFCgLC+cJoT31SKl5ef2hWYrUHj0XfLDI
         a+5UUyrC5bbyVFw20ZNM5JSoKryIbY/2UKpIcanoiXGNy853Mi9pzDa5hqUKFZVf2DVF
         8aw/doTOUJzpT0OmaYDsTMhl5k08nOcGv+yNZO9gIManIXbGYK3dp5NIJdxF7nVkaE5H
         zWG3AsGRx92Gp65CT5Ci4sNe0q+x42k3Eob+6GGS+q9Md3ApciUiFelFeQ2li00iE3GA
         Mcbw==
X-Gm-Message-State: ACgBeo00ICUiNjFQPlPt1s7NTLsr+a+ynToVrWbtArUhHSqsIA/ly+6M
        OQ2ixkmKQW0i2X9NK+hzDPvTBw==
X-Google-Smtp-Source: AA6agR4eKdmNbLaAlee4FvNn9BWllAehRRH4lTp5MXW2JWFAbIkwID5iLn+33HA0tJYbINEHH4yyMQ==
X-Received: by 2002:a05:6000:18a1:b0:222:c54a:3081 with SMTP id b1-20020a05600018a100b00222c54a3081mr13725350wri.666.1661279633502;
        Tue, 23 Aug 2022 11:33:53 -0700 (PDT)
Received: from henark71.. ([51.37.149.245])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c1d9000b003a5fcae64d4sm19396556wms.29.2022.08.23.11.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:33:52 -0700 (PDT)
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
        Jessica Clarke <jrtc27@jrtc27.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org
Subject: [PATCH v4 0/4] Fix dt-validate issues on qemu dtbdumps due to dt-bindings
Date:   Tue, 23 Aug 2022 19:33:16 +0100
Message-Id: <20220823183319.3314940-1-mail@conchuod.ie>
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
the auto generated QEMU dtbs. The final patch should be ignored for all
serious purposes unless you want to wash your eyes out afterwards, but
JIC the versioned extensions ever come up, it's there.

Thanks to Rob Herring for reporting these issues [1],
Conor.

To reproduce the errors:
./build/qemu-system-riscv64 -nographic -machine virt,dumpdtb=qemu.dtb
dt-validate -p /path/to/linux/kernel/Documentation/devicetree/bindings/processed-schema.json qemu.dtb
(The processed schema needs to be generated first)

0 - https://lore.kernel.org/linux-riscv/20220810184612.157317-1-mail@conchuod.ie/
1 - https://lore.kernel.org/linux-riscv/20220803170552.GA2250266-robh@kernel.org/

Changes since v3:
- dropped the charset restrictions for standard multiletter isa extensions

Changes since v2:
- removed the extra patches from the directory

Changes since v1:
- drop the "legacy systems" bit from the binding descriptions
- convert to a regex for the isa string

Conor Dooley (4):
  dt-bindings: timer: sifive,clint: add legacy riscv compatible
  dt-bindings: interrupt-controller: sifive,plic: add legacy riscv
    compatible
  dt-bindings: riscv: add new riscv,isa strings for emulators
  dt-bindings: riscv: isa string bonus content

 .../sifive,plic-1.0.0.yaml                     |  5 +++++
 .../devicetree/bindings/riscv/cpus.yaml        |  9 ++++++---
 .../bindings/timer/sifive,clint.yaml           | 18 ++++++++++++------
 3 files changed, 23 insertions(+), 9 deletions(-)


base-commit: 568035b01cfb107af8d2e4bd2fb9aea22cf5b868
-- 
2.37.1

