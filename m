Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 671CA7100FA
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 00:30:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233996AbjEXWaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 18:30:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238646AbjEXWaF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 18:30:05 -0400
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28E6AE5D
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:29:16 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-5558b72fbf9so194377eaf.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684967187; x=1687559187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bI9HXEZgah/BaWje7f+Ya1E/uZx7wsKYhrzu2aOyLRA=;
        b=BarIrE+pG/kifLjFQyuFcFYMq1TEodrf9D+8dlz5rPi544qkDLbQDl/g/gpaTOzpTW
         lkpEQL2ulajTVKC/trYFSSfjz6gViM0G0pxSpBlqT1rfTGBI2smoINnqIVGI8Z9BjOCh
         ATVfmZIAn7/eJhAkkgImid8G6AQre2Gkmz43OE3jpoezldky6I64BqSZsFUVwQJKPkCs
         JadEfXxrvm0ZuBTSgWGwexPaAMTWn/mS3amhJlhgDSPqeK/AogsxiJpqnEfoB492ANAV
         UQGQetELxhOhrRO8vlcvYUW4x+c2f92ohPTzY/jNWWvUkI/xUHUQbKFH4/XIiHEiYkhk
         AIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684967187; x=1687559187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bI9HXEZgah/BaWje7f+Ya1E/uZx7wsKYhrzu2aOyLRA=;
        b=bgnUZBqfxqMUXwe39jSlhqxGX30DpAomkhSBOQ+O5yjCwhh/NlFCMNng7H+9/pXIcI
         bDJR9YNAMREcxVmptyEfzaOapeGsx3P5GlMkaRoDSjgNRnjPKys0+zMZf7P9QFA9d1TJ
         lyKFZ4UmX5EcJZF3DNgJHUZO1pCy5WUUaOsWFV/HlqlGNbUvJ13GdMS09K+EklUitd0q
         S8SL2JlGrDs/viIcVaFM4pc8BZ/6lxJSNiq1AeZIZwzaXyhdRwqGduaH1pwOVcF/MKru
         4rAPROY6mt8IIPhNpcrtIAtKf/Jst8sFJMPL0plY0sqSwJ+szlAw+Nn6LdWhqTO7aLsO
         z8BQ==
X-Gm-Message-State: AC+VfDylhKooVcnYDSEJnRy7QPqT3vSDCe6MNC5pFR1kYPUx/PNJETdg
        qaB62SdoEbUBteHMpl1XgRFk4HN8ngM=
X-Google-Smtp-Source: ACHHUZ6ymjlDJEOkHWJmHmp0/4QWyJpufHlgmb1yePFXLCTEVeJIUp80WkWKoXO1eBimAXTtVzuYow==
X-Received: by 2002:a05:6870:f5a0:b0:171:a749:bc0c with SMTP id eh32-20020a056870f5a000b00171a749bc0cmr1986046oab.3.1684967187509;
        Wed, 24 May 2023 15:26:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:4331:751b:6032:b5d])
        by smtp.gmail.com with ESMTPSA id x131-20020a4a4189000000b0055210b1a91csm5449968ooa.3.2023.05.24.15.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 15:26:26 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        inux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM dts: imx6ull-phytec-tauri: Remove invalid property
Date:   Wed, 24 May 2023 19:26:11 -0300
Message-Id: <20230524222611.388858-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The 'rs485-rts-active-high' property is not a valid property and is not
documented anywhere.

Remove it to fix the following DT schema warning:

serial@21f0000: Unevaluated properties are not allowed ('rs485-rts-active-high' was unexpected)

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi b/arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi
index 5464a52a1f94..ea627638e40c 100644
--- a/arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi
@@ -260,7 +260,6 @@ &uart4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart4>;
 	rts-gpios = <&gpio3 2 GPIO_ACTIVE_HIGH>;
-	rs485-rts-active-high;
 	linux,rs485-enabled-at-boot-time;
 	status = "okay";
 };
-- 
2.34.1

