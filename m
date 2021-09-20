Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10695411779
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 16:50:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236444AbhITOvg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 10:51:36 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:38854
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240521AbhITOv1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 10:51:27 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 486FF4018F
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 14:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632149400;
        bh=liJ7TqCiRENzp4AeNTdqrwOrt003yN4WGkD8VAmir74=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=VtXGmrVSPU0gNXtuBRXm3WnzkGyN8XsPDN+2QgO1iqUY73aviaO6Oxb7SUjIJFkB2
         CIwvRUNvlwWszVg6GcCaeHAXxfcJD6Plf+NX3qtdf+91LrQ88WKzGf/jKgfrN5+hBJ
         7mcyc6Nzmn8v4DHLlljOoim6EDAcMk7hGX39dSqFmcppXsEcl87LdcGl/Aor0jQyMC
         laXc8M9Z94jLVOcSDvZ/ic34U44SnRsJFsoN513sDEkAIXOh3CQo4QUZi5ZbbTtmDk
         uyWdC9QL2frMFqqFpPY2cv3wvTNTg9S/iAxNbXPRf1bK3C51AAv++mqBbLoNGjYts+
         TYqH4JsOhGOMg==
Received: by mail-wr1-f71.google.com with SMTP id c2-20020adfa302000000b0015e4260febdso4978188wrb.20
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:50:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=liJ7TqCiRENzp4AeNTdqrwOrt003yN4WGkD8VAmir74=;
        b=jFKT9BevXO8F4uS6VFiyNhQ9JH54MGSLLGKSV2RC1t6yy0ClcAQyPW8Z1tY/NRlgvF
         /3fqTZ6cZ0rI3j5nymVrdQ6ll8g7DT/x7mwkwh2HF3l4VCFB4gMnVFnZBDzDIA/3k3UU
         9/2n/pCXqcZUV94UyBLIEGLA1BZsouCSp3e2Xrx2fUa3CjjJtYBmTTR7rJ2G3QJ2ZDMV
         R9wE5YcdILqCOme2yHcyfIJWx02jdfmlXmgj1/4CV01eYIzNrmRMWkmQ7i5oignfgYBh
         HNY8VxcMpASsO3qRnDQW+soxILZG6tFJVYAI0z4foxoeufhvjMGdioqWrWQdEUTnVosU
         XmRg==
X-Gm-Message-State: AOAM531SkwwVmhRX6EErPH/oqL16voDX5BJcrYnUSPa7vaWKLFyigPzS
        DYXsJi9U41BzbmT5+3VZZNwdiWq+Yep6/CCiNQiQBmUEksm2mpuBgYRkoc2H5d4NzVvbBS8DdVQ
        pNDTciQjeEgDI04DZ7b0x7Rqlqj6GVkFP0DJNQVQ=
X-Received: by 2002:a05:6000:c3:: with SMTP id q3mr28794222wrx.361.1632149399914;
        Mon, 20 Sep 2021 07:49:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuV1/6C76PaS4ktI3Po8CjUMuAt+4cyKsUSOnJVyV0IOE5VYTpW96BNfhMsoz/jqg1evXxzg==
X-Received: by 2002:a05:6000:c3:: with SMTP id q3mr28794197wrx.361.1632149399765;
        Mon, 20 Sep 2021 07:49:59 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id g131sm14752780wme.22.2021.09.20.07.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 07:49:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Zong Li <zong.li@sifive.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: clock: fu740-prci: add reset-cells
Date:   Mon, 20 Sep 2021 16:49:44 +0200
Message-Id: <20210920144944.162431-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SiFive FU740 Power Reset Clock Interrupt Controller is a reset line
provider so add respective reset-cells property to fix:

  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dt.yaml: clock-controller@10000000:
    '#reset-cells' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/clock/sifive/fu740-prci.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml b/Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml
index e17143cac316..252085a0cf65 100644
--- a/Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml
+++ b/Documentation/devicetree/bindings/clock/sifive/fu740-prci.yaml
@@ -42,6 +42,9 @@ properties:
   "#clock-cells":
     const: 1
 
+  "#reset-cells":
+    const: 1
+
 required:
   - compatible
   - reg
@@ -57,4 +60,5 @@ examples:
       reg = <0x10000000 0x1000>;
       clocks = <&hfclk>, <&rtcclk>;
       #clock-cells = <1>;
+      #reset-cells = <1>;
     };
-- 
2.30.2

