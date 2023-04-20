Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 949B36E9B3D
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 20:08:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230471AbjDTSH5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 14:07:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231187AbjDTSHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 14:07:54 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD56A30F7
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 11:07:53 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id fy21so8252365ejb.9
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 11:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682014072; x=1684606072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zkvq8PLrKRAViicQL2lp06qamZMGFRuRLh5USoc58vw=;
        b=JaTTF2w2Psv6RPFeqUB56LHAC2C7PSqi/9UvCGBsarZT60O63zt4XJy3cv8zLIqXs8
         W1kATanqEfuq0YD0dEgT1Py2DoE6MMAIAdUmkI8xH30qeaIQlLJmuafKfacUKWGHJ6WN
         ilje8homFQdJjJspGnVFSIfwI6X7s9Bq6XAnlE0W25mpyE32Q0YOrLl8p8w2ulGO+E3m
         Azlv51Vlr3qnZizlqm5NIb2gORq5Oxeihw2UaY6/Ww0J60lkqVHjwAx47kI20pUppNri
         RD12G8F2v3SyF1IB+fSe9D5pCEsOBJxSRLm1QSQEok6fWj++4fAQyPognMXc5pOe+jXZ
         0/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682014072; x=1684606072;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zkvq8PLrKRAViicQL2lp06qamZMGFRuRLh5USoc58vw=;
        b=U6pp5sX1oUp7CnR0fo998sY4Hzf/Dj5gMDi7eoybLgivvetFslLwJaf6v4T1HOfU9W
         uALH2r8jyRJ9lHpxXnZIWu13kawuDdrxcflo5H66r92Ptz+s1pRpTsy/AftgEmKt2J5l
         A35LYpAVN8O38JDw4ybZsUQXkRKsJyh0jlsZ60n3EhcKKG6+GxCph13cPqm4nFEEk8UY
         5ZjatDA8AAcjvW2eXrHAoTLGEJeZqUyHqoxyBco4/9OoGRFSYyz54lRFpC/vQKMrIUc2
         cqYAsR0wCHS+ALdyDoIllJY8WCv6mk2n1tGG6AZyRYsA334xFGfIN32yU5L05Q+drJUp
         1iqw==
X-Gm-Message-State: AAQBX9fCewZ9MrK6Yb9LpnDW0Do8Y5v+4DrzacuEC90T6G1ftS2ikAgr
        9q7QJvdYjPBqQPcn53WIECAhwg==
X-Google-Smtp-Source: AKy350Y3G94dHrpQ7lRUrqLh6jPIr5AKQCaReTuIIg889Xx8yRrthyxCehrwzYFs713o3YB5i1suKQ==
X-Received: by 2002:a17:906:e082:b0:953:4987:4b8 with SMTP id gh2-20020a170906e08200b00953498704b8mr2233004ejb.47.1682014071871;
        Thu, 20 Apr 2023 11:07:51 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:bcb8:77e6:8f45:4771])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090610c800b0093313f4fc3csm984778ejv.70.2023.04.20.11.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 11:07:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: msm8992-libra: drop duplicated reserved memory
Date:   Thu, 20 Apr 2023 20:07:46 +0200
Message-Id: <20230420180746.860934-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420180746.860934-1-krzysztof.kozlowski@linaro.org>
References: <20230420180746.860934-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are two entries for similar reserved memory: qseecom@cb400000 and
audio@cb400000.  Keep the qseecom as it is longer.

  Warning (unique_unit_address_if_enabled): /reserved-memory/audio@cb400000: duplicate unit-address (also used in node /reserved-memory/qseecom@cb400000)

Fixes: 69876bc6fd4d ("arm64: dts: qcom: msm8992-libra: Fix the memory map")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Maybe the original intention was to use different address for audio res.
memory?
---
 arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
index 501e05efbef4..133f9c2540bc 100644
--- a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
+++ b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
@@ -110,11 +110,6 @@ rmtfs_mem: rmtfs@ca100000 {
 			qcom,client-id = <1>;
 		};
 
-		audio_mem: audio@cb400000 {
-			reg = <0 0xcb000000 0 0x400000>;
-			no-mem;
-		};
-
 		qseecom_mem: qseecom@cb400000 {
 			reg = <0 0xcb400000 0 0x1c00000>;
 			no-mem;
-- 
2.34.1

