Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55AA85271B3
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 16:11:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232973AbiENOLy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 10:11:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233038AbiENOKz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 10:10:55 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05787140C1
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:54 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id p26so18901310lfh.10
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mfq8artsCmgPridHwXtCTWz4VD26jC/9nXCO2mqCNlk=;
        b=SMxjHo9JuoniR6X2mCjvMmoE9I2k1++Yc+VeG5DsVL58baRjeh/aL2kb+tha6nCBg2
         rbWm69A+Q+Y02I47hbgcRTk5hKE2yBwcvfytVXd5VO4ALpy3408WndXURCdcJX/+qe7a
         7Xe6mKuww0ivdZkQnLtKONOexb486DP423eV2kJAqGEqABHsDg24Xsmg1536iRLDnuF+
         M3cCcYOdAlC+lDWzbELmDrlRQlWUsm0meUq+un6jt7sUE/2zW2YWerK67rmwlwalg/zV
         vvQD33ReytFR14ldacFYtvNCTfAY9eiP+lI5GbrhQ4fmD+lNQCk5Q5+WutboyR48l9EH
         LNRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mfq8artsCmgPridHwXtCTWz4VD26jC/9nXCO2mqCNlk=;
        b=P2hWuCOGPCf9PvpeMoKwWjjyINOPOYapeJv9+dD/1Nxn44pCY0b5HQ+yOyDkHNtZb2
         hzDEf2dW1j3m1fbvdXy6SA1o8v9KH/dZC9SUtx+mVGpoogP6Uot29bU6S0NKtjemT1gf
         rRsvfJiccD8Kl4UN9OZG/fJ73gONLFAcE+enCdp5ty44OmPFELVVOfAP44tII++yRFSB
         oT1ICnpYnO1F1/Es0hXJS7KOHI1ItrvBDiiOAPXuPcrmX8n3JuTtyFu+MyMqd55XeB+y
         SMmZFd8yhSTT3OK7dbIn5olGGeu8mIEzoy5oK3NdfE2DWBZf2vCR/8NC2nvY28uK6u1+
         Rwsg==
X-Gm-Message-State: AOAM533QJm1JduRZc7Gsh070bUt1oDiWfqGkOc3FgZprVeMmXcQSTIX0
        I5h8NLH48PgsY0x9EXGPwQKctA==
X-Google-Smtp-Source: ABdhPJxKvqtUWFWZqZl4zlapqe3fxfAc85uOrYcObXZ9NBR1oPPInSqQgghaSPvBQooVUQpN3vRuLw==
X-Received: by 2002:a19:494b:0:b0:476:5917:b67 with SMTP id l11-20020a19494b000000b0047659170b67mr5382506lfj.452.1652537452364;
        Sat, 14 May 2022 07:10:52 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x9-20020a05651c104900b0024f3d1daedasm845912ljm.98.2022.05.14.07.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 07:10:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 12/12] dt-bindings: arm: qcom: document sda660 SoC and ifc6560 board
Date:   Sat, 14 May 2022 17:10:41 +0300
Message-Id: <20220514141041.3158521-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
References: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
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

Add binding documentation for the Inforce IFC6560 board which uses
Snapdragon SDA660.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 129cdd246223..ac4ee0f874ea 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -41,6 +41,7 @@ description: |
         sa8155p
         sc7180
         sc7280
+        sda660
         sdm630
         sdm632
         sdm660
@@ -225,6 +226,11 @@ properties:
               - google,senor
           - const: qcom,sc7280
 
+      - items:
+          - enum:
+              - inforce,ifc6560
+          - const: qcom,sda660
+
       - items:
           - enum:
               - fairphone,fp3
-- 
2.35.1

