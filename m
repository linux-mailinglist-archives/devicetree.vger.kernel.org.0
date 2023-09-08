Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBAB6798624
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 12:49:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238438AbjIHKt6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 06:49:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232229AbjIHKt5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 06:49:57 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F0EB1BF0
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 03:49:52 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2bbbda48904so32370141fa.2
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 03:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694170190; x=1694774990; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1vzCZEwPNr7Ag8FayuSyK2O3/B460AqQ5RqOT23N1fw=;
        b=tlJM0fcZeV+J4m/o0RA5D2Tz7AKbirRh/nglcj5VTpAmR3kn8wapoKHUM/Mf35k8yl
         9HmVbYmTvke5uXsMa0C+aCeoDIeuouU+0PHwlZHCKkX1GO63ULbiYJluv8lIBN54jqU9
         LCpAbooNYZ1MvNvUFBbCyEOzU5zbMpVr2JI1FQyigV7Atmazi5EqRIsJBRmAUgZnj1m0
         TLx9HD2NWg0h61IFktcnNVwMY1BmQmti7PfLa3dnUcQ+lV4Truz8aquLmxOfB8kJ2KAP
         prx3xBl26ZsDfSO1eOsP7YXkxX7lTPAnSEoWZVkBR8i5JKEkDR8unbtN6MuyLngourUC
         LStA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694170190; x=1694774990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1vzCZEwPNr7Ag8FayuSyK2O3/B460AqQ5RqOT23N1fw=;
        b=CqfTRm5VNJxRODJxWKiUdejlKZrIrh59SJz9tdFCU54f6vDOxE7MBT8jNxgyyCKHpY
         uYgb6TauGHUc75SDzLL9GzYBWW0aCoDNwGR84mSqXvGYZiO0MLcFzjFiQKHNywqd0QXf
         XgZZtBysYUqmQiiCPBOwGEw9QLVWtsHv4cVotBuzjQxtq940WPftnbToSglZYC06xxF2
         +gCJyMH5L/G6xmBn4PpGi0vApWHBoeeIwXVIi5WEH/J7+7dXFA5UTDsTchiRpT/IqobT
         yPoD7GSyKc3LMEVXwR1fJhGYmeluzK6WOKh8vA+SH43Lpcy7DGiqA+wHyiDZAB6VQQUG
         zPAg==
X-Gm-Message-State: AOJu0YzFeAFD2uYIcgJ3iDDtGrPRqidME52KKqsUjtTRsZbQy5G8pt12
        aQ8+hlLTnXeY12Lp9wdW4cLIyw==
X-Google-Smtp-Source: AGHT+IEw4p+dgbfZBhiOwmB+9Ck6P7rI8sfTPPIGE6s4cE2XLLX6ycEE6rZLPcditjzBrX06wCFeAw==
X-Received: by 2002:a05:6512:2216:b0:500:acf1:b42f with SMTP id h22-20020a056512221600b00500acf1b42fmr1586363lfu.53.1694170190635;
        Fri, 08 Sep 2023 03:49:50 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id y15-20020ac255af000000b0050089b26eb0sm243321lfg.132.2023.09.08.03.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 03:49:50 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 08 Sep 2023 12:49:48 +0200
Subject: [PATCH 1/2] ARM: dts: ixp4xx-nslu2: Enable write on flash
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230908-ixp4xx-dts-v1-1-98d36264ed6d@linaro.org>
References: <20230908-ixp4xx-dts-v1-0-98d36264ed6d@linaro.org>
In-Reply-To: <20230908-ixp4xx-dts-v1-0-98d36264ed6d@linaro.org>
To:     Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To upgrade the firmware and similar, the flash needs write
access.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-nslu2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-nslu2.dts b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-nslu2.dts
index da1e93212b86..706ba531faf0 100644
--- a/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-nslu2.dts
+++ b/arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-nslu2.dts
@@ -101,6 +101,8 @@ bus@c4000000 {
 			flash@0,0 {
 				compatible = "intel,ixp4xx-flash", "cfi-flash";
 				bank-width = <2>;
+				/* Enable writes on the expansion bus */
+				intel,ixp4xx-eb-write-enable = <1>;
 				/*
 				 * 8 MB of Flash in 0x20000 byte blocks
 				 * mapped in at CS0.

-- 
2.41.0

