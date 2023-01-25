Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D022A67AECA
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 10:51:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235361AbjAYJvL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 04:51:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235368AbjAYJvH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 04:51:07 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EA085252
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 01:51:03 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id n7so16433813wrx.5
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 01:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SPsz6CoLNjPAxyd2ASpUS9AhmaiVkC3z8HgK93csZ1U=;
        b=atYXCcfROx7XbUn/LZ+kGkjUtnHTe+RMm1MuS5SWM+LzKJizJlgLzVVqP0QyPeYu6F
         aHTWuUChw1wGBB40BThmH8Y8mP6onEz5fBTtxMMerW/SBmRLNKqNvHog954EYkxbPC5C
         nTP6s/sO3jQnZ4vceHG51c24JT07I1p/iRwUiMQHlK0qEJEk3HyljgDNsY7VjMcHG05u
         ItflGdO/S19WJKwTfoxvJTm//chzfWC4bu/WpNjEVShv4M/xh/2dA/4eHG0PyxpmuMff
         gHlVjtLklONEyQs/Dvjb4CCSwalhw1QRg9AZeSsTEiGHvGEGGKQYCveiIeTDnoNCMPqj
         Gv/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SPsz6CoLNjPAxyd2ASpUS9AhmaiVkC3z8HgK93csZ1U=;
        b=nDtbMdbWPyrxP57+rKzqeG3BtRgLUSbMexwnn8I0QViiNIPjtfjIuaIkChRH1p2vGd
         +85VUy5Geb54y2nqFPuh/oAWXYE/Xmd1scAFtj+LmV+CVvYBL+G7RenEoApwgZSIhATF
         TR3CUZ72pF+GwUi/iqW/Q06CxQEu/pP2APHrMokAkRz2Nl4SaGxSpEUZolSoS9WJd/ek
         I/zmMhXf6oRy2uu4s+96rKhFANoaGAajN2UBohosDamH6Gr3a5aUEUcbwN7Wrg4dH+eA
         2QIVH4EnjN4hgDPzrJLrJ97BEcINU+lvhwzJxAtb8O0/kNLNQGpM80VTXjVFw3Gdl2bl
         Kjpg==
X-Gm-Message-State: AO0yUKW1ehTHLulT0sx0XjaXhY1kx8s8OfRNvSRt5S0nt7s/XwJBnCOT
        6kz2b5O3FJQx+L1VEcGInKaN9Q==
X-Google-Smtp-Source: AK7set/16CPFtxuNwWrrIsJHEQdd6BbpeVn/tMdMC7hRCr1vC2L5+u84jU88vqJoTNvl4fhYH4s9jg==
X-Received: by 2002:adf:a38c:0:b0:2bf:bd9f:23cb with SMTP id l12-20020adfa38c000000b002bfbd9f23cbmr828592wrb.52.1674640262041;
        Wed, 25 Jan 2023 01:51:02 -0800 (PST)
Received: from [127.0.1.1] (62.213.132.195.rev.sfr.net. [195.132.213.62])
        by smtp.googlemail.com with ESMTPSA id j26-20020a5d453a000000b002bdf3809f59sm3955072wra.38.2023.01.25.01.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 01:51:01 -0800 (PST)
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
Date:   Wed, 25 Jan 2023 10:50:29 +0100
Subject: [PATCH v8 1/5] dt-bindings: thermal: mediatek: add binding
 documentation for MT8365 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221018-up-i350-thermal-bringup-v8-1-23e8fbb08837@baylibre.com>
References: <20221018-up-i350-thermal-bringup-v8-0-23e8fbb08837@baylibre.com>
In-Reply-To: <20221018-up-i350-thermal-bringup-v8-0-23e8fbb08837@baylibre.com>
To:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rob Herring <robh@kernel.org>,
        Markus Schneider-Pargmann <msp@baylibre.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Michael Kao <michael.kao@mediatek.com>
X-Mailer: b4 0.11.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1674640259; l=1282;
 i=aouledameur@baylibre.com; s=20220920; h=from:subject:message-id;
 bh=C4Y1Pt62EoG+4OlWvlrEg4v27fXBsImkQVLZNvvWkNY=;
 b=uD21fUR/ws6xOLFPdRjyxdjDPlgRNM1W/KbrrSQK0yePNU+jk8+RDZVIRiljHH9YhIUoHdXfL610
 77rP5aXeBnwY8vNXCIeKsqzHT+I7iazUu7nOuyhH1XkSUFQH50HC
X-Developer-Key: i=aouledameur@baylibre.com; a=ed25519;
 pk=HgYWawSL4qLGPx+RzJ+Cuu+V8Pi/KQnDDm1wjWPMOFE=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add the binding documentation for the thermal support on MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
index 38b32bb447e3..ac39c7156fde 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
@@ -16,6 +16,7 @@ Required properties:
   - "mediatek,mt7981-thermal", "mediatek,mt7986-thermal" : For MT7981 SoC
   - "mediatek,mt7986-thermal" : For MT7986 SoC
   - "mediatek,mt8183-thermal" : For MT8183 family of SoCs
+  - "mediatek,mt8365-thermal" : For MT8365 family of SoCs
   - "mediatek,mt8516-thermal", "mediatek,mt2701-thermal : For MT8516 family of SoCs
 - reg: Address range of the thermal controller
 - interrupts: IRQ for the thermal controller

-- 
2.39.1
