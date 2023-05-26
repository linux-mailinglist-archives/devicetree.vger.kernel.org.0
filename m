Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D18C712D36
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 21:23:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243156AbjEZTWt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 15:22:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242286AbjEZTWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 15:22:44 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1871F194
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 12:22:43 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1b00f9c4699so8081665ad.3
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 12:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685128962; x=1687720962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EeTyHFbJy5rhBfWD0hnvFzbXupDmLYxqq1Exk7EAP/w=;
        b=ZL28kT6giCxmUR4KbNlszsaCvOIkmmxXrArlq9gzG28NUSNGZS0d060fkS8h/yG2ob
         p67OqTG14X94RPFNbEQn5uPRCkkt5MhdTtvGDmXiuk5Qt0Fj2LiBn8NvhQv3MIT4oBUb
         qIubhaxXsg1Jn1S73vFLcdu9T7jdRv3uer6F8L9M5juE9aLNe77K+5p5VcdfD+AbB3Gp
         F7RNCjOD+/hhf1jzqhPERjSpJOSwiOeLQf5Sk66YcUcK+mxx/u1BEAfnEulwx76XDmFQ
         CuK/OSB8BLs+/ToXrZI27HU7Y4S/4aT6Ae5DuE+mYQf0LXDW9Ea10iZgwKYjZKLFkzPR
         OT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685128962; x=1687720962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EeTyHFbJy5rhBfWD0hnvFzbXupDmLYxqq1Exk7EAP/w=;
        b=C1ZJQ4qdjoPfWXG7bQmwLrbgBuku9kA/WpHsQDjiBu+qXRBxTpDUPXOdnNQ6WtUBa0
         K7kIMCm/f+doq8O/XmBk1coWr3QGoV3j8ISBEwZRswIQORPhQDoBqeRBjBBhYlDrOjOd
         X5M2/qQOH4B+CciPKE3cI49eTL9K3cOEfdDnVal5e2kNz6OAuSIAqSZqrpXKi6xIizCo
         FHPe5q83JODTijty+DWrfdVOEHjMY9ScfMhVmx1EJWWk+0oBP+LikdmFFcvKazkPNoEz
         PhqvjIqPE/cb2rNUNiex0JIkjyVtAMTF+2Rs2/ucfan/cCd5hgdqeb+OHJDiCfdn3qHY
         hgJA==
X-Gm-Message-State: AC+VfDxuY/1BnkbprB5QkjticHAd0E+vbxl/asDGlH41EYnASEJBv0Lp
        4aV9BV8kzJmXiqxyUShlt4rY9w==
X-Google-Smtp-Source: ACHHUZ6adnhF1iUNUSKna36v1dpD9ONH+lLUYROkCaDsTwsPBSQkg2PW5L2Ru+BtAKVxDeIayGLhdg==
X-Received: by 2002:a17:902:c1c4:b0:1ac:b4db:6a62 with SMTP id c4-20020a170902c1c400b001acb4db6a62mr3794057plc.65.1685128962376;
        Fri, 26 May 2023 12:22:42 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3a:6990:1a5c:b29f:f8cf:923c])
        by smtp.gmail.com with ESMTPSA id q18-20020a17090311d200b001b008b3dee2sm1955079plh.287.2023.05.26.12.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 May 2023 12:22:42 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org,
        stephan@gerhold.net, Anders Roxell <anders.roxell@linaro.org>,
        Linux Kernel Functional Testing <lkft@linaro.org>
Subject: [PATCH v8 02/11] dt-bindings: dma: Increase iommu maxItems for BAM DMA
Date:   Sat, 27 May 2023 00:52:01 +0530
Message-Id: <20230526192210.3146896-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230526192210.3146896-1-bhupesh.sharma@linaro.org>
References: <20230526192210.3146896-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since SM8450 BAM DMA engine supports five iommu entries,
increase the maxItems in the iommu property section, without
which 'dtbs_check' reports the following error:

  arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx224.dtb:
    dma-controller@1dc4000: iommus: is too long

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Anders Roxell <anders.roxell@linaro.org>
Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
index c663b6102f50..5636d38f712a 100644
--- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
@@ -44,7 +44,7 @@ properties:
 
   iommus:
     minItems: 1
-    maxItems: 4
+    maxItems: 5
 
   num-channels:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.38.1

