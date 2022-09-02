Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14CB35AAD39
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 13:13:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235317AbiIBLLW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 07:11:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235715AbiIBLLO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 07:11:14 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A0689F1AD
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 04:11:06 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id y3so3211045ejc.1
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 04:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=ddR2V4NQZ/uHaIj0TMBF6nHgNNaXNlmSk7XRDg7SJk0=;
        b=XY0XaCadCm+9cjwcm9VM5ahsPw4zgoyXqhB9qX/k5HYD+z8oZ8PvjX/8K9ldNS4zK1
         P9j0Y7+tvUxCEhrW5iKWxajxYy9yhYpHyqmpnqIXWt4AyOHDviFZNaCQrQob6o9jmfCs
         /+yClxRcpRz2H01AIooDY/JTm1o0RZcvHcrBIsixis4hX+9BT5UUNDulIdg+fbDVji1S
         UE8jTd5AyGFmlx14tXb4qKuEzkXIaSCuotaJkpTAEOlMMQTy3Y/MqFuc3agqbSaFPczQ
         ZLJkC0vbnGkwHJywA0+7SQh6Nm9rtb0izOkhv+WTkYEHBHQnLYK4nGZ17IzsQHFNtnS/
         IC0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=ddR2V4NQZ/uHaIj0TMBF6nHgNNaXNlmSk7XRDg7SJk0=;
        b=uKY4/A5m4h7GcFBHs3D3seQdDWpZIv+0QtJ76xIuEcoHNH3dS9FUJ1M9lcAujwP+jJ
         RNubSkxyPAxKYILqPr3lkjFOVzXe/Qy+MN2wjG/dzMOxEQTzju6AO6v8DsP15Q/DVwwB
         tFtMowGExzAoSeEuSzkkwUbE/nSNlw2mX3WC8PAAHxNHQyOlv3HA5ZnUpk3AZzSJVYs6
         5s5mLErUTp0Cwmn5MdUmPl5A9tgumEQ/Yt4IpZLaWo8t6eEsNcjpTFxE91oDq5QYoNRU
         or6XgW3JmH/1ysw7TI7l2fcDziLYKq2m9oA7HKY6W5QgGOHWWFIWoFipRvC7ohBDnX/B
         Baew==
X-Gm-Message-State: ACgBeo3wDY00YlokGkaeio0+x+qt7AJnHrDKjtILMMS0To4xoZn8+MYp
        uC0Ueeoi/owwl058zlpKeYmgcg==
X-Google-Smtp-Source: AA6agR7cddYAXsTIKrq5CDpMgDL8ePEg1TA0rtMh/B2q0E7hidAxQDtPuNj4r20hwSBJ4aJZdkJ1cQ==
X-Received: by 2002:a17:906:bc87:b0:73d:bacd:84e2 with SMTP id lv7-20020a170906bc8700b0073dbacd84e2mr25409192ejb.494.1662117064619;
        Fri, 02 Sep 2022 04:11:04 -0700 (PDT)
Received: from otso.arnhem.chello.nl (31-151-115-246.dynamic.upc.nl. [31.151.115.246])
        by smtp.gmail.com with ESMTPSA id h1-20020a50cdc1000000b004483624d550sm1245624edj.71.2022.09.02.04.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 04:11:03 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] mfd: qcom-spmi-pmic: Add pm7250b compatible
Date:   Fri,  2 Sep 2022 13:10:53 +0200
Message-Id: <20220902111055.106814-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.37.3
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

Document the compatible for pm7250b that is used with e.g. sm6350.

Also while we're at it, sort the compatibles alphabetically.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 65cbc6dee545..202aadc1539d 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -33,11 +33,12 @@ properties:
   compatible:
     items:
       - enum:
-          - qcom,pm660
-          - qcom,pm660l
           - qcom,pm6150
           - qcom,pm6150l
           - qcom,pm6350
+          - qcom,pm660
+          - qcom,pm660l
+          - qcom,pm7250b
           - qcom,pm7325
           - qcom,pm8004
           - qcom,pm8005
-- 
2.37.3

