Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B10E86004E7
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 03:47:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbiJQBq7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 21:46:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbiJQBq6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 21:46:58 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A01B349AC
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 18:46:57 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id g11so6954831qts.1
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 18:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oqoqGaxwtL3ket6dbEG0OrCoeyW4b7sEIa7yonAGb6s=;
        b=L9e7YnJ9jFE3yPU6QELBpLPspYc4Qs20RiMSWdnhVWzyPA+SAjav2K2iuHLFI4g/Vv
         oRPvUS4PwrW38vc77ahdlbXlGfdZ4zbzqmAYZ8E71Kz20yzCSoC1i3EbkhiU5fFVIbYV
         +D3pCbQbJiwTJdFMA6Q2F+f4PsKx9OgHzacf9rsCSRAvFsEQHlWgtFdzsiw28TVcWvfw
         YJn8itZ1/AJ4ADeJ/6jQSL/oYd0x5gycEOgFR7zoKdPK4isUDnsb9g1aVLDK3msIGMse
         oxMIz+0oV6E93jj2ureextyey3sgINM4T9K38X4u5L3W1x8ggKP0D0ZI7Yo7o6tgmK/2
         z57Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oqoqGaxwtL3ket6dbEG0OrCoeyW4b7sEIa7yonAGb6s=;
        b=Y2dPTaUqRvW3rJBzgWGtllSHUpBehcFlzgy7Hy3g3MpLNZGPF0AJqE3PFH56xPOy/h
         qPUzfL0g85sYyW+uxaVh8XOZ2aTFDGtsPeSiFesRC2esZljx1tBg/RF1l70II3lfkbr/
         AAwVbfgOgdYIdqLZqxjZJrbwuBt/yYrLAEDRHzCvlHcuh8v4SiXjGg1x1256AFYdbfse
         kDOqmMMHNEOLanp5riTuNmFD+2K/repXyddDWZNIpotLQ0XnmNZRUq1SNM6WqvuyjeZN
         GyWs2nhtvgGqjFzI4rzDOKSbuRhP9CEFBrfGisENwvCrlMDqw7arOnCQKacrA7nC9yui
         6vZA==
X-Gm-Message-State: ACrzQf22WWp6sgur//ijTNO9n0MY88dFaAELxvmo0u2JHX2Yo77m4CoR
        qkJNSSfY9AdebQSXWkHB6CWbzw==
X-Google-Smtp-Source: AMsMyM4kFOeHtxqLwK4rJDSSE5+Yvcg/iHVLXwk0qGT9MB1KD0AA9Ae5AUgUSXGwborsmXU2G/YiVw==
X-Received: by 2002:a05:622a:1a10:b0:39c:c07c:df8a with SMTP id f16-20020a05622a1a1000b0039cc07cdf8amr7055647qtb.456.1665971216634;
        Sun, 16 Oct 2022 18:46:56 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:bb7d:1aa4:bef8:ec27])
        by smtp.gmail.com with ESMTPSA id 66-20020a370745000000b006cfc1d827cbsm7996502qkh.9.2022.10.16.18.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 18:46:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: arm: qcom: document Mikrotik RB3011 board
Date:   Sun, 16 Oct 2022 21:46:52 -0400
Message-Id: <20221017014653.12970-1-krzysztof.kozlowski@linaro.org>
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

Add compatible for existing Mikrotik RB3011 board.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 9ae0e7c675b3..87090406c251 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -262,6 +262,7 @@ properties:
 
       - items:
           - enum:
+              - mikrotik,rb3011
               - qcom,ipq8064-ap148
           - const: qcom,ipq8064
 
-- 
2.34.1

