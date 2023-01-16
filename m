Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2700166C241
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 15:34:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232784AbjAPOef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 09:34:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232739AbjAPOeU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 09:34:20 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E891725E24
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 06:14:57 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id a37so4227796ljq.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 06:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gfxwMKEZH+NFckzgqpqUEB7uQk1T5vZlyDTZwBsejUA=;
        b=D0K+dkz5EQufaK9M0iV/c46pfEMmZmI7iXGYdUZ07hDY4s8CS2Bn/fNS/G4kXC6lZ4
         adwdLeaqj0l8hSJrrUHh+vPY4KzXMOxpcVQKFSI99gwBSJJWO7RBNuK8gTXHbtRq4kBx
         oDb5MEo47WRkHDJ0XWmxvyXY1S8GiJCTB2pR2002CTTp7FLEwZxvGIOWHKFpnAreziOt
         50Yo55lFXaY/uewzP/zktF9b2oab62AmbjttqJoP/LlMofBt329rsOU/NR1RzFosPNyY
         9xTMqAMSGugjFTV63tyQZz5p1LD+6XuKH3MREjjAbPjFrtswL3IomDxZwBuY9KMerFXI
         7sLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gfxwMKEZH+NFckzgqpqUEB7uQk1T5vZlyDTZwBsejUA=;
        b=aUyYv56A1+AmZuikwvPA/sywXBwUowsp+wgsRftV/CKfnM7zJbJgi6XjuCZV7yPMNX
         dUTg8263L6c1siFtU8A0Y/sJRDRsEUZyNF4cBXugEvASLBhkpfqhUnX26OdpaubSqDIm
         hbDIGPScsX9djtYmTbl1luYLIcr5yhn1KnpKOPGDgum2j+TEhZ+Be9YhfJcjeaksSyCU
         c2JMG3U8BDK2Fd0ecYNahX48Psm6qHfKctEJFY8NgUK0bzKTX3djYavJn1uxfYuSEEwp
         7ghynvmEYYfF0YEcSxq7uGpXFyBAG5u3GlIkTrUvAymq9Hh9d+CdCY7QaqyeJro0beN6
         7wtw==
X-Gm-Message-State: AFqh2kqM157BWLjgK99JtlmeQnbz8Jf4gTDvr6baecrJlrhFpih2lXRT
        Cq9p9IR5sPESnHKJvLK/zW85wg==
X-Google-Smtp-Source: AMrXdXsjQl9gidGkce3k1f5obBG7GyFTV59yXHIzIZfs68CLMBcx8NeFjmPHkRj7vMKD3pjNirkQyg==
X-Received: by 2002:a2e:95d9:0:b0:28b:5391:2ae with SMTP id y25-20020a2e95d9000000b0028b539102aemr4654056ljh.2.1673878496307;
        Mon, 16 Jan 2023 06:14:56 -0800 (PST)
Received: from localhost.localdomain (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id s27-20020a05651c201b00b0028b85d0e705sm483717ljo.136.2023.01.16.06.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 06:14:55 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: qcom: sdm630-nile: Don't use underscores in node names
Date:   Mon, 16 Jan 2023 15:14:50 +0100
Message-Id: <20230116141451.470158-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the reserved-memory subnodes such that they don't use
undescores.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
- Correct the patch title, didn't hit CTRL-C quick enough..

 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index 0259e90aad1c..763b1df692f2 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -133,12 +133,12 @@ ramoops@ffc00000 {
 			status = "okay";
 		};
 
-		debug_region@ffb00000 {
+		debug@ffb00000 {
 			reg = <0x00 0xffb00000 0x00 0x100000>;
 			no-map;
 		};
 
-		removed_region@85800000 {
+		reserved@85800000 {
 			reg = <0x00 0x85800000 0x00 0x3700000>;
 			no-map;
 		};
-- 
2.39.0

