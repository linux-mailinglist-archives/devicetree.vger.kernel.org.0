Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0DC7419491
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 14:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234451AbhI0Mwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 08:52:31 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40300
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234439AbhI0Mw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 08:52:29 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id BFBE54082B
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 12:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632747050;
        bh=jeMIEXiKB7wPBA3ymi6+lgomz3wpzPFtflbOU3+5glo=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=wE0XwH8WPXph9KdF2juApvUxO+UdLhcnPvuQqEi9W4T9w8WJZEtdC4iL6OHkt0X0G
         rGQt3rAQ+1qFdsTHSTkaKmILUyFy1w3grGyxCCL12KUCw+BWOkElAalBtSnGkFgRDf
         62BayEZqbQA7laTQUDgtrNJaUTCIXKHlo+g1zcDTL8gU9XEyVZCoEIDtFS1m+fgFS1
         a8EkcCQeuQWv9baGN1MxqKBWKPCEogNfAiBX/0XMaW4Gw2DkpNgPDs9Xzm7BroxQth
         pMsegAmg5UI6B0jg1tjruXLw8FMIHcoWlPlLiIY42UHPAaP92kH4RJEAwPB61QxSs0
         5odx2S0nEyJ7A==
Received: by mail-lf1-f72.google.com with SMTP id x143-20020a19c795000000b003fa152e3484so15700966lff.23
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 05:50:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jeMIEXiKB7wPBA3ymi6+lgomz3wpzPFtflbOU3+5glo=;
        b=5GAnANzl/aSELTimsaYBnd19FRWQVcxv0XeCqiWWyy1P2aeMG0+bh2MkZn5uXZhoQ8
         iuziK6d7UFaRPngqC5GyBBuWfsYbJkikVH2CDO774aJxlQRgIEnqIXkN0xvX4dfwXN8O
         WqkAyn0GIdkqk5++IY9OPcNbdTHev6xqlky/Z/vy64ZcW5LLolrCilKknt5xh2nFFfJL
         0Sa3EEf1DAd99an2yiAf1rfTC+79z2NX5PAoRX5YxYG5fEQKNspkaSagC87kjqh5J2s2
         r0cNvYe470KO5gQJPzm2rDxIyRQWGaumQbp6RJCOXAt7Dd1+/ml3sx/jiAQJ+PvuRAkS
         ImvA==
X-Gm-Message-State: AOAM530NjE4+L23I8ZuOxpzwbzzjAENjXl6QrSyzvl0o7KGxAojcRRkT
        v+RcWI7lMbER56QHK1bXBxnSOKt7j9liTJq2CsO0r1dLsmGm/PLW4qxb8LTzOWkJXfzy4F4Ydv/
        NHUm254AP9Hm/A/NpHe+GFhW0Dhf/zW87ttg5TYw=
X-Received: by 2002:a2e:140d:: with SMTP id u13mr17389347ljd.298.1632747048871;
        Mon, 27 Sep 2021 05:50:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4XgRv4NIfqOOqXINjjLOjy/LJUFeE0f5kcR1+muR49/z/9l4mGGfT5izyr31+Z/ahcTOfdA==
X-Received: by 2002:a2e:140d:: with SMTP id u13mr17389319ljd.298.1632747048691;
        Mon, 27 Sep 2021 05:50:48 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v28sm1592102lfi.22.2021.09.27.05.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 05:50:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Piotr Sroka <piotrs@cadence.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/6] dt-bindings: mmc: cdns: document Microchip MPFS MMC/SDHCI controller
Date:   Mon, 27 Sep 2021 14:50:39 +0200
Message-Id: <20210927125044.20046-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Microchip PolarFire SoC FPGA DTSI uses Cadence SD/SDIO/eMMC Host
Controller without any additional vendor compatible:

  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: mmc@20008000: compatible:0: 'cdns,sd4hc' is not one of ['socionext,uniphier-sd4hc']
  arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: mmc@20008000: compatible: ['cdns,sd4hc'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes since v3:
1. Adjust commit msg.
2. Add tags.

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

