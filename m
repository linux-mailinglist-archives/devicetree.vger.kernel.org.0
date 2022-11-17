Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FC9462E656
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 22:05:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240574AbiKQVFe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 16:05:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240648AbiKQVE5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 16:04:57 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 237E68E2B2
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:13 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id z20so2913928edc.13
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g6+ABKaCFT5+1C0Y5clbHMJQa6kjF8TIULfr4cCgl3o=;
        b=u4zUPtRBGTY9L9LHvnW9DqAWYRm0igVQllWoBz7XgHmcYSdMBuVAy58/lGWh4Dilqg
         1UGWqw1Tezv5eZIYrQAdS5o5Y1q3ZB5f7z3i9FiJjFpOBmoKbUvRPlKrhKORJiYDLCA5
         Pxu4VRIheLOlOvgE8Q7uWtouFjvgiuGkDdNjTP7dtEzfOp32WFKde4Sur0OYVYFhwHig
         ej/t/AXSZK8srV7eq50+nqPGqdyKShmDbKr5Vy2Pb5n1c1+TBEbgFx4xRQmV7BdicTpY
         2McR2oldXKaFyZNjoYkZerusy/kP6ufcoRqtvQa+Fw+QK38iG4Ra7be2auIaioimyX+D
         xsjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6+ABKaCFT5+1C0Y5clbHMJQa6kjF8TIULfr4cCgl3o=;
        b=yP0/19ET0icI0fEQI8ymPlyncXBf/2T3u6LKkVhItLHnGltcp4QYSL1LhKZ8Myms8Y
         LC8rHk8TpwGaUFh5dt0FrrlOSSww6tEueDnDQOzuaFX55uiWgLcuUQPZR91yNuHYVY5G
         lWMZzBgzRzg0kCJFt/5IPkdtNFFnkk3P7CZMaBmfRCgj5JxjJRb1hjN2yxikfADYoEVG
         OAqrhATMfuZHb1NU4y8PI3csE6lxFqfrM+E0T4Upfl6kP9Pu24nXojBKuFs2lJ+TP3UN
         O567CAb355lU+Xb82goA3RUiTcpMy0yLHFmpnMMeC/UvBcId3I1g7Qn4LFumrmC75pAn
         yP0A==
X-Gm-Message-State: ANoB5pndmv+hMRVpb2+M8kulCHUbupWwWL4GozNIK1VtPoKAr6aZ7dq8
        CFLe2sFf8Sl3MGwRaqmnUlwJTQ==
X-Google-Smtp-Source: AA0mqf74WUgvaOJMRkg/rYttZ/P7xDEgL2yEBGs7v+osI383w3rkMb4HYPZYzRoe7OA5C12sjAKUGg==
X-Received: by 2002:a05:6402:176c:b0:463:c5f7:fae with SMTP id da12-20020a056402176c00b00463c5f70faemr3583579edb.152.1668719049319;
        Thu, 17 Nov 2022 13:04:09 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7cc8f000000b00461c6e8453dsm970807edt.23.2022.11.17.13.04.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 13:04:08 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogiocchino.delregno@collabora.com
Subject: [PATCH v3 6/7] dt-bindings: usb: mediatek,mtk-xhci: add MT8365 SoC bindings
Date:   Thu, 17 Nov 2022 22:03:55 +0100
Message-Id: <20221117210356.3178578-7-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117210356.3178578-1-bero@baylibre.com>
References: <20221117210356.3178578-1-bero@baylibre.com>
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
index 939623867a646..3b92725bbc99b 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -34,6 +34,7 @@ properties:
           - mediatek,mt8188-xhci
           - mediatek,mt8192-xhci
           - mediatek,mt8195-xhci
+          - mediatek,mt8365-xhci
       - const: mediatek,mtk-xhci
 
   reg:
-- 
2.38.1

