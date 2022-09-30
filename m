Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8AC75F11DC
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 20:52:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230156AbiI3Swp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 14:52:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232331AbiI3Swn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 14:52:43 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DF7716513D
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:42 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id d42so8253611lfv.0
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 11:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=jp/vfTGvvXHhuI6nK3it1mmb0/0BpJRhlLuLkeSumxk=;
        b=QzLZu90wAArclDgvNzOxwGR/QIo86NPXDL7Oa2+4Kkx6COoVnTGgZHFFfekV0bynvp
         10AgkfrYywXveltDDuo2XoDITRLgzNfBLYNfKJGESqCQbddm2ywDzj8xbSYMd7P8yDwi
         HdKxdvIMeWcgxwLVTMcFGlEGpyRQ/bXdp126pg30FnrV5lv5gOqiC1Qhb8HRkF1eMUHf
         kHs8+WG7EKDvncmAzeJT3P70m8WN45iWrutcCIyjyGYzWskF8QFFf2rBi3zUgoJVyX5R
         uBIeLpEMJXI5l1j5XTttpf1J1AhvpHHBEjdQ0URbuqqh4UWAR6RP6GgkOAk8zsbp5Hhc
         0e9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=jp/vfTGvvXHhuI6nK3it1mmb0/0BpJRhlLuLkeSumxk=;
        b=bpDRrFJqelf/fgR7QRbGtptLPATxF1bsj2aHVGHMLmfStS4aiuCv7Uk6mBj0P8IfZT
         3imEeJKdSXgfkVb1k23t6Op4W009/wyWbrSwVjthxHH74ejW0BPsUpORPb9rhFqvtGAQ
         t4kJqEek+4u5Aa9aY1GCh6YeqqMF4sm6kxLgu7GyOj03CfsK0Igx0OZiPcQlUYyvUC5a
         m1QKzB1y1ci8bdJy6Cz/2EoPS4M9bryHSMaDa/0/N1HHAgtBTvtp6ZA1owbU65rFVooG
         +x0P7yMFyME1EqUWe6RruXqfDHGCZ32R0bwkbJbdY5DM6Fnmba/qFBYWUc/Ht2loH3Mg
         nCYQ==
X-Gm-Message-State: ACrzQf0ecKuss6CMg+GeVaDmL62fq1+8k6FiSPJ2ETmmua8FVh3j9Mu3
        qzpKY24PpbCw42dVLwj7vPmBRQ==
X-Google-Smtp-Source: AMsMyM6m/t6m12hypcQv+zqlO3HThK1GtBfBX/QoHJq4xhZWe6DJoeuD0cSuR0uwt98Xh4f+Vb42Cg==
X-Received: by 2002:a05:6512:4db:b0:4a2:15ee:af03 with SMTP id w27-20020a05651204db00b004a215eeaf03mr1129974lfq.14.1664563960635;
        Fri, 30 Sep 2022 11:52:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i8-20020a056512006800b00492cfecf1c0sm374703lfo.245.2022.09.30.11.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 11:52:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 04/23] ARM: dts: qcom: apq8064-ifc6410: fix user1 LED node name
Date:   Fri, 30 Sep 2022 21:52:17 +0300
Message-Id: <20220930185236.867655-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
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

There are no address-cells for the gpio-leds child nodes, so rename
led@1 node to led-user1.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064-ifc6410.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
index f718b37192e9..610fb8d652c3 100644
--- a/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-ifc6410.dts
@@ -38,7 +38,7 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&notify_led>;
 
-		led@1 {
+		led-user1 {
 			label = "apq8064:green:user1";
 			color = <LED_COLOR_ID_GREEN>;
 			gpios = <&pm8921_gpio 18 GPIO_ACTIVE_HIGH>;
-- 
2.35.1

