Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCBD45BAE3E
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 15:35:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbiIPNfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 09:35:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231495AbiIPNfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 09:35:11 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B6253F1DC
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 06:35:09 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id n10so5475324wrw.12
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 06:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Q+u3vJJCdtvHYMsR/8D/YKdbcNhhwJkcpVtrhevHRJU=;
        b=KtkJ0zlYTHdr8w9ecZHSBEttL6X54XVJatBquYt8bhD+cN5z1tKgQvOCCy0ot1qAhc
         OUzucDkFMxaOgUzCAwiDCfRvyDzRUq5n59d9hTqyvaOVVi+fiJBw2odpEiejgsiSrccA
         vXsLjnRUGeZu6HBAKeA7+B1w0mH+Mpm4xiP5LeRrM5SbgZiS5M8EomOIRF1FTHBxKTOW
         Kf2zcBc8IvmHOun+8eurgKCpeu4MzdYeSutDDAe5aTnCnS14aRtHi8Hc8KHDyK9m45+M
         DWiZrsbVZ83ioeRVZMGQziTg9yoXbDhhPun79u8kH0f5UpPxL2SbgAo0ITQMdMFLN549
         B2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Q+u3vJJCdtvHYMsR/8D/YKdbcNhhwJkcpVtrhevHRJU=;
        b=NsTBTvoD10AD9a1LA7mDyK5g88TUXzSzNXcCyaFQDk6qqUXowYnbE6zbj7sGxSwxnC
         XS2swOIF2AL7wHwC7cHxpln3Hb6hlWieUlvLbRF+oQIREj/3KuEUM8mzUY7yF7CenbJj
         46Po7GTrPm3eFPa00iqhP0i2SJKRovZT6RunmZQuAc2a3k5oRJ9focvRz17fOJ8mDgnO
         idmT1alw78NYTop7b7qL6bDXFFwRk05pdPtkv7mFdccWXMPmCEPlzV7qD9kTkfKf02DV
         S5FFI/ZUqfgY04qQ6IEDlcR/QB8ADESOS8/ejHWm81dIfYjAakBu9fpnVIoY7LX9m/17
         tHOA==
X-Gm-Message-State: ACrzQf3T7uwCZemGcvs61LlPgUnPiEyMR1Jo0DXpQmxNMBM16EnMAcv/
        2GFFE5q06BAvGl/LyZLwetJl/Q==
X-Google-Smtp-Source: AMsMyM7FzbYnuTvTdt0o24rsae8ko+gcNRtsmr3OrO40odBVknBSvcP5n7hDqiGItcM3+baBZLBV+A==
X-Received: by 2002:a5d:6784:0:b0:22a:e477:8fd4 with SMTP id v4-20020a5d6784000000b0022ae4778fd4mr463186wru.218.1663335307913;
        Fri, 16 Sep 2022 06:35:07 -0700 (PDT)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id fc9-20020a05600c524900b003a84375d0d1sm2369106wmb.44.2022.09.16.06.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 06:35:07 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     will@kernel.org, robin.murphy@arm.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH] dt-bindings: iommu: arm,smmu-v3: Relax order of interrupt names
Date:   Fri, 16 Sep 2022 14:31:47 +0100
Message-Id: <20220916133145.1910549-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QEMU devicetree uses a different order for SMMUv3 interrupt names,
and there isn't a good reason for enforcing a specific order. Since all
interrupt lines are optional, operating systems should not expect a
fixed interrupt array layout; they should instead match each interrupt
to its name individually. Besides, as a result of commit e4783856a2e8
("dt-bindings: iommu: arm,smmu-v3: make PRI IRQ optional"), "cmdq-sync"
and "priq" are already permutable. Relax the interrupt-names array
entirely by allowing any permutation, incidentally making the schema
more readable.

Note that dt-validate won't allow duplicate names here so we don't need
to specify maxItems or add additional checks, it's quite neat.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/iommu/arm,smmu-v3.yaml    | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
index c57a53d87e4e..75fcf4cb52d9 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
@@ -39,16 +39,11 @@ properties:
           any others.
       - minItems: 1
         items:
-          - enum:
-              - eventq     # Event Queue not empty
-              - gerror     # Global Error activated
-          - const: gerror
-          - enum:
-              - cmdq-sync  # CMD_SYNC complete
-              - priq       # PRI Queue not empty
-          - enum:
-              - cmdq-sync
-              - priq
+          enum:
+            - eventq      # Event Queue not empty
+            - gerror      # Global Error activated
+            - cmdq-sync   # CMD_SYNC complete
+            - priq        # PRI Queue not empty
 
   '#iommu-cells':
     const: 1
-- 
2.37.3

