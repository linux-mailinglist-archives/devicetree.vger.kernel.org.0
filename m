Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 177CC549FE8
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 22:47:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348358AbiFMUqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 16:46:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350725AbiFMUqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 16:46:08 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE3CAE40
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 12:57:28 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id 15so6670930pfy.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 12:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=M1UYg7GTMwR8QvyF4WdR5Vji0u2SBVcigVMf7Zaauyw=;
        b=EFASMhPxpi6FpSPPbhA4uIbL4jXzSRVgwCZf55APSkj+/eWAdAy8zvth5EBe2WERCi
         cDGiWOtOniXXOIBMYlZXBGOhh09bhJWtLzz03ZX+6JmHSdzd1T/MlQGnem73/WOdTT+v
         ALYzBwhbtHI9GDakDwasxjMQV3KLjZzE1f84EBn9oYaedpyFKb09rruVziY96M9e3Arg
         tkfD2u8e1HkkbaSXwA1Atuva5Im7G6tJYq72sqiTRNzjOCe8UDRnawXFQ3uInBmpEoLZ
         /49q91RgMJfoxOeMozLo4SpDinJna4mxoqvs687H+ikEiUHR2xU1+PXsepQJO79Pdd/s
         XM6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=M1UYg7GTMwR8QvyF4WdR5Vji0u2SBVcigVMf7Zaauyw=;
        b=uSFbTt3ftk6iS/bXxnAuA64Xo3zeE/28Y33oDL7uElw6ykgHaK+XDd4dy9Ma/ODbph
         2IjIrfVvPhtQL4MNV4JgfvTvBf1IEk3j1/IgI8goYhYUR3i7XCz76Nk7h3LKD9l4jHYX
         AuZd/xtLY17OLQ66hUGYiSKEzOygQNvrY2DtoknCz42be1WdENMy8/iVc0EfYw/OA4sA
         6OvhyZxsnrBLXFvCZljea+a0FaDzwhuD/73rsx1dbQNjU8vermzjsO7WAyKUiw4RMZi6
         YqJUNG6wtzd9GOlVMKp5Z+iHpi37CNgkCRQlRt3JxwFpiVW4sPDoJEkO6v7EevKoMIKX
         Y0+w==
X-Gm-Message-State: AOAM531X/qN4x9jySn4RE2uAbfXLy418znrQCY8PbADt/CHefSbDLc4/
        xYNxeenEhAItJGlAbNK9v4incw==
X-Google-Smtp-Source: ABdhPJxZ2q40smO9yqIlwfspIo8/tXk9SfFuRqNdL0nhnFvTOu8EKTI+j14CKPw8n+7CXVPu4OrTgA==
X-Received: by 2002:a63:b55:0:b0:3fd:a384:bd10 with SMTP id a21-20020a630b55000000b003fda384bd10mr1102840pgl.534.1655150248432;
        Mon, 13 Jun 2022 12:57:28 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id q21-20020a170902edd500b0016797c33b6csm5509357plk.116.2022.06.13.12.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 12:57:28 -0700 (PDT)
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
Subject: [PATCH v5 03/15] dt-bindings: spi: cdns: Add compatible for AMD Pensando Elba SoC
Date:   Mon, 13 Jun 2022 12:56:46 -0700
Message-Id: <20220613195658.5607-4-brad@pensando.io>
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

Document the cadence qspi controller compatible for AMD Pensando
Elba SoC boards.  The Elba qspi fifo size is 1024.

Signed-off-by: Brad Larson <blarson@amd.com>
---
 .../devicetree/bindings/spi/cdns,qspi-nor.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
index 0a537fa3a641..9268a4882bfd 100644
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

