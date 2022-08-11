Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 396AA58F959
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 10:44:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234664AbiHKInz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 04:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234635AbiHKInp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 04:43:45 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5A9C90C5C
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:43:41 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id e15so24729565lfs.0
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=j0+XWkmBPfd4tCvKIKxfSVudBOlOg9hyI7bNXGkLUSI=;
        b=PZ63TfDUyut5YoC5OjhgChS1gehSFrI23rYrF6pCS2KlbsljChv3VHStXh0D82BqFK
         LYOn2NEw2OA2bvJFGZOzB6Rwlt/E/usJHKgAfl34NFEOXxNSrkQ2NT54S0vW7K4bcwOS
         j45ZnelMrOmLziYYGFkKC4mjGOFL54SJo9bEIAdc1depj3EG18QkPeF6bRySnP4xpqSo
         O/vAo9FW3jdLiXmWEoUwL1UiRnjWFZAAX7HKVXAEIFpPQWU3sEsr7KaPrX14pD0rod+M
         0Wi/tvfuy2+DwKe6GGIIpSXZ5YtBUE/mFQxqgazXKXrpojFiLPEffEYYlWgj34Ujrgqn
         F6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=j0+XWkmBPfd4tCvKIKxfSVudBOlOg9hyI7bNXGkLUSI=;
        b=0uZZKKry38PNAegrI/Uqn2NifBLaftB94i7+GtnsyYJazmkYSwK7X82juInwwV2+EX
         Ea7i4/rWjG+ZjN89ndjDgfH1T5L0fPwUlht4UZdCi3MmmLILXK3xWe+U/HbVMKFKVAX5
         HJwnjLr7wAyCKzMsXIzSC//0jb8pr2rOXUD7tdYQ8lBB81KofnE6xM0mre7nV3QHXa7j
         Tg6o+BzKJOvVeplJ6RCHw2hi47MgjmH3p6Kqt3qDtoqQSbfwRUowDApkwB3PpSr/wsdj
         LwyzHGeE0vUSP1EyiNhi7r9VlPCpmYYUlftP1qtWN2XdZRgAW+jzgCjGJ26KgOWrYoGv
         H0zw==
X-Gm-Message-State: ACgBeo3ELUNKy0XSQHavcFx36xFXo9Yg7tOJmlSS1hCBDcSf86k6sc7W
        upxG8i2v0AUlOee3PkMgTBDa2g==
X-Google-Smtp-Source: AA6agR5DWj/+lgz0e/lMJZUw+szw6fb/cJMfuBjwi2CGFkIP75mNm5agSk+DCwMc7ErHkYRHYDGS+g==
X-Received: by 2002:a05:6512:c02:b0:48a:80f:b92d with SMTP id z2-20020a0565120c0200b0048a080fb92dmr11308020lfu.675.1660207420156;
        Thu, 11 Aug 2022 01:43:40 -0700 (PDT)
Received: from localhost.localdomain ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id f4-20020a056512360400b0048af379957asm631077lfs.72.2022.08.11.01.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 01:43:39 -0700 (PDT)
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
Subject: [PATCH 3/5] dt-bindings: display/msm: dpu-sc7180: add missing DPU opp-table
Date:   Thu, 11 Aug 2022 11:43:29 +0300
Message-Id: <20220811084331.83715-4-krzysztof.kozlowski@linaro.org>
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

Fixes: 3d7a0dd8f39b ("dt-bindings: msm: disp: add yaml schemas for DPU bindings")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
index d3c3e4b07897..d30b6f9bd9d2 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
@@ -73,6 +73,7 @@ patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
     description: Node containing the properties of DPU.
+    additionalProperties: false
 
     properties:
       compatible:
@@ -114,6 +115,7 @@ patternProperties:
         maxItems: 1
 
       operating-points-v2: true
+      opp-table: true
 
       ports:
         $ref: /schemas/graph.yaml#/properties/ports
-- 
2.34.1

