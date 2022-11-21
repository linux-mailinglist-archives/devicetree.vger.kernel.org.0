Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C26E632951
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:22:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbiKUQWd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:22:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229936AbiKUQWc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:22:32 -0500
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7DD2190
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:22:29 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id cn2-20020a056830658200b0066c74617e3dso7632198otb.2
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S+nfDr+dyGsfAPvm0J/EwZGvNH288poL7KdHYBLmF6c=;
        b=bzQy0qUOJjvEIgTSCWCQhsEypflEt8Dq3JTaWYbjoxvlMKp7yldaKxBNQC/qFYSVBj
         uV+1hwSZLkZBMXNggi9LcRqqsARa5qLilciCqMl3tyWzYpOjZEqsX2itJtJH2G78GNks
         rN66CinMnLeYNrJQOwmzO8N4uVyJFKUlsH+bJScem3dAoEWtTQoMrDx4zZrxkrFZA5Hj
         GCEcfB1w2mNyAAdJi3N1nO4AJNKxQYR8/0O3SGEUy8yIAojqvg3PbMr02Pp3RtG+gyTh
         fK9T1LKig0oF/njWRib+istwVlGkeGGFI9arrz+2YOex1f9rkJqQG9IslKNlXv1no2pS
         Gs4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+nfDr+dyGsfAPvm0J/EwZGvNH288poL7KdHYBLmF6c=;
        b=kRDLafqR3a67MjqWL+LqF1biqwZMBrtx67wZeqQR0Sm/ovhNvBjcvgZpk8Pe48u/OG
         CEZAQqUXMJBYGZaJ85sqkKC3P8vjJAeO9mnSa3ycpt6TPIduI0IJ5iM8Y4aM0UWTWkfK
         I83eqmOTWb5Sk4bdQuVJMttTCglRKbyCKfCotjW6fMCZ9jLSe544XrWWyaQSOIBm9DJn
         9iFwPFyGQeWiVGRurESg7RfGotgC+P3iJ3gYnlwGwA+5Cy6pY7AKG1tI+iKYTf5W5U/6
         Co9XGi9k7RTIn4lKkxEG/PUUeqNpE8Wm0LzbJLaRrfoUW3le8O3wSc6pw+OXblfgQ8t6
         uneA==
X-Gm-Message-State: ANoB5pml5EAiXF+ZiQSr3Q253F9dB3pZ8ddSDePPZ7ZhmVBcqWvbjmza
        G38RGsigcu4dP8CHX2QY9Uc=
X-Google-Smtp-Source: AA0mqf4g6YQ1AzYPSkvCgTCbdv6Q6wSgS8c7KRUh91odSnBuqa/f6WCXOYNuXdNv4LOiJjHTLjXXgw==
X-Received: by 2002:a05:6830:d8c:b0:66c:5a5a:3eb0 with SMTP id bv12-20020a0568300d8c00b0066c5a5a3eb0mr979029otb.286.1669047748862;
        Mon, 21 Nov 2022 08:22:28 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id h22-20020a9d61d6000000b006619295af60sm4935222otk.70.2022.11.21.08.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 08:22:28 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx6ul-pico-dwarf: Use 'clock-frequency'
Date:   Mon, 21 Nov 2022 13:22:15 -0300
Message-Id: <20221121162216.2375833-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

'clock_frequency' is not a valid property.

Use the co47246fafef84e175bff2ff1f3c56669e03a89ederrect 'clock-frequency' instead.

Fixes: 47246fafef84 ("ARM: dts: imx6ul-pico: Add support for the dwarf baseboard")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6ul-pico-dwarf.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul-pico-dwarf.dts b/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
index 162dc259edc8..5a74c7f68eb6 100644
--- a/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
+++ b/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
@@ -32,7 +32,7 @@ sys_mclk: clock-sys-mclk {
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
-- 
2.25.1

