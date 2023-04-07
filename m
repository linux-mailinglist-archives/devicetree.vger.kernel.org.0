Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 971EF6DB064
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbjDGQPX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:15:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbjDGQPX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:15:23 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E711BDDA
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:14:59 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-5418e05b413so188725eaf.1
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884098; x=1683476098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X9u3Na+mM0b9HmZKdk7yeyeJXyzonlbIZEmzzgfAusg=;
        b=PK38/+T8k0gYGRWafdNx28SjtbUrBafkOhxPncoDMyfbEJm0BhyxEntR5/JJdjAWkh
         4oFuT3SznJUbHGVnLH6HCgsjkXPsMeTXqslqcVa9QmHAj+W5mNZmEk/7AokKrPpW3mZu
         mo9hcPx4D8DfNh/tjarlztJd/I7T5zRH3yUItRGfWJ3I+6cK5Vz/GMZ24n2q9KYwgoB7
         777NvIx94C9I9fnDtvcsS/uczMYZDZPuG/rWnWrjoht6Uot+KJPn9ggnG47FlnwGV+TF
         S2V69emOQnoa4nmWe8eQlC7gqk/hjA8TgsW2PP6RVxDUu2ToSTvNCZj7gqQ3EjIPHOVI
         Om7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884098; x=1683476098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X9u3Na+mM0b9HmZKdk7yeyeJXyzonlbIZEmzzgfAusg=;
        b=Xa1g4RI6tL4ZzFN46UCgXVqZDcQ09nHLriXg+M8YpZGSukt/IaNVWobHhKIgIrU+sI
         y0FKVaK0PZIAYi3zdY8OW7rUQtYVc1p2Gu/nRJPBYJXfBW/FgD0uCTWN5f9vi1uPIk8O
         /gLKBPSGF7PDwSphPEArEKLVk6J2VmyV7UWab9aZ960Cl+ZpvpxfTCei7QBu4/W9SIEY
         MzKTdUAp983RgzlgBKgpavI6hVosdcc7zM6HEyO0/4oZwLofFFII8NILMzhZPJBqnDo0
         nwk+nQB7gELCXFubkg0o+Hk3YrAStC4aRJiMkGOfIJc3ZUeEOvpPD8GuxVQ/nkGELHIO
         kJBg==
X-Gm-Message-State: AAQBX9eULUFb3p2lzzZIRKXYGtZejecAE+mMd+Zmr/rCflWETx4vSkvB
        K0fz/d8ccKfFRvdhO0qbQPKswepewHs=
X-Google-Smtp-Source: AKy350Z3h8Q0uh/4rLmFGcACj644P0LsmupjmAa7MnrsdtoOPFupsPTI7J2mbKpKmrhZXsb+HzODJA==
X-Received: by 2002:a9d:2a6:0:b0:6a1:23db:b139 with SMTP id 35-20020a9d02a6000000b006a123dbb139mr1364082otl.0.1680884098630;
        Fri, 07 Apr 2023 09:14:58 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id q25-20020a9d7c99000000b00690e21a46e1sm1801910otn.56.2023.04.07.09.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:14:57 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/7] ARM: dts: imx6ul-14x14-evk: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:14:39 -0300
Message-Id: <20230407161444.1682038-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230407161444.1682038-1-festevam@gmail.com>
References: <20230407161444.1682038-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index 7275a1366413..155515fe13fa 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -89,8 +89,8 @@ spi-4 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_spi4>;
 		status = "okay";
-		gpio-sck = <&gpio5 11 0>;
-		gpio-mosi = <&gpio5 10 0>;
+		sck-gpios = <&gpio5 11 0>;
+		mosi-gpios = <&gpio5 10 0>;
 		cs-gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 		#address-cells = <1>;
-- 
2.34.1

