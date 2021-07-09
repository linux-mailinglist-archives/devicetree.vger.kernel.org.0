Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFE0B3C2A3B
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 22:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229606AbhGIUTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 16:19:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbhGIUTn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 16:19:43 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9153C0613DD
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 13:16:59 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id n11so6371791pjo.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 13:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VE8NLNhGFPN7qXnwo6GnJohAmUIG/mEAcTOghcJ/tYw=;
        b=unp+hSNyALKLsqd7u1qNuLrdnRW4F28Fa86NuyBD9U5wkGyTPvUDri/GTCE4t7mDZC
         Q/7OjCgD5/FgWFcMlvH5go44vCiJ2Jnk/HbKADyCD+gbbO76ARGcN3pKmiCsQy0mYzE+
         eqCVMtcQiruCbiWt3jWz3fTFC7aSlu9DWdF4qD6uoVaheFiCTFF5O1tfrk7DdEzl1d8U
         v4e+KsHAGme5xnsG/V9yGJpUZY4UOBCVs7N89TBUyro83zGKhSqUqzTx3O3XgxK9Mkh7
         bOJHukR5Iw+A4twwHfa58M5xA/sfcq1kUG2qEqmWvf8XkzQab5LpFG0f8QKipp59xgey
         18Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VE8NLNhGFPN7qXnwo6GnJohAmUIG/mEAcTOghcJ/tYw=;
        b=fxkSPykRqBaJiazIzlpoRmftkd5e7q8ArbNkfVxcAyeiwHjpPOsofjPsxPkAW8+hEF
         wmAEyfXbgMkTRx8zeU/NuTYaA8NEfYSVcCzfTSZ6lquLGI5C6BsBlRCo6BCEHXJc2OtZ
         jB0mr/9CG1coa+tAgjOG2vOccNmjbgRvdoEFqoN6AoKc3GFpNCX2sIWmf+aHsF0OxxuJ
         bEEKc9sIlEvvwTqeP/twDgibLXFDslVbxracQbtpOE0BRSh4ot1FsCRh5d+s78FSA5L3
         lOly8JP1zk9JO1W2Tn/HeFabk75p4pZR5Uc9felMjCHvhKP7UZxD3mIaVfUzpx3ITAlG
         yd5Q==
X-Gm-Message-State: AOAM5303aT94LiSGTC6gvKkCEexaLClcD590B0Nk6r4tKl65lsrbmLB4
        sa5F4M5lLYIA6jiAKtcc1MmxeA==
X-Google-Smtp-Source: ABdhPJwsTex9cKmL6LslKd5Av4q4bNdTD9L8npwNfJ6/LlhBUloj6t2hiLzE1+epl2SAUQY0ZNJgEg==
X-Received: by 2002:a17:90a:510b:: with SMTP id t11mr658578pjh.178.1625861819359;
        Fri, 09 Jul 2021 13:16:59 -0700 (PDT)
Received: from localhost.localdomain ([174.127.163.79])
        by smtp.gmail.com with ESMTPSA id w22sm7220791pfn.188.2021.07.09.13.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 13:16:58 -0700 (PDT)
From:   Drew Fustini <drew@beagleboard.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Michael Zhu <michael.zhu@starfivetech.com>,
        Wei Fu <tekkamanninja@gmail.com>,
        Jack Zhu <jack.zhu@starfivetech.com>,
        Leyfoon Tan <leyfoon.tan@starfivetech.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <drew@beagleboard.org>
Subject: [PATCH v3] dt-bindings: riscv: add starfive jh7100 bindings
Date:   Fri,  9 Jul 2021 13:16:04 -0700
Message-Id: <20210709201603.2625664-1-drew@beagleboard.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT binding documentation for the StarFive JH7100 Soc [1] and the
BeagleV Starlight JH7100 board [2].

[1] https://github.com/starfive-tech/beaglev_doc
[2] https://github.com/beagleboard/beaglev-starlight

Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
v3 changes:
- added revision number for the board and soc after question from Palmer

v2 changes:
- removed "items:" entry that only had "const: starfive,jh7100"
- correct typo in Description:

Results of running checks:
  $ make -j8 ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- dt_binding_check \
    DT_SCHEMA_FILES=Documentation/devicetree/bindings/riscv/starfive.yaml 
    CHKDT   Documentation/devicetree/bindings/processed-schema-examples.json
    DTEX    Documentation/devicetree/bindings/riscv/starfive.example.dts
    SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.json
    DTC     Documentation/devicetree/bindings/riscv/starfive.example.dt.yaml
    CHECK   Documentation/devicetree/bindings/riscv/starfive.example.dt.yaml
  $ make -j8 ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- dtbs_check \
    DT_SCHEMA_FILES=Documentation/devicetree/bindings/riscv/starfive.yaml 
    SYNC    include/config/auto.conf.cmd
    UPD     include/config/kernel.release
    SCHEMA  Documentation/devicetree/bindings/processed-schema.json
    DTC     arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dtb
    DTC     arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml
    DTC     arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dt.yaml
    DTC     arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dt.yaml
    CHECK   arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml
    CHECK   arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dt.yaml
    CHECK   arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dt.yaml

The dts file is from vendor repo and is being cleaned up right now in
preperation for submitting to the mailing list:
https://github.com/starfive-tech/linux/tree/beaglev/arch/riscv/boot/dts/starfive

 .../devicetree/bindings/riscv/starfive.yaml   | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/starfive.yaml

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
new file mode 100644
index 000000000000..18d510904441
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -0,0 +1,27 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/starfive.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive SoC-based boards
+
+maintainers:
+  - Michael Zhu <michael.zhu@starfivetech.com>
+  - Drew Fustini <drew@beagleboard.org>
+
+description:
+  StarFive SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - const: beagle,beaglev-starlight-jh7100-r0
+          - const: starfive,jh7100-r0
+
+additionalProperties: true
+
+...
-- 
2.27.0

