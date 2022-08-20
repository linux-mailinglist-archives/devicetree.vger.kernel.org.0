Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4834259B00D
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 22:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231875AbiHTT61 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:58:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231691AbiHTT6W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:58:22 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D9786467
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:21 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id y141so7040165pfb.7
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc;
        bh=wz9MsUwmI5n+ymksjYC4EkZBI5QAxatLdHbVurA5ZlI=;
        b=B8EI6enIRiLHMyZoWfn+OOYNPz31hR0ZY++Q94mK6NKM8A3wITa5OvTvgeINH8KgD4
         AmuRI/+HTkNFJtsvXt23x2KKRBDeiIDx5CIfhzmS9w3Gme000XD+BSvtAo9hQRwTZUr3
         MWC9RLksiznlY89PnUyIuGGUPD/9xLkT1fYwWsb9y7LRZTsm9e/Gj8FQsyut0jLf8CBs
         Gb/qfpwINSLdJDqNn8WGC988FtkhZKkAep2W+Cw4e3SS/8huflK49+9iiDiLZv9T3164
         EHpuw28I0pxqcuqerOIBOA99r0j7RkGTjWSbuqKI1U4ft3fcyU9qJbJVyGY0h4wZqxHi
         xqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=wz9MsUwmI5n+ymksjYC4EkZBI5QAxatLdHbVurA5ZlI=;
        b=hrVP/pgsZJUADShhPchUl3yCahMqj2P6CMDT4T7F+4J9hK7qtLNGAncho+z0SLXNOO
         gsZVShLCIosqX2eK3UCpKOlDL7PStt1x9W8zx7sX73tgXXinN9iRG1x49z7sw01Ujq/I
         hyu/cOduUEq4Wq0pM9GfaauveQofYoRA5RUBkfCkt0q7P2feizV982yBjdhC+ziey2qr
         ciC2ojqpoRMm02rzniLnsjZTK9cXlEkJHbu1nx4OuQsbbL0357ZCkcbWI384iNBIiTlh
         cDUp6F+hU5hOI8/JtLcggu/4Pq4hwwXwVywa3719b8woKyuzNHw/pcygNjxRAC7vW00/
         DUDg==
X-Gm-Message-State: ACgBeo3RZz/k5rKkonLemXzilPgqHnIyPWOmNMz6/mW+7INggnORPT9Z
        KnL1E7TBu41X5cA47xr/a/MMJQ==
X-Google-Smtp-Source: AA6agR7hs5dMUXq2LiE7InqSQSJ3w32+PKzInx3oGBczozrPj5Qd2Ax7XXzFuEy4aAGPzi6V/t+b7Q==
X-Received: by 2002:a65:4501:0:b0:3fc:4895:283b with SMTP id n1-20020a654501000000b003fc4895283bmr11262902pgq.231.1661025500870;
        Sat, 20 Aug 2022 12:58:20 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id u66-20020a626045000000b005363bc65bb1sm2316794pfb.91.2022.08.20.12.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 12:58:20 -0700 (PDT)
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
Subject: [PATCH v6 03/17] dt-bindings: spi: cdns: Add compatible for AMD Pensando Elba SoC
Date:   Sat, 20 Aug 2022 12:57:36 -0700
Message-Id: <20220820195750.70861-4-brad@pensando.io>
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

Document the cadence qspi controller compatible for AMD Pensando
Elba SoC boards.  The Elba qspi fifo size is 1024.

Signed-off-by: Brad Larson <blarson@amd.com>
---
 .../devicetree/bindings/spi/cdns,qspi-nor.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
index 4707294d8f59..b9e49e90e280 100644
--- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
@@ -20,11 +20,23 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - amd,pensando-elba-qspi
+    then:
+      properties:
+        cdns,fifo-depth:
+          enum: [ 128, 256, 1024 ]
+          default: 1024
+
 properties:
   compatible:
     oneOf:
       - items:
           - enum:
+              - amd,pensando-elba-qspi
               - ti,k2g-qspi
               - ti,am654-ospi
               - intel,lgm-qspi
-- 
2.17.1

