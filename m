Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E7CB704F16
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232874AbjEPNTR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:19:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233240AbjEPNTP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:19:15 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18D1B5FEB
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:18:57 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6a603577a89so2193064a34.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684243137; x=1686835137;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zWCoYyc6KMpf4b+p57bQAtgyaIy8WwxCdNoHBbj8E+o=;
        b=BgcC5KEFGseKN9ErbNho3kDUNDrqVvHQjIVOcNYZ7DIlez4dDqyMcyEAOa5GWevhfx
         pjHZy7+sz4GEmVt0OmepYuAVX4N4pUbw22hni1/mGD+darfCGQM79gMUDX8A3AzCUsFw
         H3PWr3AvKvHdJVccPC+x5+VecKyC0BLVlabDapPxpeNSlFY5CGiyFF+Tv/gjW8amNKbf
         7JcuqdjyW4LrR4TqNqJQ0XKndQZOcU54B+3ysefycjVAA6UVZQ13MtwNpg0FwTr7iNMl
         FsvLS9PhbxxM3LQ6LoA3YdPKzY7BGqvpLaqU++NA/daTWEV/Y4k0dc5xoI3jXk4cB8z4
         BIDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684243137; x=1686835137;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zWCoYyc6KMpf4b+p57bQAtgyaIy8WwxCdNoHBbj8E+o=;
        b=KO0ycUzNmxloUu9J0S8/EnIZy5woGLZ9oz6cqWPL92tLkIVEclaMeUoOPAryZeZA9/
         tjeScbNxVBc85bpBjukzCjXKGrWckw8Hcvz7SFRmWlC4x1IEUMNUYbMxNHi2yqbjTBGC
         9TVqY9MdWFUc0/eg1HHCu7pF18nIvH4fm7H6dtZIb3504QXGQlrY6CEiF/Celx01HcJa
         hlxmQ8ZO9tvRB36EUl6y/bvwnBhpWrijYE7gMiengcP0JA4/M7N1j5vYif5kGukPre0x
         RM+Hp6tgE3DdqV2oL3JL1DceKVNafmPsUHKLdqfvpIAqJp204d9JkQxY3EB3GrK2cJij
         4H9g==
X-Gm-Message-State: AC+VfDyJC+Yj/ApNReqGCkUerFi4+jRdOYTCRTij/XsB0+WxAKUHzwW9
        kFe96uz2ieMnI9dNIGi1mK8=
X-Google-Smtp-Source: ACHHUZ70p+9YkT0P1vLXAGzIwlJGPyi3xnAAAPhAzJcOtEgDWWKrADjv9tb/LwlXHWuQa+XVPcEx3w==
X-Received: by 2002:a05:6830:459b:b0:6aa:f618:8103 with SMTP id az27-20020a056830459b00b006aaf6188103mr1009385otb.3.1684243137230;
        Tue, 16 May 2023 06:18:57 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:12fe:baa9:ec21:f64b])
        by smtp.gmail.com with ESMTPSA id l12-20020a056830154c00b006ab15b6f50esm7763917otp.59.2023.05.16.06.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 06:18:56 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     f.fainelli@gmail.com
Cc:     hauke@hauke-m.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: bcm947189acdbmr: Replace deprecated spi-gpio properties
Date:   Tue, 16 May 2023 10:18:48 -0300
Message-Id: <20230516131848.580507-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-miso', 'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'miso-gpios', 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/bcm947189acdbmr.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm947189acdbmr.dts b/arch/arm/boot/dts/bcm947189acdbmr.dts
index 3709baa2376f..0b8727ae6f16 100644
--- a/arch/arm/boot/dts/bcm947189acdbmr.dts
+++ b/arch/arm/boot/dts/bcm947189acdbmr.dts
@@ -60,9 +60,9 @@ button-wps {
 	spi {
 		compatible = "spi-gpio";
 		num-chipselects = <1>;
-		gpio-sck = <&chipcommon 21 0>;
-		gpio-miso = <&chipcommon 22 0>;
-		gpio-mosi = <&chipcommon 23 0>;
+		sck-gpios = <&chipcommon 21 0>;
+		miso-gpios = <&chipcommon 22 0>;
+		mosi-gpios = <&chipcommon 23 0>;
 		cs-gpios = <&chipcommon 24 0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.34.1

