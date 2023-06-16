Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FFC5732EF9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 12:42:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345411AbjFPKmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 06:42:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344942AbjFPKl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 06:41:56 -0400
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31E2455B6
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:33:50 -0700 (PDT)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9741caaf9d4so73580766b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686911495; x=1689503495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=l7UUUCEiDOQDFLQBmgYOU/VRB87rfpeTkrh78SXewlQ=;
        b=cYdvibiK6wuol8x9Bae5L8jbyUJor2BFpQ+IvmqbrkyV4XE169xtPQhWFeCJVy2mZC
         S1y8KJWNQoZ6Tt6f61tdQZ17mQ7/Khy4qJ4/OOfzg99RWHHtZG3revanHGAsMpz4agYc
         qmEGJ8aps2q7Vq/Hyyr8/f36b/dmAxKdaqAClpriOsphBx8XklyaUzYZWOfDx1tG+lGE
         Uog6nTn+xvetwk9YuYQwHqu8XtxyrP0JyAdaPWm+3GxY1hIbxEL8GU56nKx/B4FxfXVm
         FRRIYZKC5eguyHZXHgMEpGAqpfN8O4w7/L2gSsigMBEWNLeTPNevOvV3B+Y4AVR9XOFd
         rwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686911495; x=1689503495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l7UUUCEiDOQDFLQBmgYOU/VRB87rfpeTkrh78SXewlQ=;
        b=JMgfaXaxaFN3jE8Io8Dd+hEkQsjhL/SOW/2L+25njgGqYpdgsCr7Prs4KueSKa/YrS
         6ktpYUyfLqAB4W1sjc88s4O2lPmMptRAIEZ8px0qkXHo3GLJleqZHtFsN+zF5JzCFDV4
         ZaO2daPcRINwsBj36YDRwZOabpyWYxn97WU3WVOLJ3c5Co4qoC5fglbtyIRgq4Q3bTjZ
         ysI/Yf7txtW0ncNKf3TG2NJTyzO8DT9/plBdACIm5arESwonDmOOv8p6Lz6TKHrsgnzd
         ZairuuDzf1XJ2ndVEZh5A+D6oSTHi43BsQ4qWS38bbGr2X3he8+ZpcS6E59o5JYCczP4
         KXtg==
X-Gm-Message-State: AC+VfDxXODGOXFUsQcgzoNRnAESnJBDq6G+C2niU/oncH/sqTB06SyLH
        kXE2+RLFrDLJYWoouU7EUuPUZA==
X-Google-Smtp-Source: ACHHUZ79+WHZQfcfy/frvys94Lo80cA+tl2FV9KD8MCaSKzol/5ipwbVMZ3T04P7GsrXRUhcD5vRDw==
X-Received: by 2002:a17:906:da8a:b0:96f:e45f:92e9 with SMTP id xh10-20020a170906da8a00b0096fe45f92e9mr1493906ejb.16.1686911495167;
        Fri, 16 Jun 2023 03:31:35 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s20-20020a170906961400b009829d2e892csm2251098ejx.15.2023.06.16.03.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jun 2023 03:31:34 -0700 (PDT)
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
Subject: [RFT PATCH 1/2] stmmac: dwmac-loongson: drop useless check for compatible fallback
Date:   Fri, 16 Jun 2023 12:31:26 +0200
Message-Id: <20230616103127.285608-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
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
 drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c
index a25c187d3185..900972521b59 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-loongson.c
@@ -59,11 +59,6 @@ static int loongson_dwmac_probe(struct pci_dev *pdev, const struct pci_device_id
 		return -ENODEV;
 	}
 
-	if (!of_device_is_compatible(np, "loongson, pci-gmac")) {
-		pr_info("dwmac_loongson_pci: Incompatible OF node\n");
-		return -ENODEV;
-	}
-
 	plat = devm_kzalloc(&pdev->dev, sizeof(*plat), GFP_KERNEL);
 	if (!plat)
 		return -ENOMEM;
-- 
2.34.1

