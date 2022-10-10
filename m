Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B05335F9DD4
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 13:46:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232279AbiJJLqe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 07:46:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232253AbiJJLqZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 07:46:25 -0400
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394A858094
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 04:46:24 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id s7so2522787qkj.1
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 04:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GMZcJTRYOrd3F7iZT1AszVcqnx3Byk1q+Y3x6xxN8ow=;
        b=hnM3nEZ+442OjsNTDkM5sZUoNnVjyHeShP7nciF2wL3jGiGpZX38YYarUJNPILdujN
         mTGnTdoWBd7OBsIUrkEKmprj9G2IYzluM6509b+gzhkJmPVSvsIATXbVF/Scd1jA+PET
         eerMv/T/OjIEZVcP6PohwTZLBEOmBVtwKilG/++MZClSEF8DDL4Jmu2U8u3LFidguJlg
         hE4OAbY/8CDsg/GphW6woi69cZuDhN2QUA4/FoeB5KaGMqoELO9nvN0rEydd7WH4BnMc
         0ymWRLS1wdzjqDoIKzU8fH8Us7GHDu1PZVwi6Dzzh3w8XEArEnwBAQTlWgH7zwi5+EtR
         +Zjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GMZcJTRYOrd3F7iZT1AszVcqnx3Byk1q+Y3x6xxN8ow=;
        b=r5MihRnC5Pl/ZHOzF6eALgf4gINmA/3ogG972rI3XQ3YRq+V8sfu+WxJQXJ4HIpi4/
         F35iyrP14jH0RSs99o+DwPiuWmlLZqMN+4FOPg2rbnJlkMt0g9NwnR0bFlbHSv5L5JhT
         HmHknXyDxX9nkvI2//3C/cGU23IJtx5SLBQvBjjyKyeLsmte6Gtyz5nA5z7lv05HKn7e
         HvUGfSnGJZ6qTWKpdLWEz7cZ0rPSqy0Hin8qArTT791BD7ltJMkBXGYQFEQp2rhZk1Ww
         f43TOS6t4mF3nkz+m/r4GqK90v+a8+swia/RBAN/U9zC4fPtJBPOz/Dd0apQdfpdDXxT
         UBRw==
X-Gm-Message-State: ACrzQf2UYNotyH967m189ObBiZ70oTMtFlVvaqxJhtBw9Ad3rut7GIhW
        OCloG9EoFVO7iguzTKZhJ8PMLw==
X-Google-Smtp-Source: AMsMyM6smuzPSfSeAGr95sYjw2m5FSUruavsvL8hBh5rr9xabNGg5j3Ie0GoffN4wAiNqMpkD7uKfw==
X-Received: by 2002:a37:9303:0:b0:6ec:5678:8119 with SMTP id v3-20020a379303000000b006ec56788119mr4088916qkd.765.1665402383233;
        Mon, 10 Oct 2022 04:46:23 -0700 (PDT)
Received: from krzk-bin.home (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id s12-20020a05622a178c00b003972790deb9sm6698707qtk.84.2022.10.10.04.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 04:46:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Clark <robdclark@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Lee Jones <lee.jones@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Vinod Koul <vkoul@kernel.org>, Xilin Wu <wuxilin123@gmail.com>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/6] arm64: dts: qcom: sdm630: fix UART1 pin bias
Date:   Mon, 10 Oct 2022 07:44:12 -0400
Message-Id: <20221010114417.29859-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no "bias-no-pull" property.  Assume intentions were disabling
bias.

Fixes: b190fb010664 ("arm64: dts: qcom: sdm630: Add sdm630 dts file")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>

---

Changes since v1:
1. Drop cc-stable.
2. Add tags.

Not tested on hardware.
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index b51b85f583e5..e119060ac56c 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -779,7 +779,7 @@ rx-cts-rts {
 					pins = "gpio17", "gpio18", "gpio19";
 					function = "gpio";
 					drive-strength = <2>;
-					bias-no-pull;
+					bias-disable;
 				};
 			};
 
-- 
2.34.1

