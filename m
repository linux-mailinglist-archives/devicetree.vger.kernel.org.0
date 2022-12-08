Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1154647805
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 22:33:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbiLHVdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 16:33:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbiLHVdg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 16:33:36 -0500
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D794391D7
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 13:33:36 -0800 (PST)
Received: by mail-il1-x12a.google.com with SMTP id h15so1762609ilh.12
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 13:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VlPWTbCJss1Wa3UIwQqQGPK89+eiS/X8Uksm10Uyh6Y=;
        b=sPv+Jec7RqY4m+nNl4+gh3qbUH9OdNcZRCr1IS0DhqXcxfj69/UPwmmU3wuMeJgB4c
         fnx3H7UPp5Jf2nJ318LZ5oHAoCRamZm7g8242lewL8uusEgKxwRRIHN4v8Pv9uHHHxew
         32E+OITHQSnMQbriXhFZBv2lx/LZbvb6j1zHYCZNLyGRcVf0vIyfRwAma+Ccelhi0JIf
         VpleTRL4leLlsxCTknqmXf/Lx7/m+qymLRuWYetV3WpkXs1RaQGBHjZNKOdzwqwKDMGH
         7UHikrfM0MMQlBQ04Jzuyxrlj1HaSWgihkb2cEMR4xkITfgAZoVfkhRccBGqnnRN+VP/
         ZXIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VlPWTbCJss1Wa3UIwQqQGPK89+eiS/X8Uksm10Uyh6Y=;
        b=VXpuPCn4l0qsAQgbx93jHp6GadhZFxrptgFrRhBkuG4kFyryH2zqbA0qALfK/t3APs
         elWdCicNVph+2k40DM5awprATFmlMjinJdZQ89VMRMwiEUpwFGxypXBnaAcTLLVguKPc
         tU3g3eTKBKWPREYKCH4N/c13VnNSranox8gMMYHIXkhQs33VUac8P0IRoHsoAkhEnx7r
         3S/mDghghXIMs32zZsB7rqronqA2CWnB00ssblscb5spoIN0bGhaVmGd5zjrYwxGpFcl
         7TnYLJ5tknwa1kr6nDtnbgU3IdWSSEnqsDzEgFKZgUz61wP6AcYLMjbK9maMwx/pXR1P
         vB3Q==
X-Gm-Message-State: ANoB5pmQN0mSeej0rQ5LDfRxUkpa1H8IKv9Erm12Hxfi3E8ONZFdt39c
        yjIZV4dsGrtTcP3S4Rduew3mZQ==
X-Google-Smtp-Source: AA0mqf4bfdd1wX5q7idr1fxwa8VtO0DvVuMASgioAfG+KJjYbOZm2vIuUWP43tyFz5uBrVMBbHcBzA==
X-Received: by 2002:a05:6e02:e42:b0:303:92b3:27ec with SMTP id l2-20020a056e020e4200b0030392b327ecmr559095ilk.31.1670535215476;
        Thu, 08 Dec 2022 13:33:35 -0800 (PST)
Received: from localhost.localdomain ([98.61.227.136])
        by smtp.gmail.com with ESMTPSA id a8-20020a021608000000b003755aa71fffsm9237846jaa.105.2022.12.08.13.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 13:33:35 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     andersson@kernel.org, konrad.dybcio@linaro.org, agross@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     Luca Weiss <luca.weiss@fairphone.com>, elder@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm7225-fairphone-fp4: enable IPA
Date:   Thu,  8 Dec 2022 15:33:30 -0600
Message-Id: <20221208213330.937714-3-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221208213330.937714-1-elder@linaro.org>
References: <20221208213330.937714-1-elder@linaro.org>
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

From: Luca Weiss <luca.weiss@fairphone.com>

IPA is used for mobile data. Enable it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index c456e9594ea5b..1e199a7898a04 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -362,6 +362,13 @@ haptics@5a {
 	};
 };
 
+&ipa {
+	status = "okay";
+
+	memory-region = <&pil_ipa_fw_mem>;
+	firmware-name = "qcom/sm7225/fairphone4/ipa_fws.mdt";
+};
+
 &mpss {
 	status = "okay";
 	firmware-name = "qcom/sm7225/fairphone4/modem.mdt";
-- 
2.34.1

