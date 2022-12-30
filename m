Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA30659C13
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 21:35:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235474AbiL3Ufx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 15:35:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235470AbiL3Ufv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 15:35:51 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFD03CD9
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:35:49 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id l29so24666074edj.7
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nQFWSjnAmXGCxMB5DVpOmGczTzlI1ebWvjBAsrHPlS4=;
        b=1nNFGNhve3KqK6RlreucmsxHteknOmdOaNO8JnlwNb9lHY07YiAC33PsEJ6zXeLFBb
         dt3prhxRI8yPypDpacPQDKNYm9TIehRAzpLeaO1JFw2tWWF9W4tE1BXFkFJcJkEihdz7
         wnXCmTavn5xqaF+Bdy08/LRhSZ0vxhR/5iRrILZW0iigMFRyd71lK+5rl+vMhid1zpl0
         YjwbLrimNFd5xcm/3wYwRGhOTK/D1lxc4XBLq5OQ6KIEAGcDZDSx/29SRt0wAec6Cc5J
         MRkh89LQz13Q8yrBvctjUr0GjMWh8qpTpQv2sLqRUENPWd29JaxIU9Dz6I/1pGwr5Ed3
         MFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nQFWSjnAmXGCxMB5DVpOmGczTzlI1ebWvjBAsrHPlS4=;
        b=12wYfettvZL3heN74gz60Ki2guLIFO74g6/SXbtkKwq0OrV3XNRcAuhBS3x9MrZ817
         dr1xW8ns3kUNPFXDAdMsrwxBL6oJaXSwk6lOmSBqrVtdDy+fhwc7yboqgv+nv7B2q0Vh
         1HcR5tgrzF6xZZlVvEWxK107nyQJSbSfLQUxhLFc3Zq5KCkCQBz4nI3v2ZKNog+m3qK7
         daYUSpT9GCVHX5a/eXdqZ1aqSJZWvztRsropI/UwGWVlRBl2WRPVzt1BZZxqA89w6VC0
         IQLJvhHgp+zaMNYZz1WwCntMO3gQOxl21CVGYTncIp0yZIrgcT38F8odRNHeuj5K2Nmb
         mFuA==
X-Gm-Message-State: AFqh2kpkPm3/bjAonbVoMkmwfQzupt0fbEMUOwyDiyHQA6YJVqAEetzE
        4pi8Z5QiSATGMfaqVZ3jlPr5Iw==
X-Google-Smtp-Source: AMrXdXvRRE7qV5S21eWJi/mZqwiBlRqXMqidqBxglTJ3pjDMqDyO+pFxWrpZ6hNS5jG3xuf3JUKRtA==
X-Received: by 2002:aa7:db47:0:b0:46d:b89a:de1e with SMTP id n7-20020aa7db47000000b0046db89ade1emr25833171edt.1.1672432548199;
        Fri, 30 Dec 2022 12:35:48 -0800 (PST)
Received: from predatorhelios.fritz.box (dynamic-2a01-0c22-cd9d-4b00-ef17-3c78-1696-7315.c22.pool.telefonica.de. [2a01:c22:cd9d:4b00:ef17:3c78:1696:7315])
        by smtp.gmail.com with ESMTPSA id c10-20020a056402158a00b00482c1f1a039sm8350500edv.30.2022.12.30.12.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 12:35:47 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        matthias.bgg@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, gregkh@linuxfoundation.org,
        chunfeng.yun@mediatek.com, linus.walleij@linaro.org,
        lee@kernel.org, maz@kernel.org, tglx@linutronix.de,
        angelogioacchino.delregno@collabora.com
Subject: [PATCH v6 5/7] dt-bindings: usb: mediatek,mtu3: add MT8365 SoC bindings
Date:   Fri, 30 Dec 2022 21:35:39 +0100
Message-Id: <20221230203541.146807-6-bero@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221230203541.146807-1-bero@baylibre.com>
References: <20221230203541.146807-1-bero@baylibre.com>
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

From: Fabien Parent <fparent@baylibre.com>

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
index 7168110e2f9de..d2655173e108c 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
@@ -28,6 +28,7 @@ properties:
           - mediatek,mt8188-mtu3
           - mediatek,mt8192-mtu3
           - mediatek,mt8195-mtu3
+          - mediatek,mt8365-mtu3
       - const: mediatek,mtu3
 
   reg:
-- 
2.39.0

