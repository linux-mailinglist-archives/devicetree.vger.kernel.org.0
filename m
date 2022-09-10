Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B24B5B4579
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 11:15:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbiIJJPH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 05:15:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbiIJJOz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 05:14:55 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5356A192AA
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:14:47 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id v6so4806478ljj.0
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 02:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rD7nUjrvSdRKK26SnCtib57c+ip99Bt4hzrz7aSHTO4=;
        b=Rsz6LsFfnqmR36Oevfef1XQ4ctRQDNyk6AVpk3sJ0VocJmtKtRxrJ5Y6wTntgo/KoA
         JdF62sz51+zHvEHuwrevm/Q9/VUqgIZOiOYctiNfsRk86D6O8izzILqyWkzAwgQQaiWC
         Ppgy+mqSeepSFohcshjktqK2HmC+8yR2PWcZSyrqkwPfcWLYwlOg6wLlVrO6EG+mQo7D
         SOS1zvT12yvBziHAFvjhK41reSJoLAWYChP8P6SsqmiB+RIDcj4Me4RhWil8dLoSLMKR
         aFFfOLF9JLW3ff/XLuAuChQWQ1aoLIHnn6thK5Xg8LbORdKEJLEbZrSjb7BKZNPMFR6+
         5kiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rD7nUjrvSdRKK26SnCtib57c+ip99Bt4hzrz7aSHTO4=;
        b=fJBOOnVy3Y1H2//tzAmtRrYgMe9pCFmsP5P0kmhtgICal51WztBk02CZm6M0VUumdb
         ZNM7BJ5ZzvVsc4Cwi+Ck45Mje/Im7fOF7hvMF1WLW4KKiWDQlby+WsXe4TuxB3sU+Bwg
         8yk3W6m4fozpQSAsGup1Nlf357lEGgsNA4eCgqArEBwYJM1n9bt6H0t2vpZ39yYJqT9a
         SO8yshcq9SlAvswQx0hVOOsOSdP15HrU25wULKv4XZuc5VbwApztT6a7LUe4SuQsC+sd
         MaomR3qXIqbDYv/XjKFo5mflJ7H0USonSLqJ5+fPgqrASCJ8eEI31+fLmZGMJ0VguEXJ
         RLGA==
X-Gm-Message-State: ACgBeo2JNgFsB2+7VSEB5r33kF82sC1W2af3j8t7l50J5+VHob9mdeQ9
        vE7ou5i/IrnJ0Sz0Ex9Y3sjPRw==
X-Google-Smtp-Source: AA6agR7YXCEXY5JmG+5bvoz+TD75A3dMfqQpRqVBeqMKsXkzpNvGzIY3qGRw67lU6pqY35ES7xYGng==
X-Received: by 2002:a2e:bcc7:0:b0:261:8fb3:d4ec with SMTP id z7-20020a2ebcc7000000b002618fb3d4ecmr4836085ljp.96.1662801286633;
        Sat, 10 Sep 2022 02:14:46 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x22-20020a19e016000000b0048b26d4bb64sm201552lfg.40.2022.09.10.02.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Sep 2022 02:14:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 08/15] arm64: dts: qcom: sm8250: use generic name for LPASS clock controller
Date:   Sat, 10 Sep 2022 11:14:21 +0200
Message-Id: <20220910091428.50418-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220910091428.50418-1-krzysztof.kozlowski@linaro.org>
References: <20220910091428.50418-1-krzysztof.kozlowski@linaro.org>
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

The node names should be generic according to Devicetree specification,
so use "clock-controller" instead of "cc".  The bindings so far did not
define this name (as child of APR service).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 84b4b8e40e7f..6ee8b3b4082c 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4799,7 +4799,7 @@ q6afedai: dais {
 							#sound-dai-cells = <1>;
 						};
 
-						q6afecc: cc {
+						q6afecc: clock-controller {
 							compatible = "qcom,q6afe-clocks";
 							#clock-cells = <2>;
 						};
-- 
2.34.1

