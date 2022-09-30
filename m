Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 248115F12B6
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 21:31:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232356AbiI3Tb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 15:31:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232195AbiI3TaZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 15:30:25 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BF7A31DD7
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 12:30:08 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id a8so8286840lff.13
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 12:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Q7Wt7NmwcU3io2xsT4q8AlyT1mkGLYVHtOHkxPZ8Qsg=;
        b=fHO+IsFFscYyGA6KsxL/3LYq1dgks7LmCSFGZLKQgEaYwpH13vAbf7dlPPvk0dQpSU
         s+luPjaTjFSRIP4MkEjbMSz84wvGGCVeudPdTLoC4zt73QFRx72cQzcGSuZPQO1AM2VK
         pziRQwHb8bwAnHullmH9WyUVknG+N3c9hqI8oLpH2uYMdQxWCR+7k56VHjl1H/ZqTqW4
         wt6GOaL/hJX3XCqP5AGMU2xqg93vtQfxXj9v/UX9SaMiA2FKRFRzFVADKVVKBZOHTm9Y
         JADTWFT10QDgFNyO8vFCiiTT5rbhtgeo+KKChW82g8qH/W57RqFC6MOjVQSuDlXlCJLR
         hcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Q7Wt7NmwcU3io2xsT4q8AlyT1mkGLYVHtOHkxPZ8Qsg=;
        b=Ow6F8ZtUFtQ2NXYmeecJIhcFO9ezMhp1NQyJNDH33jWRbh0WD5BKtwD0xRgoKuq7be
         NQh5KUWOaRRCbExhVNn7bI75s1B9vTf2nQFpFBxpw/RIG6V9JHoe5DEnCLtHuoP/nzFX
         2cb1bLo338TQyfDDKLKW2dGYSwqQyWrZzKaz3a3PAGVPf2HO6GfS25k4XWfmefcOb8ED
         TOJokxaBcamF0Azt9/A2+HdvPFeKvjX4oMN3ApalvKE18fnMeYFvyBS0l1nxo51XlhQ5
         6OtrHPV3HBoZsfBl4ElpGNjZ95HQn35b8V05/k2juADBvpWVXnu92smBnWWZRC3qglcZ
         UCNw==
X-Gm-Message-State: ACrzQf0PRLXMyJ9/trL62+Sg10TN+uEky66sMuSPnn1rxAKSRh2YEO1f
        kuAfv7rQlE16rk/qW71CM1fe7w==
X-Google-Smtp-Source: AMsMyM5NisDMoIfxYBDmjkTtCz7/i3xeob65iCXd3elLnTRywcAJ7iq2YVvSzdBDjBbkW5zH/aX22w==
X-Received: by 2002:a05:6512:4019:b0:4a2:f25:4214 with SMTP id br25-20020a056512401900b004a20f254214mr2214737lfb.94.1664566208412;
        Fri, 30 Sep 2022 12:30:08 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id br32-20020a056512402000b0049f9799d349sm393603lfb.187.2022.09.30.12.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 12:30:08 -0700 (PDT)
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
Subject: [PATCH v2 11/16] dt-bindings: pinctrl: qcom,sm8250: add gpio-reserved-ranges and gpio-line-names
Date:   Fri, 30 Sep 2022 21:29:49 +0200
Message-Id: <20220930192954.242546-12-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220930192954.242546-1-krzysztof.kozlowski@linaro.org>
References: <20220930192954.242546-1-krzysztof.kozlowski@linaro.org>
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

Document common GPIO properties (gpio-reserved-ranges and
gpio-line-names), already used on qrb5165-rb5 board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 .../devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml   | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
index c44d02d28bc9..d7d8e5d3b659 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8250-pinctrl.yaml
@@ -49,6 +49,13 @@ properties:
   gpio-ranges:
     maxItems: 1
 
+  gpio-reserved-ranges:
+    minItems: 1
+    maxItems: 90
+
+  gpio-line-names:
+    maxItems: 180
+
   wakeup-parent: true
 
 #PIN CONFIGURATION NODES
-- 
2.34.1

