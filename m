Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B21948C1DA
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 11:01:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352288AbiALKBP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 05:01:15 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:55514
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239681AbiALKA5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 05:00:57 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8B9A1407AC
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 10:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641981655;
        bh=sxpoeazVKfRv/TTxlIPcEu0VInhZebJSCyyifiEPVW0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=tUJuFG8OXmUW0dve3bTnerR9+TleH5HxCy+ksux/ROGBarSwX0SpYO8M+cUTeBHNC
         jHcHJkKb1toPOKVB38DnBLU1bLRGcAYKxYbhb4T3X/BMDpyns+MYHXQR4DxxQLl6Fm
         ckKgxd8wHFJMfBYzICnQzrLFnhFaJlbvRbjKDEE7zi4TYf8LaBlvr8pg8ebgVjzXd8
         BfUl7lmrvDKrMOHJOhSXr7JhCPQltk9B6wvNAnq7dRrggI79VolNc+64xaBqZDuMJw
         oTfXmmHCg4ExKa1y1iegY21SFGVr7ZzvVXsgrkqEfzW0bkjCQ6ePVVb49OZs/luD/r
         0CucxLchjwspg==
Received: by mail-ed1-f70.google.com with SMTP id z10-20020a05640235ca00b003f8efab3342so1831657edc.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 02:00:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sxpoeazVKfRv/TTxlIPcEu0VInhZebJSCyyifiEPVW0=;
        b=CelSE2wygfm5c17aJPX4Sfrkm7sIcDOgCkgf4CfKVpLh5Vz7+OdcsvIRpezlY1DOIN
         V2YikDV1yenrXh61OPVEdglWg6eqK9rpqzluHn/2FyqPGwJ0IGYIwPL8yHh96xoEbf/s
         t2/wwRrPfzR6AoIbuByos5KCTHXj9UHNEskniAL8CdhgCmWLEv9ZofdMQlkY6hYN/SJ6
         PD21jhGR7HB1uw5Eh9qD4ma2y2Cq5Vu7S+mtSfU+dluWjViAoD4ZS8diUhJ7WetR/DJq
         Y4i1z1Khg9U27Wi/zmf6OCmBoUmJwNsCiT0sUkVS5GkAR2TlZiblItA3TkDA31OxEfL3
         c7FA==
X-Gm-Message-State: AOAM530E7h0HEXu/4n3y88JLCF+iH/u/m0E429+p+6YypukW4XBB+ZUc
        4A7D+ElqM7EUecREH2wTno6y7dQ8yKvRn+RShWLL8sbgpsmjEhp0wDvqbE4ejVgn6nDcDUOmQtc
        2cp0CYQyrqpy9IDQRmYAeEboK3DjtZG1+3xGXtXA=
X-Received: by 2002:a17:907:7d8a:: with SMTP id oz10mr2375256ejc.320.1641981653520;
        Wed, 12 Jan 2022 02:00:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzzzXqkrKxbgq5mvkmGUzVcTyBUQLnw1MTu9OyibOn3Q74mOavVnNmdXwrnaGEsFJ/VZr09+g==
X-Received: by 2002:a17:907:7d8a:: with SMTP id oz10mr2375244ejc.320.1641981653311;
        Wed, 12 Jan 2022 02:00:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id hb11sm4311083ejc.33.2022.01.12.02.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 02:00:52 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 3/4] spi: dt-bindings: samsung: allow controller-data to be optional
Date:   Wed, 12 Jan 2022 11:00:45 +0100
Message-Id: <20220112100046.68068-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220112100046.68068-1-krzysztof.kozlowski@canonical.com>
References: <20220112100046.68068-1-krzysztof.kozlowski@canonical.com>
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/spi/samsung,spi-peripheral-props.yaml    | 1 +
 1 file changed, 1 insertion(+)

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
-- 
2.32.0

