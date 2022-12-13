Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F60264C0CC
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 00:44:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236946AbiLMXoA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 18:44:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236843AbiLMXn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 18:43:56 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EB3A15804
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:55 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id c66so20192516edf.5
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CMWE91a+pM6oT2mNZ7gfHqIhmh1zpfFSCXxbfA75K/I=;
        b=KjTg7+fHnrZSJ9TzbIsuime+L1iUIUwcVnapNP7Kz2D3un0pTvjzZ2erx7j4s4gVEU
         q2O+Vn65Z3QsWnPwgojrcUuASdZU9O7eDJQMkV6U1OxmSnuYP5GNYwZrPChVe8WFciB2
         OiPvOOHpgKhu/WeZsxcNCVhLDYqw81qj4+mqLePCEsClvo2uz5DZ+UF9meaL6L+aGPpP
         otkWO9YYIY9wAzU4O+wq71Ly0Sh4qD1zTPYUhH+bPgPaJE+KDqUgsnIMAenQaWv1mbIZ
         vvN1y0vi2rSHWWPw00xS2aB/KQb00bBRXp9lm4MoZjLEx+w7ivYWFXiITBSHqTzALnmc
         NFvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CMWE91a+pM6oT2mNZ7gfHqIhmh1zpfFSCXxbfA75K/I=;
        b=VgIhQQ+Jxh2O+z0Ov4Etc7HINeDLf3Di6+meNhh0wb5aG+MyTlUaSocvmSKzunLBxA
         oRw482O4GgOsqUEwFLQAAqIRqbFyGCE5vOsmNMFv4pthA/1aNQZGtp27OlfzNg/t9rb4
         Ahe1SaIU5GUrea4Bb7xo2UC4WcAsSwuH7hUkz6dwQx3sB9gsJyb5nmTkat+Uta8hkV3H
         HnEo6cL99dyOltz9dhGPJOUkV88EQFZyJBOMmM2Mo8GovqunYrKs25LYfcxt5HKv3erP
         w+oQ59mQ+L+Yn/iZ9saE9MlelFhM998ok8UwKW2bGfco4NHOdYnlYlrr6zsP775b6NCn
         a43w==
X-Gm-Message-State: ANoB5pnbql5lT8L+b0PPxBNM6tPUvHKXfGPyWvE0wTllvfdVfJcLI+gd
        XWn4SBby/hR420VmS6KTCLPIGw==
X-Google-Smtp-Source: AA0mqf7VY+UGWGAMmObwTeYssJFUqQjOW3MtCDrFoe81hJCUG38R80/7WKyZmkUHMO+BOY6yug4ZPA==
X-Received: by 2002:a05:6402:913:b0:46c:fe2d:a588 with SMTP id g19-20020a056402091300b0046cfe2da588mr17564775edz.18.1670975035226;
        Tue, 13 Dec 2022 15:43:55 -0800 (PST)
Received: from predatorhelios.fritz.box (dynamic-093-129-109-038.93.129.pool.telefonica.de. [93.129.109.38])
        by smtp.gmail.com with ESMTPSA id f5-20020a05640214c500b00458b41d9460sm5407498edx.92.2022.12.13.15.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 15:43:54 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v5 6/7] dt-bindings: usb: mediatek,mtk-xhci: add MT8365 SoC bindings
Date:   Wed, 14 Dec 2022 00:43:45 +0100
Message-Id: <20221213234346.2868828-7-bero@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221213234346.2868828-1-bero@baylibre.com>
References: <20221213234346.2868828-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
index a3c37944c6305..c119caa9ad168 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -35,6 +35,7 @@ properties:
           - mediatek,mt8188-xhci
           - mediatek,mt8192-xhci
           - mediatek,mt8195-xhci
+          - mediatek,mt8365-xhci
       - const: mediatek,mtk-xhci
 
   reg:
-- 
2.39.0

