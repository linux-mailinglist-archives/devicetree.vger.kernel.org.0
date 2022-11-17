Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B60EF62E64E
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 22:05:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240745AbiKQVFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 16:05:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240076AbiKQVEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 16:04:50 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78BEA8E2A5
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:07 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id kt23so8212816ejc.7
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X3nU7X0djX9jQ80iI8+t0kZ5Fy4kB3s5F+snjwXKwEE=;
        b=x0/2+JLtr5Wevfc3DaNs8djNaF+ABrzMQdBLyBvmMIRdvFr6TTAal/W4ymfMF/LlMm
         UmJRTSm/5ZTxaaFM+jIxzkNZt/gGSeS94TkXx6WN8rWl7SsHcL0P9Dzz+sVnmPvFa5OY
         zJe1wFSiHOnYcbK5spt/YUA+pX2CpMN2X5HCQxWMCok+28apKKiMYIznTp6dENuNVIbH
         5a4KZsa0LSxYYLUSkVZ5hMRsVQ4tnnjBL2eq0rB9hADwj/LotVke1a/rmuiScWKgwFPb
         9yHqrhNxV5adPmAm5q/DnxiqoWKxH/nf/e9WDHuxJHHT6hh3r0fpL+BaiJqrcrxrqF5D
         oPBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X3nU7X0djX9jQ80iI8+t0kZ5Fy4kB3s5F+snjwXKwEE=;
        b=HBUjr2kgHegrs5orma0LuPb7vkF4vniPQKI+uDN1tW3htML8FiLd7PbgxwoVRJMdka
         FNumxTrs7fA3nM/yndOEV2EZ9XCPe34dXF3dhbg3l2a4DRGgy6KcuDcZMJip+GLF4UVr
         gA8B3HKOSbCw0eilKNzZqFudP8+TKWpxrN0SKXD7sXez5GO0t1Uyq/OSPQsLBUhjbizF
         PMkhCTXMJZzJZ+zNk6XfhO9MBrG85lyc8NO7RxrzlEYOOCKAcRS0MO/k+IDqbandGupj
         R6kB+hZnoXSe7sqKFBv0IlsrPbIG1UcAL81dv1RD04E/BmfQ594hXRV5SVol6Tk1ecmK
         I/jg==
X-Gm-Message-State: ANoB5pl8Nym+W0rEbbgH2lzkTaUytsD0TTn7JBvP37eadEduuY9QN6gj
        aRNBgkaEiT5lVNCtwq1fWST9Tw==
X-Google-Smtp-Source: AA0mqf4uoNtESHdzhp16/6ko0ItxfiZu0quayLxZD4UoKpS1Y/Tuw9fVd+KNhzvHX8Qelbqbvsb62A==
X-Received: by 2002:a17:906:4e46:b0:7ae:129b:2d3a with SMTP id g6-20020a1709064e4600b007ae129b2d3amr3568516ejw.552.1668719045581;
        Thu, 17 Nov 2022 13:04:05 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7cc8f000000b00461c6e8453dsm970807edt.23.2022.11.17.13.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 13:04:05 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogiocchino.delregno@collabora.com
Subject: [PATCH v3 2/7] dt-bindings: irq: mtk, sysirq: add support for mt8365
Date:   Thu, 17 Nov 2022 22:03:51 +0100
Message-Id: <20221117210356.3178578-3-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117210356.3178578-1-bero@baylibre.com>
References: <20221117210356.3178578-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation of mediatek,sysirq for mt8365 SoC.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../devicetree/bindings/interrupt-controller/mediatek,sysirq.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt b/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
index 84ced3f4179b9..3ffc60184e445 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
@@ -25,6 +25,7 @@ Required properties:
 	"mediatek,mt6577-sysirq": for MT6577
 	"mediatek,mt2712-sysirq", "mediatek,mt6577-sysirq": for MT2712
 	"mediatek,mt2701-sysirq", "mediatek,mt6577-sysirq": for MT2701
+	"mediatek,mt8365-sysirq", "mediatek,mt6577-sysirq": for MT8365
 - interrupt-controller : Identifies the node as an interrupt controller
 - #interrupt-cells : Use the same format as specified by GIC in arm,gic.txt.
 - reg: Physical base address of the intpol registers and length of memory
-- 
2.38.1

