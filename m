Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D12149417F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 21:10:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243247AbiASUKS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 15:10:18 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:58618
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1357267AbiASUKQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jan 2022 15:10:16 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4478E40029
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 20:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642623015;
        bh=/U9f8dPD0Cr+afsp5QbiqjtMEBMAYndRUEG/KOD6Wsg=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=QwhXUBPJY3arxS8uKXHf216WX48cvVL/vjmEfSJwfUxhFhHZQDkUMbFZs+MGc00O3
         C5yvcnJjjSH0sLk67CjSYUrFcCzA4mtnrOsAWno4vqMM/BUy1RW0Aj7khOB6XzyOQl
         GL/L8r7+dFocM8kv1fSMHB22+r83jWnTjHB4kpzSkdvOVcm7yHLbTtf9mob9+WwIDp
         c1jst65JtmxzYh5u57fjqaTk9ia0mL4czN6EwLmYF+u/yy/V4AeVVSMOvwZIZ+HPje
         nDIQppkVaLZvQ6eYFNGeHqon8mzTs2ZSey6zb6WA+rk+nmVyo5aF6lzCpNDjIGapul
         e0UL9i/OHVmCA==
Received: by mail-ed1-f72.google.com with SMTP id i9-20020a05640242c900b003fe97faab62so3714680edc.9
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 12:10:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/U9f8dPD0Cr+afsp5QbiqjtMEBMAYndRUEG/KOD6Wsg=;
        b=Ypz8kbuyIyYTIkxQsevx6h5wu/kHyUX0kZsjkMzCtsMoK375DWSpO9qCO+D9ZbV57i
         A16LGV5F3Cn4Qj7dMT/zc7zAPE8cbtVE0pAeBjUNqgq5hkcutL6HGKGbwZt8LKfOYO0p
         8/g58XIc1g8aQGGAjJRtGqliDrNcAJ3aGuiAYEGrAq27mZWT+S2aS2VoIOA3Cltxq4z4
         Yi2ULyhcnQUoZkWkWxAwBeu9CBk7TGpyvpoH3c6N00806iZhN21skrY1cSrGIfQwVhxZ
         QhLOKWxhDZ96uc6w7zMsRjnXgmwDxcj9KOe4xU1PdF3t0aoB8ZiomxMX5w/egWKqcYBy
         t75Q==
X-Gm-Message-State: AOAM533M3hsEf4G6j1n2tsKCtZ18JHtfbAXv0QOg2d4+fjWFEKmAW1jW
        6blveQ//8b7dgqq6Ze+LbjNxxMOrTp8IczvnLxehuh6C2TghLOW39tiCcIZaVzqzblLO2A4DPZ/
        n55kvwqxVGEH1Bb3aeuQlFM/j2xKFahqNxZiZ4V4=
X-Received: by 2002:a17:907:3e8b:: with SMTP id hs11mr25905136ejc.461.1642623014949;
        Wed, 19 Jan 2022 12:10:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz6G4Pcq2PpBiIWNzcOvMneMjKv+CbHSXvc3Jt8O4GTIE1653G8oTh139/uMfxxcKKERqZ2kA==
X-Received: by 2002:a17:907:3e8b:: with SMTP id hs11mr25905113ejc.461.1642623014691;
        Wed, 19 Jan 2022 12:10:14 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a26sm215005ejr.213.2022.01.19.12.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 12:10:14 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Balletbo i Serra <enric.balletbo@collabora.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v4 3/5] spi: dt-bindings: samsung: allow controller-data to be optional
Date:   Wed, 19 Jan 2022 21:10:03 +0100
Message-Id: <20220119201005.13145-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220119201005.13145-1-krzysztof.kozlowski@canonical.com>
References: <20220119201005.13145-1-krzysztof.kozlowski@canonical.com>
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
Reviewed-by: Chanho Park <chanho61.park@samsung.com>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
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

