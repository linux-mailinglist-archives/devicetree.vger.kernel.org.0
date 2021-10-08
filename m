Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADC16426A04
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 13:43:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241498AbhJHLpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 07:45:21 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:47498
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243316AbhJHLnm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 07:43:42 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E22A53FFFF
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 11:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633693262;
        bh=YenCxJtlGV3PQlymT33h0MoUTyi5idKH+CvjTblUKV8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=jMvxH1CwIT/9CBvh3h0vlXkivI6eRQceXXIPMJkT3jhsCkoJshhCfffBU3avyQBL8
         zuJLF5TAemahK9bzlqZ3uqHIa+H4SGRnoJwO4+wvzLqLvbyOc1egqsDL59vjtPT40i
         3LrrpN+yPvRf6rCQAXuvv4ZX8hG/e5f8gZjRv3gEgfcyfRVdAx1SsFN9b1UhEJYEJi
         uOZsVst/LlHlZIVmJXnlBxi8KqdQ+ST7z6bQlPcMGOdMOM/4bWkkvSbdDr9aNy8p9v
         eh6uH9kfMwHgpepLATrpITtNQGYjq93E6lt5V0T57FfYzlW8/c9WkTL++l9Jz49423
         vUAY6U1nHJCCQ==
Received: by mail-ed1-f69.google.com with SMTP id u17-20020a50d511000000b003daa3828c13so8917830edi.12
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 04:41:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YenCxJtlGV3PQlymT33h0MoUTyi5idKH+CvjTblUKV8=;
        b=vP7AwvHlw0I4U9/79I1rHHQJs5Yt2MP9IKsZ57LqGB+RRmwaNgDCFFcp7uBbAgbzZ/
         TaSUAghkmL4xs/KI9V2a4wLw0nEKrInS0iPoA2KwdFvE9/Eqv1i2Z/PqKiXhctdnhqUB
         84DWbrVbK2aBPvp3zjrg1byVoWdW3fuvW0/b+xkwjFT1wgSiRl92+saD8r7liYvN3JuV
         qVcz2MtU8JkPWlr/4VvM5O+KCF466D0/S5r1Poo2sEWY2c5anK3tCcrpu2eOlEeR2G5V
         AUyOXGx6gy7ulWKVXF08lU/S7ncefVIoUGDxh530WKB0CKA7/n4LGkAxtrUAL62v9jGz
         3Zlw==
X-Gm-Message-State: AOAM530Q0MrXaSWseJfC0l95O1utDpY/mZg++mnYf9SL9OLFoW1+fItZ
        CrueCiPqzM4AEMQ3E4wICh+u1pFobSUiu6es1Jxd1jjMlu/0+giYM+2R7mFg1e88TlzGL8fCoLc
        m0BAcOXTDns915QAPQHjvRXgn0a673cyHXavTMfY=
X-Received: by 2002:a17:907:1c0e:: with SMTP id nc14mr3610936ejc.103.1633693259154;
        Fri, 08 Oct 2021 04:40:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxomzDMpxmD/kRXVctv2bbCqa67VNyIA5xEzK0LWLUsGmubPwb/clohBcAxG5qJ4i+p3jGu3g==
X-Received: by 2002:a17:907:1c0e:: with SMTP id nc14mr3610907ejc.103.1633693258920;
        Fri, 08 Oct 2021 04:40:58 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-186-13.adslplus.ch. [188.155.186.13])
        by smtp.gmail.com with ESMTPSA id kw5sm10121ejc.110.2021.10.08.04.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 04:40:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 10/10] dt-bindings: mfd: samsung,s5m8767: document buck and LDO supplies
Date:   Fri,  8 Oct 2021 13:40:24 +0200
Message-Id: <20211008114024.135335-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008113723.134648-1-krzysztof.kozlowski@canonical.com>
References: <20211008113723.134648-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the properties with regulator supplies for bucks and LDOs.  At
least one board uses it (Exynos5250 Arndale).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/mfd/samsung,s5m8767.yaml         | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
index b2529a48c890..5531718abdf0 100644
--- a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
+++ b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
@@ -96,6 +96,44 @@ properties:
     description: |
       GPIO specifiers for three host gpio's used for dvs.
 
+  vinb1-supply:
+    description: Power supply for buck1
+  vinb2-supply:
+    description: Power supply for buck2
+  vinb3-supply:
+    description: Power supply for buck3
+  vinb4-supply:
+    description: Power supply for buck4
+  vinb5-supply:
+    description: Power supply for buck5
+  vinb6-supply:
+    description: Power supply for buck6
+  vinb7-supply:
+    description: Power supply for buck7
+  vinb8-supply:
+    description: Power supply for buck8
+  vinb9-supply:
+    description: Power supply for buck9
+
+  vinl1-supply:
+    description: Power supply for LDO3, LDO10, LDO26, LDO27
+  vinl2-supply:
+    description: Power supply for LDO13, LDO16, LDO25, LDO28
+  vinl3-supply:
+    description: Power supply for LDO11, LDO14
+  vinl4-supply:
+    description: Power supply for LDO4, LDO9
+  vinl5-supply:
+    description: Power supply for LDO12, LDO17, LDO19, LDO23
+  vinl6-supply:
+    description: Power supply for LDO18, LDO20, LDO21, LDO24
+  vinl7-supply:
+    description: Power supply for LDO5, LDO22
+  vinl8-supply:
+    description: Power supply for LDO1, LDO6, LDO7, LDO8, LDO15
+  vinl9-supply:
+    description: Power supply for LDO2
+
   wakeup-source: true
 
 required:
-- 
2.30.2

