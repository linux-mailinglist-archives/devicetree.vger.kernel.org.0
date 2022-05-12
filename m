Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3ED1524D71
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:50:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239028AbiELMtk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:49:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353961AbiELMta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:49:30 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3F4E24DC44
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:18 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id dk23so10006793ejb.8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rh7zG3O+Dy4PqpKCp7MegLaCEpXOxU3Krg/xiQKb72c=;
        b=r+DS6sKX5HAqZmV2selor34+IOqYe0myTj0nLrZ5V6YqEijDh+r08IS1BDkswrrbRz
         fM42y4ByztlvUjO/8OBqSNYpu85/ygRNyatg1jxer8j8DucvBauUxYV1h2HqAxRrOxjD
         MfhR8yylFTTgOgSskUwJB0LQmrhW0FQxUXaJZwxh26TUNbvJrQ3KkiYkfEv7oK4lc7xe
         kdRpF+Dc4KGbS4YRp+2DQzXgkah1+mDn/sk/RztinC4JrD0ISegcrPzIg9ImUVMyFMMa
         hg2OfZq1qroArEnAfyH0aZMfkG3ibCIFXYlYtTVo7LaJH2+TvjjbEONDiM9aOjEdKswI
         qMoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rh7zG3O+Dy4PqpKCp7MegLaCEpXOxU3Krg/xiQKb72c=;
        b=jw4dIRDHZk7BXfEWcFULuiyXqHBgzZsL9jOFJ1MdY9cAacxxPF+vDeoWz7ZKxGkSt4
         nQUIX9sKOf+G/b04WwUgwSAkYdexJeMPbiwxQK2eGzjTY/kjw9Ig/0k6KcVywtsPJRmT
         L27/z2C9liA9+MSvzUoUdpu7seww+SUNOy27kI5YEV6HVBRn6Om2eR+J/VlnQoM6bhAn
         tMqvIOhVDWL+ouiVbdwl+ahQt6gNVRfDYf4Br6AsXRO8LGE7yePQjt7AekExuxpMjD2W
         tHXroj15dxquRRhnvhPYJIArvEchFIPDQT79vD3tE3TBUKI2XCqrBbWIzJnF2ce8nFue
         4f5Q==
X-Gm-Message-State: AOAM532EBU6w3sHn+6Ik3Om0fgL/M4I3viASXBV0LuuUgpy/aS4JsFHw
        97mEqPrSeLZOF1PYmUNw2mwas5Zaq7yoT8LM
X-Google-Smtp-Source: ABdhPJyuF6dsj4A8DgYUGo30eOD83AsFn63R3J+AqUhaE60WcOueq5ZJa9RDtqikRvTZMmqjwPd4EA==
X-Received: by 2002:a17:906:6a0b:b0:6f4:d4d7:7c83 with SMTP id qw11-20020a1709066a0b00b006f4d4d77c83mr28910466ejc.667.1652359758508;
        Thu, 12 May 2022 05:49:18 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-58.xnet.hr. [88.207.98.58])
        by smtp.googlemail.com with ESMTPSA id h3-20020a170906828300b006f3ef214dc2sm2109475ejx.40.2022.05.12.05.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:49:18 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 05/11] arm64: dts: marvell: uDPU: align SPI-NOR node with bindings
Date:   Thu, 12 May 2022 14:48:59 +0200
Message-Id: <20220512124905.49979-5-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220512124905.49979-1-robert.marko@sartura.hr>
References: <20220512124905.49979-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SPI-NOR node should be "flash@0" according to the bindings, so fix it.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index 62fce6f2a3a7..4ae1688e6627 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -99,7 +99,7 @@ &spi0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&spi_quad_pins>;
 
-	spi-flash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <54000000>;
-- 
2.36.1

