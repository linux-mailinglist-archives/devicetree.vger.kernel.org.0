Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1680D629033
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:55:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236858AbiKOCze (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:55:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236982AbiKOCzG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:55:06 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85EDD167D0
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:41 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id n20so12323939ejh.0
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8QyPVEosZOT9SRw8683CVFBluZOEj+iHFopqFxbf8ZA=;
        b=dFDH/NDClXf2CSD1KW7F9L8zDnLLNLnTxtGpa2IKbuc3la4b1QOC6sozbzE34T1Eoe
         sS6GY0hhKr8TQY22al0Gt3O+jvxOPKrD/FrcGK2r62uyG0MHgtqhgI4PJYqv1jA0/hec
         qWga7qGIP6Id7Ma1QGgRNC+ZKma/BmmoBeMpdoi/Jl5DSzRNriKj/QV1CdmDSvRj5n5A
         nyCso0nlV37112Lnud5HVFC/grPoF97n6otTuqL9pxaNxi5sxVVnoK22Z0O9VwvCb+eZ
         pcHvNEDkLNHKHGwD2odkF9Z5fTiyzo3zIqgqSXp9VpnBBU0hMARJp9VlNivj1XC5SKJM
         Ncig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8QyPVEosZOT9SRw8683CVFBluZOEj+iHFopqFxbf8ZA=;
        b=Sk7A6oYoYb4n5D46XNl5OdyEMxxWrXiyALi0pBlIBXJMXt5yUmLK1Kmb1t+Pc3sozO
         7Je7OT/924rlY1ZiQ3fEGmK9BlIpdp2+fn0qHl9Kz0/RnLnDhEiXo1RudmDh2UGGvsKm
         5y9a8tJ9Za7SKvLOlyZP6xu8yi1bRBAk/7rIZCAv/5y1gn5Iuto+zz5cIe2xUPzdxa/I
         aT9P61bQTSH/3xx4FyFiInNmptu9Ef6q0T1j5+vhp0Ab19lpYck7+uEr0jWSwilZAqTt
         AVSnqKZ8bCOEfuqaVfOOL0ZwlOrI/9ODsWztnPLenhcCryY9WiiJMO3qyM5pPI49Xgvo
         4pHw==
X-Gm-Message-State: ANoB5pkzWODi9LvkS8xv58SxW/bRvRZyr/rAk+iK0RB2CdFPjwmNZRz0
        4KDvS8Q+zRWjiY50YNlsX9+rzQ==
X-Google-Smtp-Source: AA0mqf7CDWJLqJW4pahh1xcfZ1GfdwJmgRCtm/3IYxaNGTgYbs4RnFwtJoamf2O2tqJFNYKrqqu4Rw==
X-Received: by 2002:a17:906:32d5:b0:79d:f5f2:6f55 with SMTP id k21-20020a17090632d500b0079df5f26f55mr11497106ejk.531.1668480881181;
        Mon, 14 Nov 2022 18:54:41 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:40 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 15/15] dt-bindings: arm64: dts: mediatek: Add mt8365-evk board
Date:   Tue, 15 Nov 2022 03:54:21 +0100
Message-Id: <20221115025421.59847-16-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
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

Add bindings for the Mediatek mt8365-evk board.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index d76ce4c3819db..6781fcdb9fe69 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -246,6 +246,10 @@ properties:
           - enum:
               - mediatek,mt8516-pumpkin
           - const: mediatek,mt8516
+      - items:
+          - enum:
+              - mediatek,mt8365-evk
+          - const: mediatek, mt8365
 
 additionalProperties: true
 
-- 
2.38.1

