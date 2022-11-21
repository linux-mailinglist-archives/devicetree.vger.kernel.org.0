Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99CB1632DDB
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 21:23:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbiKUUXQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 15:23:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbiKUUXP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 15:23:15 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B194324091
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 12:23:14 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-13bd19c3b68so14963875fac.7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 12:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AvFKY+qeegA0AzjrUslbxk1aSbkJWG1wob7fWH2hjwg=;
        b=WxLARatvoYs1pMipxzmBwg7Yfuaz8EnX0G3HGDsgKde4Smfy6F3ILFuhn8woz9Ouy5
         jRZncOPjqia8g48ecG+icXUgnS7Ha8z7S2n0nnaOPwL9vX6JlgsuMP5Stw3Jx5vk4tEZ
         KvTOhN/9Jj8DXYD9f7W5D1D3flaEi1k8AY1pzFGhMCTiLLjtl7VpXYcT3wFBEQFYQABH
         HHo41uENYiv0jOYpGt4yJxT4dRKPJsvJoSR8VfoHQhW5NiUiBTXDYE+/2y1v0ohydWNm
         ZKZMQk+D18E3BZovgX/GTyL3FI1q0etYiZmYrlXR0EISet5bBZ3OCuqeZeYwgqde02So
         8BNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AvFKY+qeegA0AzjrUslbxk1aSbkJWG1wob7fWH2hjwg=;
        b=HOkym8HLG9gsFn835RJPjI8HZGZENaludbiw6Nqmm6WMDIQ05K68dGwdlpbF5jvzQo
         ucIBvzzSUujOpbIbS5m7TE10r918nIB0oywNWMWY7evihgBgPKlK3FLmkI4pbYbWlefd
         nCdlnOFzHamNa1KxYqsiJzJQBPdNclZ+JFDNSv6EiRLCuWEDTJB7g7x5zc7/wIuUDBeh
         F7Kfj9jDCxKanh5LC1OiQQu4+pXQstW9Jn7cK2fL1QcEPN9CkS60IelwFEaOgIHnQjeM
         HwUgosokxrzOUSGDAJbiYqiNlJPgb0JW5dKKfcymPrPT1xcEGrKSSARvjiIVXP0BwDzI
         qp3g==
X-Gm-Message-State: ANoB5pkDOc/lcLE0dKWSyxt+c/J3Ol5Q13Ft8BuXYBsCfQnW2jmjPW6e
        EewiwNdvZT4Kc7DqW0nbdrZyV4wdO1I=
X-Google-Smtp-Source: AA0mqf6YI3AZMRJ2QZZ7Tohm1M8meF2S+VZxFMNA6jct3oo/EuKhiyObtV64BzqgfT1dOC9kDaRM6w==
X-Received: by 2002:a05:6870:9a18:b0:142:efc1:1394 with SMTP id fo24-20020a0568709a1800b00142efc11394mr1383023oab.11.1669062193912;
        Mon, 21 Nov 2022 12:23:13 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id u39-20020a4a8c2a000000b0049f44db7b41sm4516980ooj.5.2022.11.21.12.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 12:23:13 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, tharvey@gateworks.com,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6qdl-gw560x: Remove incorrect 'uart-has-rtscts'
Date:   Mon, 21 Nov 2022 17:22:59 -0300
Message-Id: <20221121202259.2415821-1-festevam@gmail.com>
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

The following build warning is seen when running:

make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml

arch/arm/boot/dts/imx6dl-gw560x.dtb: serial@2020000: rts-gpios: False schema does not allow [[20, 1, 0]]
	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml

The imx6qdl-gw560x board does not expose the UART RTS and CTS
as native UART pins, so 'uart-has-rtscts' should not be used.

Using 'uart-has-rtscts' with 'rts-gpios' is an invalid combination
detected by serial.yaml.

Fix the problem by removing the incorrect 'uart-has-rtscts' property.

Fixes: b8a559feffb2 ("ARM: dts: imx: add Gateworks Ventana GW5600 support")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
index 4bc4371e6bae..4b81a975c979 100644
--- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
@@ -632,7 +632,6 @@ &ssi1 {
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
-	uart-has-rtscts;
 	rts-gpios = <&gpio7 1 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
-- 
2.25.1

