Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86EC6629019
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:54:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232265AbiKOCyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:54:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232519AbiKOCye (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:34 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02EC113F08
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:33 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id gv23so181642ejb.3
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhLFlyx+HwJ1ZM4Lgtghsv3nWTmtK87TqidUEKXNRv0=;
        b=mwiE5YmA64m7c9RqpS46cGxcmWS3abT7KJjEHko54IFdBQzl2rDTmvWMNjmpZYQPMx
         +e7PSOkqjf3gsQ/OYibbL7V3OHS3HVIdBXxkZxY12kpV2gyMHIsU5YYAwQwWbth/EBmo
         k9/V5mOgogsH5yeo2SizHPHCID58H5PD+jTQ1sopX2I3iCupyDUUsU04QKb4LDLj9pDJ
         atK77+jCvg/GeeLNFHAb/5GLnr9wTVBd539NB61eMhOHArYpGYeNE/Wuz4MhKv06gimQ
         xXo1M8la1v4Xynsd4snlm5cHjKQZFmSIdBRJz8bDkaCL+8bnBhWGKvK1qBYIEJXHweji
         V5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhLFlyx+HwJ1ZM4Lgtghsv3nWTmtK87TqidUEKXNRv0=;
        b=lafxiWz8AirN5sY4NQOFRwbGElvC9VChia8nvpPvJP1h0R6yW+Y+6yfZ1n5mL4X2e0
         BpuMRYFXLWvEgvz+jxRpnkpOabk4+JA7Gy51Nil044ccOD1rl2Viekxepif2LUgV917X
         qIG4FyF1G3NpxDcKGkCVEb1yY8CY8R+MNWHXT877IZ5I5RgVT1JzeQhR7HyG8nX3sdSC
         RF2+JcniDsLC/gSrmBwTOz1W2vthIbn5TUtVtpiex15nAG8S4SDMTmBpHtnCITeZZtd1
         WuaZgeM19SHxsVZz0kitD1HwtU641ZD2iqvvgR2kuFyZHYrTkkhb/39NzhSMsvCWrkO5
         yu8Q==
X-Gm-Message-State: ANoB5pmS0XDZm3jUtY3nAdbqVjNxkoaEb9iZlHnDxmbpCnXRbwB9pS4X
        TcKQQPPpDofbJ5lYIAZRAOmgMA==
X-Google-Smtp-Source: AA0mqf5JivAi2ZF9ol363qK+7ytfa4atR05s5ByGG1JukcRFiWfAhIL4BTILOtnHOK4xhIOEg7JA5Q==
X-Received: by 2002:a17:906:814:b0:78e:ebd:bf96 with SMTP id e20-20020a170906081400b0078e0ebdbf96mr12315635ejd.625.1668480871620;
        Mon, 14 Nov 2022 18:54:31 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:31 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 03/15] dt-bindings: iio: adc: mediatek: add MT8365 SoC bindings
Date:   Tue, 15 Nov 2022 03:54:09 +0100
Message-Id: <20221115025421.59847-4-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
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

Add binding for the ADC present in MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml b/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
index 7f79a06e76f59..ed582c6e7ea9c 100644
--- a/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/mediatek,mt2701-auxadc.yaml
@@ -38,6 +38,7 @@ properties:
               - mediatek,mt8188-auxadc
               - mediatek,mt8195-auxadc
               - mediatek,mt8516-auxadc
+              - mediatek,mt8365-auxadc
           - const: mediatek,mt8173-auxadc
 
   reg:
-- 
2.38.1

