Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DC0C549FED
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 22:47:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348659AbiFMUq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 16:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347572AbiFMUqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 16:46:15 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C28DF63C7
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 12:57:33 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id gc3-20020a17090b310300b001e33092c737so6990329pjb.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 12:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9KwEdpp4EHLmLSRu+DnyxFCT3lhc8K5jJavvVNa3rlA=;
        b=zSwz8WVMIHQg4oW9WeNDAAG5c28m66VAZlfBU6xtkU745PQiZZKb0NcxZvtV6OdkA6
         jUmkiKU8oM8vJK4s/n2KFz6UJAj1iDwZUD8xAOzILfe3tgYLzMuvnpcJThY+AbQ7YXi3
         Ynh+4YuX0oQL0e53nznCoFck6OFTtO7NpTtjRzEXj2n2woXhWgaJnILc1UDimQklqLRD
         Hkw2Uu/hmWIoe9DNuZIw7PPhaGlRGq2mPhevdDdQeXGKjxjnwPk7hFdTd4UoRVmOoKBl
         jxtcDBq7meFjO12gTG+DmzvVoN0VtNZWTLr/yJlpdHGc8myRpgahFhOzdF9jc4M5qV+k
         uN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=9KwEdpp4EHLmLSRu+DnyxFCT3lhc8K5jJavvVNa3rlA=;
        b=IqXXWg5h1FcHMH44AzF287pT3nPKWm/YGRGlxsOPxo2Fosl9z8BB2I5iGfcx8FMG/Y
         CUhxBD4BF4fF+Jwb6UNGKc+ZZlboEP8WfxhitsWu2QgzE7ocWynoWCx8MLTwWpzhGfJU
         kDzbtemeAHb0A0uQsIIeRclaqfaGb/VqgLy/i9zZlenhS/hIkDPqeBvmwBt1eRlQlOpa
         vgEnyzZ1Oe1nNmBXtGMeIiitDu7Y5C66nMHuEwahzjUjCH51TuFiQQuPJRtUnc0jxJ/s
         hqPY7Ib7hzU4lQDPHX6aMkuNzEwa33t40dE3cuydtfXOhNSXO8LWi6e/WUaE6e4P6Qsd
         y9Zw==
X-Gm-Message-State: AJIora+dHbzQUI0F5rmrOHyUhvcsMGEP3pPP5PUFPoD2fDnEjgKmhtZt
        Al/EfEH4pKSJOibILwswnowx9A==
X-Google-Smtp-Source: AGRyM1tKqZ68i4YqpSOiqrY85fOOj1ouN0z23ZiBd+JkShEORj/QXiO7j6X0hHfdYvo6dAeKagS/FA==
X-Received: by 2002:a17:90a:9481:b0:1e8:7bbf:fa9a with SMTP id s1-20020a17090a948100b001e87bbffa9amr417565pjo.164.1655150252722;
        Mon, 13 Jun 2022 12:57:32 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id q21-20020a170902edd500b0016797c33b6csm5509357plk.116.2022.06.13.12.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 12:57:32 -0700 (PDT)
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
Subject: [PATCH v5 05/15] dt-bindings: mfd: syscon: Add amd,pensando-elba-syscon compatible
Date:   Mon, 13 Jun 2022 12:56:48 -0700
Message-Id: <20220613195658.5607-6-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220613195658.5607-1-brad@pensando.io>
References: <20220613195658.5607-1-brad@pensando.io>
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
index fb784045013f..2267f8828e9e 100644
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

