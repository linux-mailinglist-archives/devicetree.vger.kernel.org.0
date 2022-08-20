Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B63FB59B010
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 22:00:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbiHTT6c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:58:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbiHTT6a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:58:30 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0058D13C
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:26 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id r15-20020a17090a1bcf00b001fabf42a11cso7801015pjr.3
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc;
        bh=2Na4L6Xa/1uu7YylwEePPP9ETbiBvw5nj60ibbWpCTE=;
        b=a9V3D9wuMS6prN8rUYdyUZX6fpGi+FRkPzO69Q6kw1t5OceyCRQOjt7w83h3VGAmMU
         HNf+u51EaPo+3fxT4DOrmkR0mBzmgo3NIeI5aknUXHTuBDnB7vYz7B/3eH8Hj0EUEqk3
         YLbFA73FKUkCz1zFlBsUDUN4rYSQX62cz5oNgyw8kVEjUoqLwfVN65rl6d2sAjVRRuCs
         DAN7wr3o7gY2qvSB/3L4ds6UwZrpjqvGxEPvUkBXcNJEIaJMEm475leelMAtcyvzMZj6
         BaXX6ayvqDm/jHvlUxLpr4hJnM05MBNhc6pY8diQ3gVnr0Aqfloz6S5dBSpKnOWz8eJA
         0ljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=2Na4L6Xa/1uu7YylwEePPP9ETbiBvw5nj60ibbWpCTE=;
        b=U4RxWVNH4794KF72f+V/44GHK/khyfKzXpBvZ61KO69tjqww40abrpj9GH6765sV4G
         3cVJS5VwXrbC7u+e/K+52jdkpaANQF5koU0rgKmhItjIdSxS4GxV/ZaoQ0eYRDBjslH3
         VJV+wHkgjgRdItQkw5NQGcYk0KIdO/b4xiqwC8uUFmNATPRsmyN8yiQO62fed2CAULDB
         odTyn8EVhK+pcShCVHZiHrbqF1LzcCiOID+q/SUVln67UyiN7wRLC378kAgBu1ksSRFN
         ViUxvxoiaT3m0cxFq0wT8b62gV4iu73F8c5TYDB7WZrG5QxJa8CFjgIW+oowXSB0oOCn
         nV1A==
X-Gm-Message-State: ACgBeo0qf+hE70z+r6TFGyQIps8lAI057uVMuBHEw1vUcuFfDjxGiy1/
        Kv3d0G7nYo9INR8GeNBLqjvZMseT9oHPbw3H
X-Google-Smtp-Source: AA6agR4C0HSq6DXsMwBxsQEhmJfsvMKW08eFxzvRY/J5a6Zi96O/DvEWwAk5qv+nSumVeBUZwTfRBw==
X-Received: by 2002:a17:90a:9f96:b0:1fa:b4fb:6297 with SMTP id o22-20020a17090a9f9600b001fab4fb6297mr14833546pjp.80.1661025505887;
        Sat, 20 Aug 2022 12:58:25 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id u66-20020a626045000000b005363bc65bb1sm2316794pfb.91.2022.08.20.12.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 12:58:25 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        adrian.hunter@intel.com, alcooperx@gmail.com,
        andy.shevchenko@gmail.com, arnd@arndb.de, brad@pensando.io,
        blarson@amd.com, brijeshkumar.singh@amd.com,
        catalin.marinas@arm.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        suravee.suthikulpanit@amd.com, thomas.lendacky@amd.com,
        ulf.hansson@linaro.org, will@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v6 05/17] dt-bindings: mfd: syscon: Add amd,pensando-elba-syscon compatible
Date:   Sat, 20 Aug 2022 12:57:38 -0700
Message-Id: <20220820195750.70861-6-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220820195750.70861-1-brad@pensando.io>
References: <20220820195750.70861-1-brad@pensando.io>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Brad Larson <blarson@amd.com>

Add the AMD Pensando Elba SoC system registers compatible.

Signed-off-by: Brad Larson <blarson@amd.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index c10f0b577268..b6ae68851752 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -38,6 +38,7 @@ properties:
               - allwinner,sun8i-h3-system-controller
               - allwinner,sun8i-v3s-system-controller
               - allwinner,sun50i-a64-system-controller
+              - amd,pensando-elba-syscon
               - brcm,cru-clkset
               - freecom,fsg-cs2-system-controller
               - hisilicon,dsa-subctrl
-- 
2.17.1

