Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F1815B018B
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:17:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230476AbiIGKRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:17:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230370AbiIGKRB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:17:01 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B10E350040
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:16:10 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id m15so2002852lfl.9
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=751surAPxPI7nKu0MMgW0W0B94zgA9MhkjYrnO7nGnI=;
        b=o5d+FdZnHGKmhZkD13oEr5F2G7/5qQRMGIc/xYqsZnha5sQxzrPVMX8IVbRTOKbcxw
         OAomQ+Q2KiUCOBAijRgd8owZ2Wc1aWPqqMusrNIYCPHkRrEy+m0NGndmwxFPYFV1zi1Q
         xN4/jxTG0tzd9/FdscLVJofV8cfq92yVgM2vsyL+U3qznumg0+2pZllHn+EH7KmkP6m+
         ih0hmX98sQVmXnYZ0dWgAC0/4s+/IYCCxVkhWv2R8eCKovkjAAyBIjq3KcuIFH9oJlF7
         ZYKNmHoWudAgOgpkWpR2+9zPqr6ZHpeqEyKgC7h64hDjsDetrjXqQPFs7zlQZavgITJG
         Z0aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=751surAPxPI7nKu0MMgW0W0B94zgA9MhkjYrnO7nGnI=;
        b=dVgZ9fSeLoA+qsPlwJ9w6dkhVkC0+DdSDwMy+JeLm4zxqMgO+j7Hmstd4wocTOSx+7
         4NGl+fyI86caEhpidYPRpxaZSCaCBvryMPY1gM7/I2QixUuVaTsVazNcdPIkWaJnKi4d
         2UbfDpB3CNWeRVHXSwhnBlPaT28T772jpQ+kjlIXMZS+s/RYvpJK0j+Red7P6DTkGYgK
         yzOEjcEeUbsiUJ6jKqRWhqs3wlo6HWv08A++PIGwxqeoXYevWEei3jH9rvk7Xo/YIZHw
         XQv7yEmsPERoo34yg6o6MnWDkFz11dDXjYWfqZ5Ti4q/UcybclZ3em6rH9MoNr9W7nyt
         wfDw==
X-Gm-Message-State: ACgBeo3EWxLMsGRQTJpBMorqUwzVTaaJYP/IRpYmbHhwAj+E3iwEeQ+B
        iXbbfV7y5gQmVgxn90n6A0DnfA==
X-Google-Smtp-Source: AA6agR7C/OFIpW9w94tqGiShtUWVPncRPvTDDLGRPNEnmp5S+qRQa35ahQen3VhMVvQmjiaL71XG1g==
X-Received: by 2002:a05:6512:3502:b0:493:e21:b77d with SMTP id h2-20020a056512350200b004930e21b77dmr843355lfs.580.1662545768897;
        Wed, 07 Sep 2022 03:16:08 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u9-20020a2ea169000000b0026ab0e480bcsm960734ljl.39.2022.09.07.03.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:16:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 03/14] arm64: dts: qcom: sm8250: align APR services node names with dtschema
Date:   Wed,  7 Sep 2022 12:15:45 +0200
Message-Id: <20220907101556.37394-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907101556.37394-1-krzysztof.kozlowski@linaro.org>
References: <20220907101556.37394-1-krzysztof.kozlowski@linaro.org>
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

DT schema expects APR services node names to be "service":

  qcom/sm8250-sony-xperia-edo-pdx203.dtb: remoteproc@17300000: glink-edge:apr:service@7: 'dais' does not match any of the regexes: '^.*@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index cf5d65940174..84b4b8e40e7f 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4782,13 +4782,13 @@ apr {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					apr-service@3 {
+					service@3 {
 						reg = <APR_SVC_ADSP_CORE>;
 						compatible = "qcom,q6core";
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
 					};
 
-					q6afe: apr-service@4 {
+					q6afe: service@4 {
 						compatible = "qcom,q6afe";
 						reg = <APR_SVC_AFE>;
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
@@ -4805,7 +4805,7 @@ q6afecc: cc {
 						};
 					};
 
-					q6asm: apr-service@7 {
+					q6asm: service@7 {
 						compatible = "qcom,q6asm";
 						reg = <APR_SVC_ASM>;
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
@@ -4818,7 +4818,7 @@ q6asmdai: dais {
 						};
 					};
 
-					q6adm: apr-service@8 {
+					q6adm: service@8 {
 						compatible = "qcom,q6adm";
 						reg = <APR_SVC_ADM>;
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-- 
2.34.1

