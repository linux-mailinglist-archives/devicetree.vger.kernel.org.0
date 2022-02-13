Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CE954B3E42
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238715AbiBMW6V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:21 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238708AbiBMW6U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:20 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 822E354BE1
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:14 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id hw13so5427637ejc.9
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ivZTnCer36jidFVyFQSe8jli8F6HVOlgrV0ncoMunP4=;
        b=BXiB0JZopaxdoC1803g5A+DWZq7uajcMVcVYnOWpUaOMo3zm5i8Hyj9hjtpBxzbj8S
         RgdypbHdhIs5j/9qSKoxpaEmFglkt0vkBZgg+YO3FwM2EexqempXPMf2aE5dBfYHMg8o
         2oqau8hyn1LycZuBazvFgFbyrWkjZntCSEQ9Il68joSCy8K3fS81kvIjKxLNI8qR3mji
         fs5xp3SXCN4m/HnTjQymcznUSkNifdlwNRVIGWD9F+NJHM3qQW+moTqiJtmcqWqk8eAg
         d1yCN3V+FGbcdvp21GzndVWmXxcw5vjDhDKBR7I1asevS7oRm3ZwjfB0GcuSQntUV19M
         CmwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ivZTnCer36jidFVyFQSe8jli8F6HVOlgrV0ncoMunP4=;
        b=BddW/mM7xQ2lCy8XgsHOZ8bEBMglOSCKSYiQ8rQjQHPOip38459NOlJF1HS/JBe0f4
         61xnPZy4aFDyhFHyH7Zzfd7hv0z0IjKRCKr/0+XxDU3Ilu/R21/ip+ZLrnU4GGkeZPDH
         qsKzD+kkQitw9T5UMFYMBj724RNVOI3LJVTTu1wX/mrdSZbaKEQ2DuKdia5lmnkNuiFG
         Ds4EOlRnWzVaXXR6iqYBVYsDYaO9/NAqFhINfT7GcMcHFZAkETMVtz8NrDuRw5JrfkyV
         qjhaJYBBLz/oicSMGBjZJify7qQ7f2Hr4vFngjP3RIfrTNQBsjfSqDZ2RaUpNeQ29V8H
         Lckw==
X-Gm-Message-State: AOAM533Z0AKoGatd/lt4fCH4miGkcNXUVHDdmQCu72MHEW6DD/u/g3rd
        MhF1qrO4oO41hfS65kHFWUc=
X-Google-Smtp-Source: ABdhPJy1zgJHXR0xG+NxoKA/QqJCpy7K517B38I8JXVyJ+Vaa6qE0TSCVoiJKHHg4//tdK7D5GOW5g==
X-Received: by 2002:a17:907:6298:: with SMTP id nd24mr9051878ejc.76.1644793093157;
        Sun, 13 Feb 2022 14:58:13 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:12 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 13/15] ARM: dts: bcm2711: Enable V3D
Date:   Sun, 13 Feb 2022 22:56:45 +0000
Message-Id: <20220213225646.67761-14-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
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

This enables V3D for bcm2711 (used in the Raspberry Pi 4).

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v3:
- Minor updates for rebase

Changes since v1:
 - Correct node's name address 

 arch/arm/boot/dts/bcm2711.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 171fc5d2acef..9514c0ba481c 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -551,6 +551,18 @@ genet_mdio: mdio@e14 {
 				#size-cells = <0x0>;
 			};
 		};
+
+		v3d: gpu@7ec00000 {
+			compatible = "brcm,bcm2711-v3d";
+			reg = <0x0 0x7ec00000 0x4000>,
+			      <0x0 0x7ec04000 0x4000>;
+			reg-names = "hub", "core0";
+
+			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
+			resets = <&pm BCM2835_RESET_V3D>;
+			clocks = <&firmware_clocks 5>;
+			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
 
-- 
2.35.1

