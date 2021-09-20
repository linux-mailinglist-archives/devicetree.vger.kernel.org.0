Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70F204117D9
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 17:09:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235441AbhITPK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 11:10:28 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44020
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241161AbhITPK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 11:10:28 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BF92F4027C
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632150540;
        bh=RrUHW9qWnN4ubyMN56WONJrQMAnYJXVEP7VdjrUGoI4=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=AFOM6TcHjSb05N9wnmVVk1u0W60SnXAKhn8eO5V+/9/e2NPCKMg5XylKOafVa9Lz1
         oqR+Xe/BXXVd2ooH7qnLXYTWmzLssyTv3gtDFLFkW9oDxiqQNKkg8Fj+otyeU3XPA6
         NC8T6/pqJ72uQYXFcqckXpY/yHzswwN5pL0UqXzbP+PCUqTjHzuT8AFAeHiTfjLOC6
         5jjcMMS3wVfDCumkBtLpClI3XA2Sk2yZOBGVYUvgmXRzrlyf+CRwanKxIFoWfCZgbC
         4JxwgZCdoQkaKUcBB3ohPQhB7rulMVndO8KmGLRIuuG6NDoUFk3HUB4WDVb8HJKPvy
         GOW0Q7R1plg4Q==
Received: by mail-wr1-f71.google.com with SMTP id s13-20020a5d69cd000000b00159d49442cbso6347045wrw.13
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 08:09:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RrUHW9qWnN4ubyMN56WONJrQMAnYJXVEP7VdjrUGoI4=;
        b=fUvb3bQCbFwIl1mWvqkuPx00bHvWZo/mwNJOFU81NzkEf8eI0OjXuTnv8ExSRbPspq
         TyuMNPHjQ+yFG7WRHd/rDa+6u9JRBwGWCcxQujJ9Pokx7J/KFNo0bvlpDK8YOwj+33QM
         PhEx9qMXdhlO5y3QwezosfJlQs1Zufj5wEaOMnGzNRrLhDT+u1D40dn05lKtSseLRADB
         aLilfrrgH+Z6CMxab7IXkvILIqIXNTLbjH14f9x5CZarRFuD0+Acq37idjnkxFfTsz+q
         8ppA9wzwBr+G+a+vAoFwvkDSb/tm6s6FdqVxIb79fD2rAS2Xx3mW1p8rl/IdbFQz6sGe
         Osng==
X-Gm-Message-State: AOAM530cVVMo1ZdPalXKPMiT94EqFU4GVpmEOBbARWe+PXYrx25O/fOG
        BLmwkenR3OE41rf14JaLegHnzpvtei1EZD0AUKZSQqMlikTgEngczgot0nOuOD6/yvaQicmMHYJ
        eGHuDRvmf0nMNxoggDfI2tQqBy7Yki2WkEOfiZqw=
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr23903320wmh.125.1632150540351;
        Mon, 20 Sep 2021 08:09:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9q96BO6SmIHFGad+uos8pAFJ1J9kCDWwhrXRWKfSkT84ucEy7lcgN0Rquc/RlyJ/PH3RBzA==
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr23903276wmh.125.1632150540071;
        Mon, 20 Sep 2021 08:09:00 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i2sm15803136wrq.78.2021.09.20.08.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 08:08:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v3 1/6] dt-bindings: mmc: cdns: document Microchip MPFS MMC/SDHCI controller
Date:   Mon, 20 Sep 2021 17:08:02 +0200
Message-Id: <20210920150807.164673-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Microchip MPFS Icicle Kit uses Cadence SD/SDIO/eMMC Host Controller
without any additional vendor compatible:

  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: mmc@20008000: compatible:0: 'cdns,sd4hc' is not one of ['socionext,uniphier-sd4hc']
  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: mmc@20008000: compatible: ['cdns,sd4hc'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v2:
1. Document vendor compatible instead of dropping it.
---
 Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
index af7442f73881..4207fed62dfe 100644
--- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     items:
       - enum:
+          - microchip,mpfs-sd4hc
           - socionext,uniphier-sd4hc
       - const: cdns,sd4hc
 
-- 
2.30.2

