Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6570B544AA0
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243215AbiFILlV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:41:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243948AbiFILkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:40:43 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD3471E1775
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:40:14 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id g25so404028ejh.9
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CNSMqPOWSXzw+Ck8M30e8l38LaeW0dc38daK1PaMf9A=;
        b=mNZv/vOTlgWw33oah/CqDorwmXalyTLA9BKQ25HQG6NfYltICakt5zZVVDjeF9AdIB
         lg9XtD34rEryysprD956jx1BJEB2y+b7QCbjgr/8W7zZ2bhq0YoFP5IKAOQRSyH/xW8q
         LBk8PH1/qkRnLxCU1Wm9sX4MoV2kxQFNYRgzjhaXSSHoI3q7JdZC+sXukltg5WmyM8Hc
         ydHE4Ro7TDaiavP+mZCZRdyS/TtWj1t3hs/5vssvk9Ii9ibpl0GYgI3YkMWAQeM0rlmf
         510h5UMxnN/ap47vWnT78ToH/45kN5npPdfVkwgxJIEWqGJGIEC1NQa9aL08XwH56BYt
         tJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CNSMqPOWSXzw+Ck8M30e8l38LaeW0dc38daK1PaMf9A=;
        b=qB/RmLlUvwX5I1wYuj3OeFRDYGV05eU1mHwvbyKlsNPoqnRx08JIjPl9o7CT4MPOnR
         vz0sgDJXhntuKaxE98J5b6W4LYxH0TcwrONbtaCMPThPuqUA1tkWe5v/dtTSSUVn5Jq1
         pqFl5vq1UzmPuHAEcuJ3ryNafSmahJmy9gj7Id7Dd0RuQGnQZ7YanlusBZTFlgEl49Ec
         jO6r0UBlPnsUfiSwybKqCXRTGoU6cpQvKTZVveqONmUEim2bS2JaH9ncffaSZ7RIHIcM
         6jgTRs8umuUZ8DIOvu2lWygsofTsxucHJBpKsRiU6hzDcayxAMqbztGMfbBIf07nK6PJ
         BO8w==
X-Gm-Message-State: AOAM533dLyjblCFbGz83plrR1R4lGCn4s0ydszPyyRKMUOBPKL3dpk5N
        SSoFZ+zWxDh9Qy5WLqot8L6VYCAQpCmsBQ==
X-Google-Smtp-Source: ABdhPJxmAk2Y+XroE7iF0LDQjobmFkH/yU0gGNvbSEj5slHvWwdNDLIfiKGfqCCpS+4l9xnWfXsPTA==
X-Received: by 2002:a17:907:5010:b0:711:f093:3a93 with SMTP id fw16-20020a170907501000b00711f0933a93mr9061053ejc.620.1654774812751;
        Thu, 09 Jun 2022 04:40:12 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id q1-20020a170906360100b006ff59151e34sm10638441ejb.39.2022.06.09.04.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:40:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 23/48] arm64: dts: mediatek: mt7622-rfb1: correct gpio-keys properties
Date:   Thu,  9 Jun 2022 13:39:56 +0200
Message-Id: <20220609114002.380563-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index c28da9323a9c..1a86857c9027 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -40,7 +40,6 @@ cpu@1 {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		poll-interval = <100>;
 
 		key-factory {
 			label = "factory";
-- 
2.34.1

