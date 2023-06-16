Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B29F732F23
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 12:53:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345380AbjFPKxF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 06:53:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345528AbjFPKwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 06:52:53 -0400
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4F0D6593
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:44:44 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-3f8cdb12719so4140085e9.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686911965; x=1689503965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kaBTG2zxwhnxmGeWEEvsgJ1P9b9NURsoufZiPInkKEc=;
        b=DaqeP1HubPzYfjIB29TzyX5pqWN68YsZlcTvPyNObL0CKGlApzqj/ZLz9fDk1F/dnh
         gWiTSFa4w9dZRSHnl5AIqFMWtdFA6bpAPdJOff4+2WtuJyxXNWoP/iQfV+F4d1/Vt4y4
         8wRF9b1ThCM8UzBq6d26PFWb0b+VqwClt3GZf6MRCcdzIFH9U92tilwnIbvF5Mf6e9f4
         0QGyvirIPEArUXeShi62GbW0i8OjrkYAHcN8AGBNTy3GO4/wABIMiNW8RaIsvbKKxIOM
         +wNAm5Eo43LU64h/wT9ZWhfgUN8hRq7LnQXH8aoqGCPq3itc3vwfI1LlGDJT0K2/+PUn
         eteg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686911965; x=1689503965;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kaBTG2zxwhnxmGeWEEvsgJ1P9b9NURsoufZiPInkKEc=;
        b=Bb/gkuZThNSFbDqguHDGrFcAGZF2FWl5iR/xLChmgbl9Zn+/bM5ExyhVUccAYopB6R
         L5+1oMOEULJ1dWDtIvuOP8HZNdlYJyGb8q/Na6IQByECkS1zEjMGahbvy2MryipCmr8b
         Ac4dFMT1ydBe7qciR64nOBYBE40tiXbr7Vl1Oluxn6QPzOtoWaCqhJh01AZiIXTCU4um
         bn4Crkx1G99e4ZsboDQ1BJpmqXR0dv/kawVhsWh84EQio2hOphFOk2DnHeiqpbS0Cksv
         pR5y0WYm9cbLvfVKZH73ByM5GtRuuDxrqO7ABIsD9kcabqzr0XMovkoJQSRAbVZkPatZ
         id2Q==
X-Gm-Message-State: AC+VfDx/Wo4igPPoqhrCxC2YDugmBS7RGBv1CyqZWYh3zG/zTlW8movy
        lm/2zpk5R8yu7gBGM1KwBEquXmWpB4mEiPUxT/0=
X-Google-Smtp-Source: ACHHUZ46d2PnNLTuBJzAtrPzWBhQyazG0ug3ioL29Qy1uIyi1v1EBT6OTUHZcgKN9qMGn18t6oaADg==
X-Received: by 2002:a17:907:6ea4:b0:978:94b1:25ac with SMTP id sh36-20020a1709076ea400b0097894b125acmr1625268ejc.40.1686911498060;
        Fri, 16 Jun 2023 03:31:38 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s20-20020a170906961400b009829d2e892csm2251098ejx.15.2023.06.16.03.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jun 2023 03:31:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        devicetree@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 2/2] MIPS: dts: loongson: drop incorrect dwmac fallback compatible
Date:   Fri, 16 Jun 2023 12:31:27 +0200
Message-Id: <20230616103127.285608-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616103127.285608-1-krzysztof.kozlowski@linaro.org>
References: <20230616103127.285608-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Device binds to proper PCI ID (LOONGSON, 0x7a03), already listed in DTS,
so checking for some other compatible does not make sense.  It cannot be
bound to unsupported platform.

Drop useless, incorrect (space in between) and undocumented compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This patch depends on driver change, thus it should be accepted a
release after the driver is merged.
---
 arch/mips/boot/dts/loongson/loongson64-2k1000.dtsi | 3 +--
 arch/mips/boot/dts/loongson/ls7a-pch.dtsi          | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/mips/boot/dts/loongson/loongson64-2k1000.dtsi b/arch/mips/boot/dts/loongson/loongson64-2k1000.dtsi
index 8143a61111e3..c16b521308cb 100644
--- a/arch/mips/boot/dts/loongson/loongson64-2k1000.dtsi
+++ b/arch/mips/boot/dts/loongson/loongson64-2k1000.dtsi
@@ -123,8 +123,7 @@ gmac@3,0 {
 				compatible = "pci0014,7a03.0",
 						   "pci0014,7a03",
 						   "pciclass0c0320",
-						   "pciclass0c03",
-						   "loongson, pci-gmac";
+						   "pciclass0c03";
 
 				reg = <0x1800 0x0 0x0 0x0 0x0>;
 				interrupts = <12 IRQ_TYPE_LEVEL_LOW>,
diff --git a/arch/mips/boot/dts/loongson/ls7a-pch.dtsi b/arch/mips/boot/dts/loongson/ls7a-pch.dtsi
index 2f45fce2cdc4..ed99ee316feb 100644
--- a/arch/mips/boot/dts/loongson/ls7a-pch.dtsi
+++ b/arch/mips/boot/dts/loongson/ls7a-pch.dtsi
@@ -186,8 +186,7 @@ gmac@3,0 {
 				compatible = "pci0014,7a03.0",
 						   "pci0014,7a03",
 						   "pciclass020000",
-						   "pciclass0200",
-						   "loongson, pci-gmac";
+						   "pciclass0200";
 
 				reg = <0x1800 0x0 0x0 0x0 0x0>;
 				interrupts = <12 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1

