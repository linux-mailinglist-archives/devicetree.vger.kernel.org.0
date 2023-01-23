Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 146E8677EEF
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:13:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232357AbjAWPNV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:13:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232292AbjAWPNQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:13:16 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 263BF14489
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:13:15 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d2so11107079wrp.8
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NjUDPjFfIstrArrttGkIiPvgInIpWMnlY5IxKwKaSmM=;
        b=gBYz9l1ChBFTjyquDh1ZRllUadOhS3AOoSty4qM7gQFn3MA20fctQ9Rau+B9QwDvSO
         rwnELh0TsZEV1SENNaAwxrbvMZpyOcQpqOrZkidOK9PyOdIFdQ68uU5lY07aC9beRBFQ
         VFcEGa1/TJ9hw2tpi4rS8isfX7TV//tB0RhC7zKfWQfQHs19bT/PWeLt+XpmCmcpZ3pQ
         P+lQjZV5iQU7XifV/MniKY2UR8WQFm5+rkxBfAFJiDIAcFsY9yb8XamTbrGGz1HsH3ta
         tGwvMS4ewMzZ7GFLQSP06NgULdL1ShWttqEcreqeLg/Uh2RmDqDdijBb41n1CwJPRrSD
         JeHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NjUDPjFfIstrArrttGkIiPvgInIpWMnlY5IxKwKaSmM=;
        b=gkMUjuaVHEmbYweLYXBQYoxuHtRWtRmkW4mnEHtwuq3U79zPaoZcJ3zT8SaF3iXsKq
         tj+wmCecWaHyOZZsdk2vqhPOMQDiA3CS4OBDz/xSrO+g3KH1Or76joH99kqleiKJOtn8
         LZVTJxuIAKGviU2O+Axl8xIEK6Gvqh/n9wO6dF3DQbH1Py5JRsyzXzwE8YVf5/5pRGWA
         UxHQAHYLeurga0oZYJndcwGNclnwfuNtxsm9tYivLw6Pm/T41wjlhTgzlR/2TU/L3/9R
         ZU8k/quSmsML3HGDtoqq0qWErOnmFehYHFG6lgUCwyMq2/7Ogqzm7baOuoBBl596xtnH
         cgXw==
X-Gm-Message-State: AFqh2krKL1mukDZqHoaFM/+I2haz+ojkP2rwTTg7A9l7Z3lu2TgKn4Fd
        U2E6TN3R3Ptz/XZy3ycoT+iWUA==
X-Google-Smtp-Source: AMrXdXuiyS/nE1Nc3w4Ako2LBIBfE/IBn8kE3nDojB39mO64zJzuJZFatWSIZAd0fnHSuwEectyleg==
X-Received: by 2002:a05:6000:98d:b0:242:809e:1428 with SMTP id by13-20020a056000098d00b00242809e1428mr25207621wrb.5.1674486793685;
        Mon, 23 Jan 2023 07:13:13 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n1-20020a5d67c1000000b002bc7f64efa3sm34737922wrw.29.2023.01.23.07.13.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:13:13 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        - <devicetree@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Chester Lin <clin@suse.com>, Fugang Duan <fugang.duan@nxp.com>,
        Magnus Damm <magnus.damm@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Pragnesh Patel <pragnesh.patel@sifive.com>,
        Le Ray <erwan.leray@foss.st.com>,
        Peter Korsgaard <jacmet@sunsite.dk>,
        Tomer Maimon <tmaimon77@gmail.com>,
        linux-serial@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-riscv@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 02/13] dt-bindings: serial: 8250: correct Nuvoton NPCM850 compatible
Date:   Mon, 23 Jan 2023 16:12:51 +0100
Message-Id: <20230123151302.368277-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151302.368277-1-krzysztof.kozlowski@linaro.org>
References: <20230123151302.368277-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nuvoton NPCM850 UART is compatible with NPCM750, so add proper fallback
to match existing DTS and Linux driver.

Fixes: c8177f90b7c6 ("dt-bindings: serial: 8250: Add npcm845 compatible string")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/serial/8250.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index 34b8e59aa9d4..badaf6d5b6fe 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -62,7 +62,6 @@ properties:
       - const: mrvl,pxa-uart
       - const: nuvoton,wpcm450-uart
       - const: nuvoton,npcm750-uart
-      - const: nuvoton,npcm845-uart
       - const: nvidia,tegra20-uart
       - const: nxp,lpc3220-uart
       - items:
@@ -92,6 +91,10 @@ properties:
           - enum:
               - ns16550 # Deprecated, unless the FIFO really is broken
               - ns16550a
+      - items:
+          - enum:
+              - nuvoton,npcm845-uart
+          - const: nuvoton,npcm750-uart
       - items:
           - enum:
               - ralink,mt7620a-uart
-- 
2.34.1

