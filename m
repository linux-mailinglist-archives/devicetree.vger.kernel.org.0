Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B3F275A7AC
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 09:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbjGTHU7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 03:20:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231415AbjGTHU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 03:20:57 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2AB2212C
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 00:20:55 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so3269025e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 00:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689837654; x=1692429654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zkvq8PLrKRAViicQL2lp06qamZMGFRuRLh5USoc58vw=;
        b=wnJnPobhUpvmppz0hmMpMdvG9c9qcJ/ca6mAvL1othcTqlsFruzm527lnbmmH4ksaK
         v2JE9+28IuaUsuNW3dVhX7EHwLcBBIVj/wUGo+6ch7GYbXChNJqRaTNwzL8ZGGwG0Df7
         7bJNW7g0oVK5kVlLmC5WEBJZHaAo+Lhyc0q2rpXbEQMMBTHMwqxHLYtJ4cj8LKK4whPu
         sm0e354nwlCjBjvH5SxCN6P9Uu8pLuQh3JFuDsD9+LxCwCWOsxANSyHQyRrm3Gg1YbGl
         E6z4XczhLwKmSu/2bSdY05IzZwqF8R9ce9ZH7wGjiy3vUNmHKbxMY3y+RwLz7UesSSO3
         QWHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689837654; x=1692429654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zkvq8PLrKRAViicQL2lp06qamZMGFRuRLh5USoc58vw=;
        b=K+eB78z5C64wpuxr/kobSL71aGrY+BGcwvBBLpJYqV0iJ8bo6gbYur1iWFlUPG9P3Y
         N3+KpqkzCQentep+ClkJY0ZlBbAKy7JEaSmIONQrIXuRF+UEEvLivtrpCk5G7I66d219
         cRxnG1i949IVxdCOSLumzWMB0Fiz/nRb/L5EluOsNCmFgAmURDvKj4mz5TMrOQNQeUqb
         5MhADYMconoivLbsOzvTBM9MMyeCi0mNfrkuNlc0MCLnGQrlEEkOrD12wqV9uO4fBa08
         4SRloMVcJsmI6GiBfbIgD+Fb3s7TpJunS+cSV92x8xRtNDhUMgemmkoCcuTwzomdapAO
         furw==
X-Gm-Message-State: ABy/qLaA2tgfnC0RaC//IzAJ8ZAQt5Ua4cYhkyKUoaeH9ZNLm16AmbbM
        gftn86V+COyqFLDSxIaYzJkB2g==
X-Google-Smtp-Source: APBJJlE/7M5tGfJ/bv8zqoEC6d/nfpK99w6SC9TQP0/TEykqSrrfD/lk4A3aQHRzuHvI0jKAlXWV/Q==
X-Received: by 2002:a5d:4524:0:b0:314:268b:21f1 with SMTP id j4-20020a5d4524000000b00314268b21f1mr1325029wra.18.1689837654072;
        Thu, 20 Jul 2023 00:20:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v1-20020a5d6781000000b0031434c08bb7sm399767wru.105.2023.07.20.00.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 00:20:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 2/2] arm64: dts: qcom: msm8992-libra: drop duplicated reserved memory
Date:   Thu, 20 Jul 2023 09:20:48 +0200
Message-Id: <20230720072048.10093-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230720072048.10093-1-krzysztof.kozlowski@linaro.org>
References: <20230720072048.10093-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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

