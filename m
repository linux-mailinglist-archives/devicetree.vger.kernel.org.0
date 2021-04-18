Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C121363537
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 14:30:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236698AbhDRMad (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 08:30:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236492AbhDRMaa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 08:30:30 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD215C06138A
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 05:29:57 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id y3so1160591eds.5
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 05:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=poG+00NR3A/mJvY0huIpYA8eZO34WbE2BkLHQjye9Xo=;
        b=jxI71f4L5r2PHuL6P8eTxXCWATovgLqV9ms1eVcUgKCwi+hTiX9pD5PAYCGLrRRnsD
         bTVo7NJqPzuGTkPrW8xxSnUsIjNiQbftvHPsiMa/bBPqfkNPz534XcXYhyT61l0Ptlpj
         YpxMpuPdlKrNNP06vxg3z5/NfNpJS80Wbsvfj1Epu87eC/WOYvC59jPJI7ov+UmvgaWR
         nGpHz5GefQAuBh+n8idLvg7XXnYau2iV8Zp+3u6R+gbAMAyhdoJ5egOlHtymAixP9a8G
         I0qok4jXFSNgvQMMszsNHW5usoljDr96S8uANTNpjBCy8tbKx6/+qfpotCWlV48TcSOF
         OztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=poG+00NR3A/mJvY0huIpYA8eZO34WbE2BkLHQjye9Xo=;
        b=V6dzeU/dMFn+rDicnJC3cnDah/NCkYM7nvPRXtIToCWEeS52RAyBcEQQUnGMvBKl0O
         jlnXZzN5oVD8c83gjr66YaFaJlewpSUeLAdppFDhMdAxfoa19sMqzNbFsJuhKmo+l+OE
         rRqYFqEhowoINj86evSjOmYxXyHcvLl8iNdyYSQMeyautP0xaA2+FdLzegUn+GpoztUx
         Ur4aEtnCSRcG9GscKkTs+rCQ0UREPp+zQdGqVMTvwhB3U7C/vJDfY3koHWy6/iyaiyng
         d2NDTAsh0g9ORR3M6zldIubm73A/RitQk/TMsUHbRs86u0eQo2a3LnW0ifmj1ldId45a
         S5Ew==
X-Gm-Message-State: AOAM533CyM45iNURTWHTD2C50UtOx2SXcX542EmgrVp02qHA3Ll4iKDK
        De7Xdf/WDinBqzjCyyr/Cp01Ow==
X-Google-Smtp-Source: ABdhPJyGX/ftdays69q5ndkss6svGGpAWjC4/CJqNRxdNiBRdj2hPflxZYvnlGj4VBPrnuejAMbtxQ==
X-Received: by 2002:a05:6402:1157:: with SMTP id g23mr20062254edw.303.1618748996620;
        Sun, 18 Apr 2021 05:29:56 -0700 (PDT)
Received: from PackardBell (87-49-44-144-mobile.dk.customer.tdc.net. [87.49.44.144])
        by smtp.googlemail.com with ESMTPSA id k26sm8483371ejk.29.2021.04.18.05.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 05:29:56 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id f2c73f30;
        Sun, 18 Apr 2021 12:29:50 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Bartosz Dudziak <bartosz.dudziak@snejp.pl>
Subject: [PATCH v2 4/5] dt-bindings: arm: qcom: Document MSM8226 SoC binding
Date:   Sun, 18 Apr 2021 14:29:08 +0200
Message-Id: <20210418122909.71434-5-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210418122909.71434-1-bartosz.dudziak@snejp.pl>
References: <20210418122909.71434-1-bartosz.dudziak@snejp.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the MSM8226 SoC device-tree binding.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 11ec349d56..73902ce46f 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -31,6 +31,7 @@ description: |
         ipq6018
         ipq8074
         mdm9615
+        msm8226
         msm8916
         msm8974
         msm8992
@@ -111,6 +112,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - samsung,s3ve3g
+          - const: qcom,msm8226
+
       - items:
           - enum:
               - qcom,msm8960-cdp
-- 
2.25.1

