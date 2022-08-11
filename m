Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBF4B58F94B
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 10:43:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234619AbiHKInn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 04:43:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234626AbiHKInl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 04:43:41 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8850F90C6F
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:43:39 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id u6so13257635ljk.8
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=a9nNC1LpPgmSaOq2Jgcv7OLsPptIfkOff9uOK+ycWKE=;
        b=VJ3AuQgaqf9uHo7NnGq3Rid7Vgv9UmSHkkSBfkrU5R4KrqByFBqybWU5w15AWD7b4n
         MPyRYA6W5jDHbxlXlfhHlRYppve/t9yXxdNKr7RvJXf65ERcqdUIisf/AOj990y83mXc
         QAQrEW15Yg9SALIAHRYkCgfFctydpHx+GV9ZT6LSg8tgOKKoApCDU5kBNatFPb7vkKpv
         DlY/KLbWf/D0vFrQ+cJx5bLYWKvGvbt4cVG9aGM1ajKgaLznu1OR5PfM8fUDqof1O0dN
         Usq0X2g8RstvBsoxa65eHiiwhW3R7zhGwCZGOxLab7q0yiTl4sQ3diCrqN+QYaeslGNa
         OneA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=a9nNC1LpPgmSaOq2Jgcv7OLsPptIfkOff9uOK+ycWKE=;
        b=tJxuFAtT32+LtIzSkdnZTiAkL+NVzeULVgIYem8nqlc8w2qiDmekdGbKxOELAmNKpJ
         th0inCQkVdVLok4RgMeFdt2aq2L9zmBDLKXBrg0AYfTA88Z8nywjYzQ66fKPauUcJEo8
         WUdfJHJbiWg+GwwchkB+K18MhRToY3xfiwyXyjY8hFRRa9SlU54oyazvexdEMrwbJo+2
         55woNj854qT/kXTQ4qjytCe++Sn9kfjycZ5jkSV7a006RxliLkoR9OByzi0aqNWWkMXQ
         coGMSFyHKt7dAI4OolYT0WibFdgcZ9oNXRzzLZnDRGcPoR8gHBIcrpfnPEyqTxgovGfJ
         BcSQ==
X-Gm-Message-State: ACgBeo2bKutOTMfYrInZxTi8LU3dSbWEsOKr7y41agi828Z/knyR6lZC
        dWlX7Z96I2IrIBwgXU3oJb/5gg==
X-Google-Smtp-Source: AA6agR4NT7/YiwXnvOxR2aLvOqwVc4BC5XRg/ZXIjWHstlkcPFHS42ISonqpalevSrp0uvqvOo2Gtg==
X-Received: by 2002:a05:651c:905:b0:25e:67a8:4dd0 with SMTP id e5-20020a05651c090500b0025e67a84dd0mr10884404ljq.232.1660207417413;
        Thu, 11 Aug 2022 01:43:37 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id f4-20020a056512360400b0048af379957asm631077lfs.72.2022.08.11.01.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 01:43:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/5] dt-bindings: display/msm: dpu-msm8998: add missing DPU opp-table
Date:   Thu, 11 Aug 2022 11:43:27 +0300
Message-Id: <20220811084331.83715-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220811084331.83715-1-krzysztof.kozlowski@linaro.org>
References: <20220811084331.83715-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'display-controller' child (DPU) of Display SubSystem (MDSS) uses
opp-table, so reference it which allows restricting DPU schema to fixed
list of properties.

Fixes: 6e986a8f1cf1 ("dt-bindings: display: msm: Add binding for msm8998 dpu")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
index 2df64afb76e6..7ed438bc7dce 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-msm8998.yaml
@@ -62,6 +62,7 @@ patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
     description: Node containing the properties of DPU.
+    additionalProperties: false
 
     properties:
       compatible:
@@ -105,6 +106,8 @@ patternProperties:
         maxItems: 1
 
       operating-points-v2: true
+      opp-table: true
+
       ports:
         $ref: /schemas/graph.yaml#/properties/ports
         description: |
-- 
2.34.1

