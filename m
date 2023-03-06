Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 297DD6AB703
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 08:26:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229677AbjCFH0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 02:26:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjCFH0k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 02:26:40 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DDE21E9D6
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 23:26:38 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id da10so34581454edb.3
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 23:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678087597;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JdHWvg5PKTyuClSfOyd3i1zdj1ifxjvqp/gdXc0Tvgs=;
        b=HCq6lyM7N3osXiWkkIQNA1iQVvCuEcvpDtFUX2ceCJpWVHmrzKES9nDG4W60gEpa/c
         alyRbm0WU7WLfWewy3mIZRlg+KD/kKxAZZnwkZ59dfjcUTjqabmEUldLYe+8itqH2w7V
         VztF8O2tUfRkL0Mpnid6JfbTpETReWoGsfNumOF7NnpUe2PWv+X9xiS2ffC7f15o3wTr
         //rzoCWVKHbRvBfNcQZ48+8aY+tJByXyl0qlYSv3zgzdCvmgmtfBgwnr5LBDfhqXexAt
         x6WpcaGRfD8Jf4FEd4GSpM/12ocADsY0nXTmkiJzSUn8aWB4E/1ftUowpLku4BrhKaAg
         Mh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678087597;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JdHWvg5PKTyuClSfOyd3i1zdj1ifxjvqp/gdXc0Tvgs=;
        b=JavlVylmz3+0BAEmfsScHm1r9RduooGFfxdeJSxCrBP3PYDuHj0yhHL1DDOA1ecUM/
         hZMEVQRPJBxFFAa/7OmQM5SnOoIYecLQfa6+vdL/Q8vRzs4phdji6C9dXZPsBq4HMARb
         nu1n+MMhsnD0qYY5tdmL0DRyRbfePfDXlwUZ0m5hAC2ISHUHMwESOSSEY7v03cxehdGg
         LecMdVVq7TQqN1tcvKS2ND2txrDFL5a7BvLjf3/WD6E2jBnunnWXjjqovdfIi5IFNDCA
         xZ5f3IVpG0Qw80vh5KS2GKRfeE3yR7TPDUMlgnTyJT1Dw2NLKhGZVsp1hLWlESHnoRFR
         Kwpg==
X-Gm-Message-State: AO0yUKU3Uh5DC83dT64CroEh+5Trb4YTrMfS+W5w7fjXacEPrqFjLbX4
        7Veh5i0ydQXwm22cfZTUVVQ1URTGc6kJZoApsrI=
X-Google-Smtp-Source: AK7set8rGTEPRDgPmCzfWbbrF0Or9NS4F6fNOF8RCrvg6eBR44bErshqtPjmy1lg1Tz8huqBgrUDBA==
X-Received: by 2002:aa7:c6c6:0:b0:4bf:1989:9e87 with SMTP id b6-20020aa7c6c6000000b004bf19899e87mr10061882eds.20.1678087596660;
        Sun, 05 Mar 2023 23:26:36 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id t26-20020a50d71a000000b004be774e4587sm4652020edi.80.2023.03.05.23.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Mar 2023 23:26:36 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: mfd: qcom,tcsr: document SDX55 TCSR
Date:   Mon,  6 Mar 2023 08:26:17 +0100
Message-Id: <20230306072618.10770-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Add compatible for SDX55 TCSR block.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index 2eeebe920e6e..c29e1127685e 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -25,6 +25,7 @@ properties:
           - qcom,sc8280xp-tcsr
           - qcom,sdm630-tcsr
           - qcom,sdm845-tcsr
+          - qcom,sdx55-tcsr
           - qcom,sm8150-tcsr
           - qcom,tcsr-apq8064
           - qcom,tcsr-apq8084
-- 
2.34.1

