Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE7236D7587
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 09:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237218AbjDEHbt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 03:31:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237178AbjDEHbX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 03:31:23 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4FEA5269
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 00:31:14 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id r7-20020a17090b050700b002404be7920aso34648691pjz.5
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 00:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680679874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=95XsxTgkB2GAzmddgmc6dAbIYXeD7kFJ6rk9pNh2W3U=;
        b=xzREHKs9imVjD4eAgki+pYBd8JbeVuvYZRWz03MABUKHamm2KoCh++9bkm9YHhYl5X
         jcWsaTanK6ZPz9Y7aOu+dJTRTNxJJ6Nb+y4o1MzEqImyBbsLfQjF1ZMkkarWgJlAys66
         L5hIExTOwYDxM7qMN8GF5yW+YtCzatlAIZl/fm4VGezCWwJLl24iOoBBAG0eJGwYw+oZ
         vw8comKMR7UD60sbJukP5Jrp4Ol2XKwWkZPdb4PU6LIO47iBTZmsh08D1ms1qqLE7xIF
         XLgZrQX9qfp6L2TNTTQcP9EF9VPpTjvBoWHjL/PYBjtSAs3um3jReSEfjHsz0eDHvUPo
         5sgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680679874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=95XsxTgkB2GAzmddgmc6dAbIYXeD7kFJ6rk9pNh2W3U=;
        b=v1wOwfdIpHV0fp2G3PWDjaQVNpNT34qxHCBTp3ltgBYx4Iwe10qZnpiqjc78wMw7b7
         kpdcGlm+Pcf8L8Yn5fgjNv3Kdi1K/9HLgL9ac8SCc7UW5PPXZ8+H1ot9psnC1QTYLMnT
         Jqi/ylscTfk4udQGx2ID+eOXJFn/CxmI0s8rR1Fa2F723eB0t7Dq5yH2i4Zh2YIyj3o4
         aElZfZ85bRHBnTyOQIhfEDHLMLS+cbFitlT52I622HdkhfzQfLBR/gTdUyqulzpxvUp/
         8h5oNaLil0qRqQrWeSQrTdPL//BAxBQglHZMpgTU8Ox3+WhiHG3EWt86qj/JZNaenHOs
         pA3Q==
X-Gm-Message-State: AAQBX9eJdgvNZvPRDTxhwCNNU22DTLHRRWJevvOfJ2b3x1+BPFVu6dm4
        6JHizIM0P/N5wmBsq+F5+m54Nw==
X-Google-Smtp-Source: AKy350YhoFXV60QevlnoKkrfOs8PvhBILJ/kqBXbrdvm3nccTUSy09fiFVPC6DOfUktbSa7p7ve+lw==
X-Received: by 2002:a05:6a20:3baf:b0:db:10c8:4188 with SMTP id b47-20020a056a203baf00b000db10c84188mr4249164pzh.41.1680679874257;
        Wed, 05 Apr 2023 00:31:14 -0700 (PDT)
Received: from localhost.localdomain ([223.233.67.41])
        by smtp.gmail.com with ESMTPSA id l7-20020a635b47000000b004facdf070d6sm8781507pgm.39.2023.04.05.00.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 00:31:13 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org
Subject: [PATCH v6 05/11] dt-bindings: qcom-qce: Fix compatible combinations for SM8150 and IPQ4019 SoCs
Date:   Wed,  5 Apr 2023 12:58:30 +0530
Message-Id: <20230405072836.1690248-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230405072836.1690248-1-bhupesh.sharma@linaro.org>
References: <20230405072836.1690248-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the compatible list available in 'qce' dt-bindings does not
support SM8150 and IPQ4019 SoCs directly which may lead to potential
'dtbs_check' error(s).

Fix the same.

Fixes: 00f3bc2db351 ("dt-bindings: qcom-qce: Add new SoC compatible strings for Qualcomm QCE IP")
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index e375bd981300..90ddf98a6df9 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -24,6 +24,12 @@ properties:
         deprecated: true
         description: Kept only for ABI backward compatibility
 
+      - items:
+          - enum:
+              - qcom,ipq4019-qce
+              - qcom,sm8150-qce
+          - const: qcom,qce
+
       - items:
           - enum:
               - qcom,ipq6018-qce
-- 
2.38.1

