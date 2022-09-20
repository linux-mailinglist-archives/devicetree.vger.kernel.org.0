Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34A955BE9A0
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 17:05:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231772AbiITPFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 11:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231778AbiITPEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 11:04:40 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7654B5D124
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 08:04:22 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id a2so4277971lfb.6
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 08:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=1xM5SAgV2yOSXYHddecL2UZpF+0bVuts3JrhIOTJ0WI=;
        b=vouRKThlJjw88OHq2SUh+XYt6pKT+FRXjASslnQxkvUrkMK2JWof/+EsBxutoatRyD
         cTtjAVgcWuOzE7TElZ5bmvn3vjtcQn4kYe17sCop0M405bVp1L9nMLyXjA0KWkqu6LA9
         Y7pKOGih9xsUtrVPPj0AwSNh7N0pWXWCx+4ZzXirQVmx7lqO9OrnPKnYBjdvjzmX37I0
         nEjIg7pVhiBNyEmE9Iyucn4VJ9NyYAc8pmW4fJdK6QI8zQb2aAX5aXwopygaeEFjeMze
         rD+ENmA2IUYFgO0Cd4pKFAlYPhh9srM0KkI5m/aCgrsCJrF0hNZPz+QCumb4aaEq6DW4
         hcFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=1xM5SAgV2yOSXYHddecL2UZpF+0bVuts3JrhIOTJ0WI=;
        b=1b4vCT3vr9mwLWZja8+39Ty+J8oQcSBpaKrF7xm5qUo2ksNZam7/tWhzFkVoL/A/uS
         kPGDaH38oHdqRIDiMXQl9b+waAnlC5SEiKwoRbTUzYazc9hRdE3C1aITY8ZyAoglaEaX
         dCGHi972LegLl3mpHF4MBYWB2J3W33EjtuAqMGJ9tsEzRux7MwbpQbe02Q+0RL2Xg6Dm
         T5LXPtQJdse/k+osYyIf362/oi8b4uM5w7JKj9TYcCbvoWzQ0c4w6MeLbefGB4Ss1ZBt
         j67btoIyaZWQSmVacxLHWPl+E7RDvHVTq5XuNOYvig4bfpJit0upGmXddo7vCc3zWDti
         WACA==
X-Gm-Message-State: ACrzQf2bE0PtrR6ZlgkVgqnKgcGl/tp5521EZZq7OazzrMOYS8ncT8vY
        18YKecUzTFE8S34R6eWYYAPJfA==
X-Google-Smtp-Source: AMsMyM4d1SHbHak7lgC5YBSzGtwKUKMIgYEBZwk/Ap0BUknR0fGFQ8O88T8n+Rsceuoha+C8T08/5Q==
X-Received: by 2002:a05:6512:3502:b0:493:e21:b77d with SMTP id h2-20020a056512350200b004930e21b77dmr8181149lfs.580.1663686260031;
        Tue, 20 Sep 2022 08:04:20 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p10-20020ac246ca000000b0049f54a976e3sm8294lfo.58.2022.09.20.08.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 08:04:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/3] ARM: dts: qcom: msm8974: add missing TCSR syscon compatible
Date:   Tue, 20 Sep 2022 17:04:13 +0200
Message-Id: <20220920150414.637634-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220920150414.637634-1-krzysztof.kozlowski@linaro.org>
References: <20220920150414.637634-1-krzysztof.kozlowski@linaro.org>
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

TCSR syscon node should come with dedicated compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 7a9be0acf3f5..a4e12daf3eeb 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1239,7 +1239,7 @@ tcsr_mutex_block: syscon@fd484000 {
 		};
 
 		tcsr: syscon@fd4a0000 {
-			compatible = "syscon";
+			compatible = "qcom,tcsr-msm8974", "syscon";
 			reg = <0xfd4a0000 0x10000>;
 		};
 
-- 
2.34.1

