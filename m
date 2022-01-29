Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23EDF4A2F57
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 13:24:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345438AbiA2MYg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 07:24:36 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:32904
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S245243AbiA2MYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 07:24:36 -0500
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 48ADC3F1D9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 12:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643459075;
        bh=WHnGp+/co0yjLFJTld0gSMGvtw/E8RuZJ7zwbzyKcNU=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=nxIXBXA0ALLdeBN8GDiaqVxef49iz4HTbGo5K+WfUScHf8SIHJWG1og/x3F90FZNE
         oql5zpzbnGXb3z2Sxzt3GO/6zNEbKu+izgN6xNJRLrKZlvJhjenuD5Gt4h0BEX4BiK
         hiCoIYzkwcDc5vGjzAdJlb0xJ+WtpxNmlsmbQnPbZQfoNP3uc/q6R8xPS7PlbAnlL9
         J30GyTTjYExEAFXwdAFCDE755v/3lQ+uQ2FQkWRSFz5bppUAnCaOM3JjhZGenJ4Pj4
         Rxf5Hn9ZDsNtRlMKbwQRjlNIQth3PWoDl1g0XtNPDD+2EAxOaRFGY2dcaxj/lrQ0m6
         q0EDdApMcWSWw==
Received: by mail-wm1-f71.google.com with SMTP id bg32-20020a05600c3ca000b00349f2aca1beso4208957wmb.9
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 04:24:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WHnGp+/co0yjLFJTld0gSMGvtw/E8RuZJ7zwbzyKcNU=;
        b=xCkY3tl30rLEDP57oQbkAGRVvAzP97rzTQXs4Z2YD+xgfwy25f5oFqmOBPr6Kgq2fJ
         1ZfGZLmO2vTOiwLPLXcskyTrqS4767nY5zrsdvAQcmSlgFkGdA1QeRbVsDcC+ZCVEgOQ
         BYcraPz9Sh2kXveP0DCgUix80SMqgNfN33NdrJlA8893tlAeberxg11qoGUiQ4iVU/yg
         VmW8+8syNVTMzQRvnWwG3x0GwjCnLnH5pr0qP6XfF1JSLFFntsbvPZAAYv/hDkZ1O4Rm
         /X06fbXNELEnN4Y7DCdY0yhytZnibq9ciKbpon3Fed6IuMmrqKw/g4LK93hVzfyt6KNR
         LN+w==
X-Gm-Message-State: AOAM530QgbWG6k9TGu8NbOWFhCJN65KLhh3TXcM+dgmfPEOquQ4e4TCC
        FWmJI+/z3PhHGVD0dfFfqeQr5BDHyFjSGQORIL7oU+VMGI5UMtGpgrt5YBp9tPqVgEwRGnor+xD
        rskrYY/esfhlDCR/ENtkhP8bbRGp4Q9yiKDsIMac=
X-Received: by 2002:a7b:cc93:: with SMTP id p19mr10768242wma.175.1643459075064;
        Sat, 29 Jan 2022 04:24:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyEYEjraGsXvaSH5x5kd6wGHrIGvpR2dGZG+9P2CfNNVi65TtZt1Y5RbfP/w5kfBPlc33FJqA==
X-Received: by 2002:a7b:cc93:: with SMTP id p19mr10768229wma.175.1643459074936;
        Sat, 29 Jan 2022 04:24:34 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m28sm1106875wms.34.2022.01.29.04.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 04:24:34 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] ASoC: dt-bindings: samsung,arndale: document ALC5631
Date:   Sat, 29 Jan 2022 13:24:27 +0100
Message-Id: <20220129122430.45694-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129122357.45545-1-krzysztof.kozlowski@canonical.com>
References: <20220129122357.45545-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arndale audio complex might come with ALC5631 which is compatible
with RT5631.  Document the compatible since it is used in Linux kernel
sources.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/sound/samsung,arndale.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/samsung,arndale.yaml b/Documentation/devicetree/bindings/sound/samsung,arndale.yaml
index e7dc65637f02..cea2bf3544f0 100644
--- a/Documentation/devicetree/bindings/sound/samsung,arndale.yaml
+++ b/Documentation/devicetree/bindings/sound/samsung,arndale.yaml
@@ -13,6 +13,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - samsung,arndale-alc5631
       - samsung,arndale-rt5631
       - samsung,arndale-wm1811
 
-- 
2.32.0

