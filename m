Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 485E564731A
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 16:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230380AbiLHPcN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 10:32:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230339AbiLHPaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 10:30:52 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E7B781398
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 07:30:46 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id f18so2036349wrj.5
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 07:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q3nZeW09fXhVKKN3KyKLvbBj2rJc2M/wLUemiWl6Iqs=;
        b=YyB4q4SP2Ry2z6DrrRHmmwjWcPgRFwce6rxxmTxyykraQzc/9RkRP51FXEwHqZO7m/
         20wYbxkj8FWEHX88116T3WnWkCOFXqerpwf5iZ/n3l4lqcXnGpqP0AswXb6io8a3bJDE
         0tYCR3oJ9z+1xzl7MFTvoXVgohGjqbKUq/Ubv4wvkgzmemfm1HWm1ElB7eujYVenf5eq
         SERSELje+miYCcp9/+8hwqMAcaGpx6ry8DXjpTMXfLqhCBMtoWjoSnItTH/Uf2rmethG
         iofiTxEVvRhzFkl0Kat1YIuNJwBEb1OCyu9ZInTMC1nJ/z8o0LxSnyyjw3R7nGYPc9uj
         Q4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q3nZeW09fXhVKKN3KyKLvbBj2rJc2M/wLUemiWl6Iqs=;
        b=pBUeUxqKS8q4uG8r5e9U7MRGQAlyp0ZjKSSBUKUgVHyK4LG0/JyUvW36+806SxuOBQ
         9HYszLF7HPwV/QG2u7t9YeDIcScOdoxrwcdkDwyiSQrmkpuwWpZFWDyofI1Le1l1+no3
         ddO1ycFV3QZeN04PLQ9QTQsFw0KCngC75NTEGTmm9OjfCYgRBYU8vg8RV0mMj6XHlm5t
         I2D/24YMjGK7+xO+BRO23tvnPg1C+olRmXdvXizbchrr8E/RQT0ZTX2bxI1WDQ/+JeqZ
         pHYD0VPl92/fsDaAr7StOH14aI0gNODZ7OBcQrOCp7Kkyah89AkFETleHNYj8acOkkmO
         c6Ug==
X-Gm-Message-State: ANoB5pmFywnZB4bTZrACqGCPfYY1F7cYsOxrxA9tbqeH+tDslwQdTbjx
        GGfPC41S524ZI1PQeV1V5N8yjw==
X-Google-Smtp-Source: AA0mqf7iR2EvjsGHr5MUa13qi18194p51dzW5Cj4dAGfA4boSpbwmRh+IGQ2kMfCSK6jzlU1UqxyFQ==
X-Received: by 2002:a5d:58ea:0:b0:241:f85e:75ca with SMTP id f10-20020a5d58ea000000b00241f85e75camr1571723wrd.9.1670513445136;
        Thu, 08 Dec 2022 07:30:45 -0800 (PST)
Received: from predatorhelios.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h10-20020a5d504a000000b002366553eca7sm10673239wrt.83.2022.12.08.07.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 07:30:44 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v4 3/7] dt-bindings: mfd: syscon: Add mt8365-syscfg
Date:   Thu,  8 Dec 2022 16:30:36 +0100
Message-Id: <20221208153041.3965378-4-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221208153041.3965378-1-bero@baylibre.com>
References: <20221208153041.3965378-1-bero@baylibre.com>
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

Document Mediatek mt8365-syscfg

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 1b01bd0104316..7beeb0abc4db0 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -50,6 +50,7 @@ properties:
               - marvell,armada-3700-usb2-host-misc
               - mediatek,mt8135-pctl-a-syscfg
               - mediatek,mt8135-pctl-b-syscfg
+              - mediatek,mt8365-syscfg
               - microchip,lan966x-cpu-syscon
               - microchip,sparx5-cpu-syscon
               - mstar,msc313-pmsleep
-- 
2.38.1

