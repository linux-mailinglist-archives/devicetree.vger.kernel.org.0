Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 922C14985B0
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 18:04:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244099AbiAXRE2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 12:04:28 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40292
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244082AbiAXREZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 12:04:25 -0500
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 970CB3F1BE
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 17:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643043863;
        bh=WHnGp+/co0yjLFJTld0gSMGvtw/E8RuZJ7zwbzyKcNU=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=d7VVSyyF+NkJuWtcFqfiTy1bh0gXByt5RSO28+WJtOwe+M9SKalXD3osvvcrWQeWo
         xYmzbQ0uuBTCkzgzpS3Zwk98kFRloZSe8yiXiXXOICRmFTvwNlSbqvyXugNEAW0qkL
         Ar4AmfrfYa6sNEXrV/jBjLh4KeACLtme9TL/E6MtLr8XMAq2ztvfpM7lGYmZP7E3K+
         KkmrYp7J1wrA25DoCB3DshOcaMo5yLVcWE7e6ulaLwLAmmp0kx+ZPjmhl57/VqE+mx
         8f40cZPxR/CrT2018G3oI88sbPc32/9Oe6xJxgVleNvWTMomXLO7PWkSz24lD10RNr
         nuwGMcrnwRkPA==
Received: by mail-ej1-f71.google.com with SMTP id v2-20020a1709062f0200b006a5f725efc1so2350368eji.23
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 09:04:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WHnGp+/co0yjLFJTld0gSMGvtw/E8RuZJ7zwbzyKcNU=;
        b=ZhBdW/zxeI7mC4bXB4N/p8rRWUEeYa0PZqahaAWbZSr0LL2Q1/cJfWjZjbvVoD0Zrn
         at/TEy9YOK91nzxHn/A3M0Uxnvck8ON1ohCZG+rK5MLcqfZbhQwgz19180JRWsODTnJI
         GSYTpjWJzOPPLOkxDxMMa8IsaBANo19ynO73E/5fEEVTiNLxU8Zek336752xpRaBFMK4
         Gkt+U5kZJhipmljK8LvXcZeOKAKdSwjTKRo1X4m5bfGKPD9OLAZq0sXG7vqJXBdwhXqB
         fWsm8XkqvB7RWtadOu5ijXV+IUejaQK6/aBA5rfDJhZ5zyjVBxvuiwq/jziB+hNKWsQR
         0y8g==
X-Gm-Message-State: AOAM5337Y7KzGduyZCDLj1UKRSSRAGagO/E/h1Uj6IQC9biTR214dwo3
        UbRrToo8P/86m3qzyQ43FFHjlKRjZUkSMwSiKqMPCs7bTPRznn+KYcjM7ALDU5GLGWNfPUS18ax
        Y8zVZJYzhZipWkAD88e+/6Fwi7DuskQNWUvcpLCo=
X-Received: by 2002:a17:906:5596:: with SMTP id y22mr8179345ejp.8.1643043862518;
        Mon, 24 Jan 2022 09:04:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJylydnv9+0HE5iRBYqNGtKIgdOAVkwlbhJwvlM+lFHa3jNFMGCzlCqPBbQevZuxHqp1bGdkMw==
X-Received: by 2002:a17:906:5596:: with SMTP id y22mr8179330ejp.8.1643043862324;
        Mon, 24 Jan 2022 09:04:22 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o11sm6903846edh.75.2022.01.24.09.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jan 2022 09:04:21 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] ASoC: dt-bindings: samsung,arndale: document ALC5631
Date:   Mon, 24 Jan 2022 18:03:33 +0100
Message-Id: <20220124170336.164320-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
References: <20220124170336.164320-1-krzysztof.kozlowski@canonical.com>
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

