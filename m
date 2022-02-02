Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 377914A744D
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 16:13:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245582AbiBBPNa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 10:13:30 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:40916
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231908AbiBBPNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 10:13:30 -0500
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5BCF83F32B
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 15:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643814809;
        bh=YJ9YnHNEPxBxTIX7K3p85sEN160l6hrMJhkR8AhNv4Q=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=DpOo8d8iZgWXc+2QoJfaNT/fB4RfjqIxOiD3g0rVEMozlSYiWiOsuhVP2vNJI5Bw0
         quTwxStPXLYKJIqRTMDmBgaDqqmsfR02K6G7nXiBoLTkHiuRxRhGOrIkD0XYQ23odT
         O3juUXIecR9Y+wn/ZeFreZZhhLj6ko3vEvXKmqJWnyyRcVbctWDJuJwgDHraigUuZe
         Goz7EPAWEBGFusBoo8cppB0wj3Tg/gsRWO4CIhrTDR5XXqftDuXdb6uOn7M8y4azS+
         1bM+tBAfuQpLYFzwklXYqVRTpMEm6h1mn7mtEtQ1qfco/OVipYlEWjvjpLzsFpbBvr
         ZMNlkQGYEYi8w==
Received: by mail-wr1-f71.google.com with SMTP id a6-20020adfbc46000000b001d7370ace6eso6938458wrh.9
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 07:13:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YJ9YnHNEPxBxTIX7K3p85sEN160l6hrMJhkR8AhNv4Q=;
        b=lq72sds591eDjgI4BEUT5vl2DSEllGThlRhRaZu5xsJuCbqQDDx/1Ww1tz5oHMi1bt
         uBIdtPygLwjSGhtTxeov6aJ6wXyNWGITq0JYpgZF/dtwkn8jweZTjfv5u6SmPFMZgW/X
         84pL0PI8T7/nTZXDOE6nserx8qRGysJIyoUQenFhB8nUwcnKthhz6XQelXvtRlXShEOV
         tKddv9WciHHWeNqHCGDDICAp1uP7E/P1ylRZ3+4f8gi3nMovizajJm/DDdTITDtW0J4F
         202mj70tceyfK16JlFIWsqG8gRW8PPOwT+sj3bTisnozWFlBmuHrGcR3yRUPp1lVIAZI
         8clg==
X-Gm-Message-State: AOAM531QcwNNOenjFpEvm9r8EP8lR7G+TusCtc9r536z6u2mPxYnt/ud
        OV0Vwuj8UMQekvyVXyprcO3UB9EtT5vRfAMIGKPELJKcLIH1dbRXCnPab5KhhUPQD9KIyAqqydP
        4FZtwKSPW2lhzS75rbRKtW8753Y0ujo569J64ML0=
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr6488434wmc.183.1643814808852;
        Wed, 02 Feb 2022 07:13:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxE4lqiPEwpWnCogM4pbQtMPV771KOvD2vfdWQZ8tkszyF1yAE4cMQofrNZkHtOQpTFuzBK8Q==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr6488426wmc.183.1643814808705;
        Wed, 02 Feb 2022 07:13:28 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id p7sm5098872wmq.20.2022.02.02.07.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Feb 2022 07:13:28 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org
Subject: [PATCH v2 0/3] mfd/serial: dt-bindings: samsung,exynos5433-lpass: Convert to dtschema
Date:   Wed,  2 Feb 2022 16:13:07 +0100
Message-Id: <20220202151310.285561-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Patches are independent. Sending them together to avoid undocumented
"samsung,exynos5433-uart" warning.

Changes since v1:
1. Drop arm64 DTS patches - applied.
2. Remove 'status' from example.
3. Add tags.

Best regards,
Krzysztof

Krzysztof Kozlowski (3):
  dt-bindings: serial: samsung_uart: Document Exynos5433 compatible
  mfd: exynos-lpass: Drop unneeded syscon.h include
  dt-bindings: mfd: samsung,exynos5433-lpass: Convert to dtschema

 .../bindings/mfd/samsung,exynos5433-lpass.txt |  72 -----------
 .../mfd/samsung,exynos5433-lpass.yaml         | 117 ++++++++++++++++++
 .../bindings/serial/samsung_uart.yaml         |   2 +
 drivers/mfd/exynos-lpass.c                    |   1 -
 4 files changed, 119 insertions(+), 73 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.yaml

-- 
2.32.0

