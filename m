Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E4666B8CC7
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 09:14:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229932AbjCNILy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 04:11:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229748AbjCNILG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 04:11:06 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EFAE9926B
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:34 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id fd5so24563249edb.7
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678781368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rKPYbv1iLnGB+8/bk3IbTuS+zV9TKOLzePRCaV4OSl4=;
        b=s2MAYD+rDEsD5eHGwdFliTXA2P5OhUVSh7dZsFvk/A+Xb3zMyLdhU0KVu4hpJiUcGU
         YOp1rjxYBx8XVafAvONnWirpE7OxxHYepLnoxX3zlMrUtBi/KeTL9PSs1dlegHw7RS5F
         0Tw6yLnk2r3fApUsglYvGjz+9qCNvVgJE1p43Tlbt5u+AIk9n/AQPm5e/Tr+jV9JVtpX
         tG/noMQzzYMN6qxxxCzIU2h5OO9KjmkndjgRyOeYXD/RygOXefjBY9hShW26/CBpV8gd
         llNLe9/TcsZJewWVshZfisCC4xvc5TQPAJeI7nt2rVHCCFF8OCtkT5D36g5uTFQz/qQ1
         G/QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678781368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rKPYbv1iLnGB+8/bk3IbTuS+zV9TKOLzePRCaV4OSl4=;
        b=fNOnz2A58U/P/kRrxGXVkfgUracbyWDTe8zGqreCxfZ0eJlsVz2T2Wu1pekd24vwLP
         0vlxL0IUvbN56Q6AK7HXRq1AoxP7P1YS4z+zaP9UBqfH8ZHD1yBE0k5PKIVNIj0ku/0g
         XjdqTCCwDrsI1F9tET64vybPbNx/E74Ou3f6HAYFmo2YXOhxAkUqreeXNJYmCVdS8NcN
         /4J7mN0m63hk0FmVdJ6ky3c/cTm7f1anf1hDqPtTUC18n2cMh13GVQubmL7RWi/yZIsB
         52X2OJ7+tlQFWsOKycWKHBA07WLNuFshgGu0mSarqsT2QMZzd4w9PTe7QDJArlct5oR3
         JsfA==
X-Gm-Message-State: AO0yUKW/nCohdDuKzdtL4EhvSWH8082+9zzESU0QDc7aWec0xBSsTYBD
        A6UWmdIZs7GsMxUoa7Q3UL8j0g==
X-Google-Smtp-Source: AK7set9tAQ/UTUyIwBWmhzJ1kVfZkwoA544DRKLIMoO2W/GSjP1BpoPI2ti7TXz6iek3ynAsbFYBeA==
X-Received: by 2002:aa7:df1a:0:b0:4fc:7201:6e4 with SMTP id c26-20020aa7df1a000000b004fc720106e4mr6335498edy.20.1678781368005;
        Tue, 14 Mar 2023 01:09:28 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6932:5570:6254:9edd])
        by smtp.gmail.com with ESMTPSA id co2-20020a0564020c0200b004fce9ff4830sm584872edb.88.2023.03.14.01.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 01:09:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 09/13] arm64: dts: qcom: sm6115: add compatible fallback to mailbox
Date:   Tue, 14 Mar 2023 09:09:13 +0100
Message-Id: <20230314080917.68246-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
References: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SM6115 mailbox is compatible with MSM8994.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index fbd67d2c8d78..2feaf9c831fe 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -2038,7 +2038,8 @@ watchdog@f017000 {
 		};
 
 		apcs_glb: mailbox@f111000 {
-			compatible = "qcom,sm6115-apcs-hmss-global";
+			compatible = "qcom,sm6115-apcs-hmss-global",
+				     "qcom,msm8994-apcs-kpss-global";
 			reg = <0x0 0x0f111000 0x0 0x1000>;
 
 			#mbox-cells = <1>;
-- 
2.34.1

