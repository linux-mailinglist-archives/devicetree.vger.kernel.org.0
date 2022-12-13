Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE3364C0C9
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 00:43:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237075AbiLMXn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 18:43:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236923AbiLMXny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 18:43:54 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25FAC15804
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:53 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id a16so20183133edb.9
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1o+J70yLyVR2sOUu4UxPxrOg5DN55K4T4PHkpCAWjn4=;
        b=wORGT+IErpNloxOBrcuEF3V0K95c28pxI6CUW43ehtacgN64O4wuoQMWVMYwflNV18
         LtfER7cU6y//IYxXH6rHv/nUkSrwpjabljAsTXMEQQVsQOIuxusklexXtRS2HhW2E+M9
         RHL1KamjZitB/2rbpYL9YoyJruQAz8cO17AnxMw5CDCxhqm54IgCKZwwiEdKUAsZMv8Q
         B5dwE1h81HAntKODSwCexeyPsZz/6LMVYPtueVRljyNMgUjPxba8eX+i3tjKYwzTMZXf
         ewC9DISbTQyOl76QBgttZpU1yky1a41JPHqcZ2xCq9pVAysDEqINJvpaN4ft0KDm0gsG
         +aWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1o+J70yLyVR2sOUu4UxPxrOg5DN55K4T4PHkpCAWjn4=;
        b=dSmDPNP6oJcUjXoAAWItAE7tA5/v6kHMq+8dHaTJLY2emtqBPBLW/xFlbujNXtzTV9
         PrGtrq+WXyNRDCgOcOS6frUmvjUQRAp5wHLJBzmT7zv7CBFRVqJMgCEEV7nmH+TZHZHD
         eAB0SgZ9R2deWE7KMeXSBkkYGzRgizGGZRs2QQDk3Te89799gNkB4+kgDEL2HAigTHQh
         mwBwpcwWBHtqKc1E4vz+zhGIo/87MH4uo7SJKv/N53Mw00HiWDG3dhj7nPaesQFD9xWQ
         MrvAvT6R/f/0jPRVuehJK9GGv0C7mnGAS6i7pMuVyDy65e8ahqua2x+oi0ALIzhfXkVJ
         UOqw==
X-Gm-Message-State: ANoB5pnI6UJHZycUMdhyAcjF2JEBBvl6G8fwHEeLnwt3046Gt5LNw/HQ
        fjWbX8dRfNmC+C8dUnlnRTdlcw==
X-Google-Smtp-Source: AA0mqf6bcglIg2qJY5ALdaxVVJdoWYM0lGfOFG1QMFMMUhShdk4Z6n00yKzWtIpU77TFfb/M19JI7A==
X-Received: by 2002:a05:6402:3445:b0:46b:14d8:af9b with SMTP id l5-20020a056402344500b0046b14d8af9bmr18887312edc.38.1670975031767;
        Tue, 13 Dec 2022 15:43:51 -0800 (PST)
Received: from predatorhelios.fritz.box (dynamic-093-129-109-038.93.129.pool.telefonica.de. [93.129.109.38])
        by smtp.gmail.com with ESMTPSA id f5-20020a05640214c500b00458b41d9460sm5407498edx.92.2022.12.13.15.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 15:43:51 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v5 3/7] dt-bindings: mfd: syscon: Add mt8365-syscfg
Date:   Wed, 14 Dec 2022 00:43:42 +0100
Message-Id: <20221213234346.2868828-4-bero@baylibre.com>
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
2.39.0

