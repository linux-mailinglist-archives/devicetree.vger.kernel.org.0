Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A108360025C
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 19:24:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbiJPRYC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 13:24:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230220AbiJPRXg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 13:23:36 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9B7932DA0
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:22:57 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id o2so5438275qkk.10
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TrTtCkKyLzViHStMraixk/T1J2EP1l/wg8tY4lebl0M=;
        b=J3j7cuoR0tchPBNAugVwxQaHRPWigE+h5NfWgLBbK/OUKidD4Q+AevxaWJYOSurEyh
         7vvL/btXsa0/oR4jw1J+ynS5L4Wu3NR7cmbdetI8q7YuLFhUNIhQLK6u5Yr6wsOiTYDG
         ophxB91z5aMvCHPIW8QDyS6WsoXX/Jox1cVkTxb4QXGRLXaRYX36DlUDKtDwWkKBytYR
         F3kQgEvUgMXRigFdBwevP47efuStmbrU7SnHLU2A4HkAIczeAtctVFijZQgq1VSc5/rK
         lcuf8+n98CCP4+IUGnUvrs37XCSID8ztrVUf2fZDt6G5SVbkRxmVc2O8TCLBTNiZhYcC
         25+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TrTtCkKyLzViHStMraixk/T1J2EP1l/wg8tY4lebl0M=;
        b=6mL1Xft6tzmwJC2JtC31iwqDmwv68ARndecJvTY8R8NA0KZpO/McHrqRApRHkYpEz9
         Vun4S3de7mcKeCfHBM+kPED0vx5so+cq+9J2P/vBPvL54ExjZHOnsiUgL4w07LPNjInF
         fPTH+FzaTymYe1hOp50Osa6P4nqzHverdhcDw0TBA1GA6aHgl4TW/8JLzufa3wFwIXua
         aSXZnLOibZeGtoYwweeogHxwSnwFPGnW5p6UOuPMBXCnrXrZpbxYK4avOJA6TqdgpuAB
         phh+FyLDP1j+QoVnCefwzoTK4AWh5UXOYBZ7c0VzTytqSrBPxMD3dcKLb0GbCOkYrfQi
         upvQ==
X-Gm-Message-State: ACrzQf2Bd57Uh0y5YUTdLd0yce2P9K+v2atNcBqF6wHvMpNQyenG5ciW
        05GCX25VsRjd6gVA4Y/u2ktguw==
X-Google-Smtp-Source: AMsMyM7LSKNC8nU/0lddMOEbriNQ+0Fgwf7hjL3FqwklV1MF3TMMpMRrdUpIG7QbVq4y8wrwS2a7hg==
X-Received: by 2002:a05:620a:319d:b0:6ee:c966:318e with SMTP id bi29-20020a05620a319d00b006eec966318emr5149050qkb.347.1665940975074;
        Sun, 16 Oct 2022 10:22:55 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id r5-20020ac87945000000b003431446588fsm6051008qtt.5.2022.10.16.10.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 10:22:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 16/17] dt-bindings: pinctrl: qcom,sc7280: add bias-bus-hold and input-enable
Date:   Sun, 16 Oct 2022 13:22:11 -0400
Message-Id: <20221016172212.49105-17-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016172212.49105-1-krzysztof.kozlowski@linaro.org>
References: <20221016172212.49105-1-krzysztof.kozlowski@linaro.org>
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

The SC7280 pinctrl driver supports bias-bus-hold and input-enable, and
DTS already use it (sc7280-idp).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
---
 .../devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml    | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
index e56861892050..2a6b5a719d18 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-pinctrl.yaml
@@ -117,13 +117,11 @@ $defs:
           Selects the drive strength for the specified pins, in mA.
 
       bias-pull-down: true
-
       bias-pull-up: true
-
+      bias-bus-hold: true
       bias-disable: true
-
+      input-enable: true
       output-high: true
-
       output-low: true
 
     required:
-- 
2.34.1

