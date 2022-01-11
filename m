Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAE4448AB2C
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 11:13:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348777AbiAKKNv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 05:13:51 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:41876
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348759AbiAKKNr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 05:13:47 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7C76E3F1A2
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 10:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641896026;
        bh=BJcC+0E6Y2y3qsaMlSAjaaYN+3MxC8IRY4wxOhHEIbc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Jk6obyhns8VIX74aukat8xkwB0vl3cFxu5HHhQkHEv4HrgG9sEdpt07MW4rV0fCfT
         B8upXaCXqGsBnDfk3iNOgdW1LnxbEQhQWAC5HQH342ANG3rwNP/pM9TJnnANsN3aFu
         JiPsUb3J/unQ+7vn5ehpYMgc0nlh3nRbDdzQYDYxzw+r/akuX/LLsa5N2DwAd61GaX
         rpYW4Ofx8+QfZopE+LWyEl5k458J2QycmlMUKGKnUWsd95p/Mvcm/D7Sop1oACNW1a
         LbCoLf5SzlOyh1GuImYvxp97M6DS0x0VInrjEzAFcA3TtOfT3Sv1baAUcE6CLa+i4c
         5pQ03gKaLXsuA==
Received: by mail-ed1-f69.google.com with SMTP id b8-20020a056402350800b003f8f42a883dso12848988edd.16
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 02:13:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BJcC+0E6Y2y3qsaMlSAjaaYN+3MxC8IRY4wxOhHEIbc=;
        b=pSGrekbGq62Y+lG46o2fLzpNpsk0wgCIFsoQxD/MzAEmiQGO77lYSknok732WZxVgv
         b6mz3LlhxshNyhlFjCfBHtg5MKnzPPGPBaOQzmTrveX2zBbS+M8vwnFg/aIJnM+Ne3Cr
         6v/U0U8dyAv4zvo3MeoA9dg48sMPphvLxe364bezUVWy9z428MDJdwobepdadH3p4JzY
         obcXCmGWmfA/AR19GHolPYcR7I+rTI3dhuYvXyHJP5JeeoeTcqmj+YTBqqwU88ixf30w
         yatQs/ZI4YzU433yCObalmg1g75JZlfb+VOZlF5TAM1xsXwvpeOjSreXQjcBhAirkWbk
         N5oA==
X-Gm-Message-State: AOAM5333T1v8j4ecFjCVT0aCzmyxCY6lpragoy5IKsOyPuptl3Gz3IKL
        c5EzYQZ6HFyta4owMq5jgH8uqBFiJhesJUBJL87je6um2/5v9QZbhJUJZIpWAd6UI+qMRA6FDcF
        Q52R1+aCN7Nqb9fI2XbNVZxK8zw7Dy8LXVYedIBo=
X-Received: by 2002:a17:907:728c:: with SMTP id dt12mr3244369ejc.188.1641896025439;
        Tue, 11 Jan 2022 02:13:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzRZEoQ5u1bGZQZJNook5L4lY9BkzKhKOYtLcERafkQAKIt2Tq7bk74PNAyjv+BJ4TXFGswLg==
X-Received: by 2002:a17:907:728c:: with SMTP id dt12mr3244340ejc.188.1641896025195;
        Tue, 11 Jan 2022 02:13:45 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id 26sm3431268ejk.138.2022.01.11.02.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 02:13:44 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 3/4] spi: dt-bindings: samsung: allow controller-data to be optional
Date:   Tue, 11 Jan 2022 11:13:37 +0100
Message-Id: <20220111101338.58630-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111101338.58630-1-krzysztof.kozlowski@canonical.com>
References: <20220111101338.58630-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Samsung SoC SPI bindings requires to provide controller-data node
for each of SPI peripheral device nodes.  Make this controller-data node
optional, so DTS could be simpler.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/spi/samsung,spi-peripheral-props.yaml  | 1 +
 Documentation/devicetree/bindings/spi/samsung,spi.yaml         | 3 ---
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml
index aa5a1f48494b..cadc8a5f061f 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml
@@ -28,6 +28,7 @@ properties:
            - 3: 270 degree phase shift sampling.
         $ref: /schemas/types.yaml#/definitions/uint32
         enum: [0, 1, 2, 3]
+        default: 0
 
     required:
       - samsung,spi-feedback-delay
diff --git a/Documentation/devicetree/bindings/spi/samsung,spi.yaml b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
index da4533feb946..322558818a43 100644
--- a/Documentation/devicetree/bindings/spi/samsung,spi.yaml
+++ b/Documentation/devicetree/bindings/spi/samsung,spi.yaml
@@ -75,9 +75,6 @@ patternProperties:
     allOf:
       - $ref: spi-peripheral-props.yaml
 
-    required:
-      - controller-data
-
     unevaluatedProperties: false
 
 required:
-- 
2.32.0

