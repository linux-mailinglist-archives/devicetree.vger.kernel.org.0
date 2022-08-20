Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D71F59B036
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 22:00:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232357AbiHTT6m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232315AbiHTT6l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:58:41 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5484C28E32
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:35 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id f17so895475pfk.11
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc;
        bh=Sr3mfLjIXUVPt2Cgs2+sTdfLuzfKP+HqrSqTYzV33qM=;
        b=j3vTDZy4p2Le5Jv0g004C6FlSoKi1tbfV1xl1Chcm4rgJmgijjKKbt14lR0SYOgxh/
         qSPHV6lqPVzbAm193b3dSHb8ziy34S7eilhgMrD6XwfUzm4KjF6cGaG1vPr8hH/1FGcn
         GLeAeeydrXgAdYZV+YW1cN/gEkFTE0eYugQZScgx6tnKPrw4e553sr2Gz2P/qQYgWBfX
         xU5mENf9vP/K7HumNytFxQS2VsjDGIpLWu+CsvxYJPyTFff4RyyDM02Fs4a3bFwXjyPR
         JwcEwjhIm4YAdpOQzqWTzKA7JFHreBz96+o4A559dCwvbWGb21vk4dNdMnfW8v9xvPED
         5g+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=Sr3mfLjIXUVPt2Cgs2+sTdfLuzfKP+HqrSqTYzV33qM=;
        b=FfGq5Cbh6Gyld4sFiaoB4HXxScn2jKhmLw1sUTj9yIK+CbjrN4ArX1XEW4vERNFXcV
         lzmJNn/vgl0+yH1ZSUu7urbw6sMofQn6H7iZIM/5gxRBxe/YB0frs6RPSUmaMd8ARoYq
         C49XC8jfUWXLJS9g4S28yJ09zuJ4Ll39jy7/zb6O2c9BamW4yrJxczCNCEliUpTYWHvf
         9//Ezre5kyyted5FzUvZ87V5ji5uWOtvPCWPAk5LU4gqpfqYkCsxrSlEci8MSm6Zl5Q7
         6+4e2IAbKpTzWuryEq+wh9NtorkzXBNW+1V1FYlkzEg5AZ+YHQ0vx1oz9NKWfcwTmYQD
         A3Qw==
X-Gm-Message-State: ACgBeo3KRpk7tIiP9yM9alsk3R70cE4y22w/4mjX/cLTHKEOBLWpXsJL
        MGCSoPYzmiAFALPbmRmGkErWMw==
X-Google-Smtp-Source: AA6agR47URWPJSwayd94xotbsO1f46lHE9aar40iSqylb83eDldTVhFKrWac2ORxP6lV9pykall+2A==
X-Received: by 2002:a63:3d1:0:b0:41d:f1e0:c15e with SMTP id 200-20020a6303d1000000b0041df1e0c15emr11326001pgd.156.1661025514879;
        Sat, 20 Aug 2022 12:58:34 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id u66-20020a626045000000b005363bc65bb1sm2316794pfb.91.2022.08.20.12.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 12:58:34 -0700 (PDT)
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
Subject: [PATCH v6 08/17] MAINTAINERS: Add entry for AMD PENSANDO
Date:   Sat, 20 Aug 2022 12:57:41 -0700
Message-Id: <20220820195750.70861-9-brad@pensando.io>
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

Add entry for AMD PENSANDO maintainer and files

Signed-off-by: Brad Larson <blarson@amd.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f512b430c7cb..b46379a15a86 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1802,6 +1802,15 @@ N:	allwinner
 N:	sun[x456789]i
 N:	sun50i
 
+ARM/AMD PENSANDO ARM64 ARCHITECTURE
+M:	Brad Larson <blarson@amd.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Supported
+F:	Documentation/devicetree/bindings/*/amd,pensando*
+F:	arch/arm64/boot/dts/amd/elba*
+F:	drivers/mfd/pensando*
+F:	drivers/reset/reset-elbasr.c
+
 ARM/Amlogic Meson SoC CLOCK FRAMEWORK
 M:	Neil Armstrong <narmstrong@baylibre.com>
 M:	Jerome Brunet <jbrunet@baylibre.com>
-- 
2.17.1

