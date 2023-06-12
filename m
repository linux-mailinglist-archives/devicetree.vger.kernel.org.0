Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB43F72B777
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 07:39:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235639AbjFLFje (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 01:39:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235349AbjFLFj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 01:39:29 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81E3CE57
        for <devicetree@vger.kernel.org>; Sun, 11 Jun 2023 22:39:28 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f62b552751so4387501e87.3
        for <devicetree@vger.kernel.org>; Sun, 11 Jun 2023 22:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686548367; x=1689140367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMOlASi6Vn7FuOtPlAWq0wcXxa6OXt0yvMgulLt9t1o=;
        b=IV8FDM+6e4Z39+oOM8sjRpG3VvvvmAOZ8gMDk7zdBAmjnB+SsPmUQmCLhFnguUgHro
         76uQmXPGHiJgqYlVjGZcGw+qIui3DiyMFz+08rMwB3DddQRB6KufN0UCj6LmHbVmBso7
         mqhiX/UqO8nts1x7HK4S1hdK6hjgrMD6mVUEyzxojJfmOzaSU7X0iqtLCg3IV0yGek44
         o09F9PRowfOWNWKEq6ri0L5D35Xpe/UYdfwt6TrifQY0IvULhrCq1DwEA8J8b1zXrrmJ
         +1eK+E6gzmaY+NKIXyvvd3CaXND36uyS+ubOwGbUwH3BAKt2RrwboDu6zpLWSF4dHe1A
         9cFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686548367; x=1689140367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dMOlASi6Vn7FuOtPlAWq0wcXxa6OXt0yvMgulLt9t1o=;
        b=SMWU6r+JxbglTLy+7qfUXpGSKoJO+HslrkkWvViAyZVpx6SIvBBHPPtD+7eGVwsver
         bRA77m6nMcNCh6ltUy9x5pv7PNzSuvG6IG2vqCMkxG40Y9nsNOWjXXOtdwZnCX7Eq3yF
         Ojd6t/McB56G30mjUJAZOPfCMLnN3KMgF5YqFko7g+Ix5tRmg979fox8IaxKQO4KEYX/
         fOIwjKF6Slpuycp00zSSHmabU9teNdFO38D4d77+7ND2eD6vvNwoVDYB6ztebcnLfKhu
         TPUhJHeeYyK6UKnMwIpPoJ+Tu0bN32E/7EEo0qvrBsLCwyZWtPSRdDx5OtcM1EYbAKvX
         7dqQ==
X-Gm-Message-State: AC+VfDyL8SDZy4jalRZT7d0Hmt16jbQtE8heUNqf8svAOReYY1SFBvy9
        +NMHZECyni/zVnDEY041P/F5ndCCLQ8mIGsmVow=
X-Google-Smtp-Source: ACHHUZ7H3956rhfTawL9EpVswr7uTvrdfyXBUKNseJKKQL3/JBkBOF8qACWgtiDyHOJyr9DSD07jrw==
X-Received: by 2002:a19:670d:0:b0:4ed:ca3b:40f0 with SMTP id b13-20020a19670d000000b004edca3b40f0mr3389008lfc.9.1686548366927;
        Sun, 11 Jun 2023 22:39:26 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id n6-20020a195506000000b004f38260f196sm1324125lfe.218.2023.06.11.22.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jun 2023 22:39:26 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH 03/18] dt-bindings: soc: qcom: qcom,saw2: define optional regulator node
Date:   Mon, 12 Jun 2023 08:39:07 +0300
Message-Id: <20230612053922.3284394-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612053922.3284394-1-dmitry.baryshkov@linaro.org>
References: <20230612053922.3284394-1-dmitry.baryshkov@linaro.org>
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

The SAW2 device can optionally provide a voltage regulator supplying the
CPU core, cluster or L2 cache. Describe it in the device bindings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/soc/qcom/qcom,saw2.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml
index a016242367b9..b809a9cc0916 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml
@@ -47,6 +47,10 @@ properties:
       - description: Base address and size of the alias register region
     minItems: 1
 
+  regulator:
+    $ref: /schemas/regulator/regulator.yaml#
+    description: corresponding core, cluster or cache voltage supply regulator
+
 required:
   - compatible
   - reg
@@ -92,4 +96,17 @@ examples:
         reg = <0x17912000 0x1000>;
     };
 
+  - |
+    /*
+     * Example 3: SAW2 with the bundled regulator definition.
+     */
+    power-manager@2089000 {
+        compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
+        reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
+
+        regulator {
+            regulator-min-microvolt = <850000>;
+            regulator-max-microvolt = <1300000>;
+        };
+    };
 ...
-- 
2.39.2

