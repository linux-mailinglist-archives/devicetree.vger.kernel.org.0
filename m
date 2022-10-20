Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B333C606137
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 15:13:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230350AbiJTNN2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 09:13:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230391AbiJTNN1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 09:13:27 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 234E717E20C
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:12:58 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id o20-20020a05600c4fd400b003b4a516c479so2135316wmq.1
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7OTh+ZIjQwPwHMVAfy9H3FuL7YWrhAHg4js/lzlDK/M=;
        b=6EDUCv6G2UgQRsVfJ2I9xQEL96UJ12vdRg5bkhFeSUS8KL3XWADImhOHZXbAIPHbsz
         GmHQhGgrSI/cNNtSpNEpHuRe/bsQhMGTz09Hv9UvDI33MyLuh7pZgk43VdA3PpgjLAwJ
         NmoYOQN2+ZrW718j2+WcpYVDPIjYAvYHpuL3bpDNOFzUt5Ln3uXrnMfZAbbBEsduYBMz
         DoMsVgSf2XfB5WZ9oxb2tvygvBDN3VYb8W2AaHe/GAZlS1CQbpFIOMQqVd+UtNo8K6bj
         ndPy/tScUYbYM5Y9AQTV27ydm6D4mKb8Oh/Dmu0yY3juBM8PEVuiO0IO6vXjafg/tU6g
         jGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7OTh+ZIjQwPwHMVAfy9H3FuL7YWrhAHg4js/lzlDK/M=;
        b=dm7lpEXCyWAsWEFZOwIDJ6FPOuvqRaKfILJrQaRUtl5aZcej6ErS7ZKrn0y++sx9Tu
         WSGEMCCic2UuewAUgT3jRXoO4XhuJoQMjrbEkyCy+lX6BnWtt3adP9+uW4dksI81BWnt
         +wm5W1PEyuxungjIS6ui4XVvfu4iNBAdV0a+sVjBKSJhYPjxzYozaS0F+BS2fFB2dWeu
         TslxexsTuvJfYtNat3OclQ4+F0Dm0ut8/9nypblc1h6TcHl1AnbR81v0Wv3TwKWbLcem
         6oeR2YPoEy4eBcrAksWeJ0gO8jEi60ouGLgtAgq6q1Vbc9X0WaiLW8sBWPypRGu85B2R
         RWvA==
X-Gm-Message-State: ACrzQf38V05/uKp7BmeYeFhTHqV6dRBAJ0Goxtn8EFXuhvMujjldtTs3
        Iosaec+BK8MbE882ptERSEf++w==
X-Google-Smtp-Source: AMsMyM4H6QWebgtrEClimXbfEJCgl+fA7qmmKxkNw9CwlgBsl2gKl1/603yBgg+rs0YW7nVYwcm+2g==
X-Received: by 2002:a05:600c:4691:b0:3c6:f154:fdc6 with SMTP id p17-20020a05600c469100b003c6f154fdc6mr17950920wmo.195.1666271478376;
        Thu, 20 Oct 2022 06:11:18 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:3a82:90b0:2979:1615:9a68:f204])
        by smtp.gmail.com with ESMTPSA id x8-20020a5d6508000000b00228dff8d975sm16453927wru.109.2022.10.20.06.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 06:11:18 -0700 (PDT)
From:   fchiby@baylibre.com
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        "Zhiyong.Tao" <zhiyong.tao@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Rob Herring <robh@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Sen Chu <sen.chu@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: soc: mediatek: pwrap: add MT8365 SoC bindings
Date:   Thu, 20 Oct 2022 15:09:55 +0200
Message-Id: <20221020130957.25197-2-fchiby@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221020130957.25197-1-fchiby@baylibre.com>
References: <20221020130957.25197-1-fchiby@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add pwrap binding documentation for

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/mediatek/pwrap.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
index d24e2bc444be..8424b93c432e 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
@@ -30,6 +30,7 @@ Required properties in pwrap device node.
 	"mediatek,mt8186-pwrap" for MT8186 SoCs
 	"mediatek,mt8188-pwrap", "mediatek,mt8195-pwrap" for MT8188 SoCs
 	"mediatek,mt8195-pwrap" for MT8195 SoCs
+	"mediatek,mt8365-pwrap" for MT8365 SoCs
 	"mediatek,mt8516-pwrap" for MT8516 SoCs
 - interrupts: IRQ for pwrap in SOC
 - reg-names: "pwrap" is required; "pwrap-bridge" is optional.
@@ -39,6 +40,8 @@ Required properties in pwrap device node.
 - clock-names: Must include the following entries:
   "spi": SPI bus clock
   "wrap": Main module clock
+  "sys": System module clock (for MT8365 SoC)
+  "tmr": Timer module clock (for MT8365 SoC)
 - clocks: Must contain an entry for each entry in clock-names.
 
 Optional properities:
-- 
2.25.1

