Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA206EF2B0
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 12:50:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240573AbjDZKuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 06:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240545AbjDZKtu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 06:49:50 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 231544ECA
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:49:46 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-2efbaad9d76so6285109f8f.0
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 03:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682506184; x=1685098184;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U1+QiNq9msoojnY2Y3bLQkN17Z1RFKin3Ea5QLyYrSE=;
        b=a2TXSe+vmPGJ8+wuRJgPhCxT/a4ko9q+HDrxapAIWIjfj7PiYb/YHfjmCl+ZInDTlt
         OyCj3LjaffNY127zvbnV71pCcAtSba25z4ZYqvL42CDBEzH0TUAxIi99eXVFzU5i4SKO
         ipkg+eqaGuKrQ9F84I3kzulxQtaisOgR5nTSNJkFQK/FG34+AWk9cuTByc2Exj+u2OJt
         27AAphWLIZs8T2NfJzKBvm8Aos9zyKczzOwjrCptxq80yVLAHhde/APzkPXdwhdrmOQZ
         qQax6WGtJ5Gqx/b4rlU8q4Wf8x1iARR9v/V4q8pP0qaxyn3lkdKcqldICCXtF9WKRN1N
         F9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682506184; x=1685098184;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U1+QiNq9msoojnY2Y3bLQkN17Z1RFKin3Ea5QLyYrSE=;
        b=AfGnDpB0ek84igtQruinkhQO47ies95m7xVbYG+WMqDofn4sovEB5xSxJ/oRq214c+
         6TouNKPjVvDjiW9R0KiIFZ+NbTEEOWwxRLWevNz+yZAkyLeQnw1oyFB+zPGIRj9IfVgg
         yYR6nWziT41to7dnIcUqdEyc62H6OecLguS2zIrsafN6EhDJqY2UlHhEipWD4PvjPUAe
         bg1S8dTQOPXNhI7pi7k9wGZhKGoZ/F8DIL02rP7rDIw9lN05/NV8gptK368NaqN/bdWW
         dvY0AdwToTUMRC1OxthZpKydjpEKVYJJ96q7YXOf3LH7A9vYar31Lu0f+bRDT0zbVgbD
         sqgQ==
X-Gm-Message-State: AAQBX9cI1YP73lHEZ0RM5IKJ2gjfGWrINPPgBDxStsZeZdoGZcwfMFKZ
        aFnLm2d7I7lsjzLlYq8KH7b6eg==
X-Google-Smtp-Source: AKy350YO3rCwkHdihHwCXjADB69g4u5IEusvmVJiBFvhLAKl5kiRPj0x7n0fICHOX0aKJWsTRc8LOQ==
X-Received: by 2002:adf:eccb:0:b0:304:6a26:1f6 with SMTP id s11-20020adfeccb000000b003046a2601f6mr8788211wro.59.1682506184497;
        Wed, 26 Apr 2023 03:49:44 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id 25-20020a05600c025900b003ed2c0a0f37sm17601988wmj.35.2023.04.26.03.49.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 03:49:44 -0700 (PDT)
From:   amergnat@baylibre.com
Date:   Wed, 26 Apr 2023 12:49:07 +0200
Subject: [PATCH v6 07/12] arm64: dts: mediatek: set vmc regulator as always
 on
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v6-7-8d6b1cfe7f29@baylibre.com>
References: <20230203-evk-board-support-v6-0-8d6b1cfe7f29@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v6-0-8d6b1cfe7f29@baylibre.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=905; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=jb8Pa30ov2+ZPPhENOaqkgR5C98qawN6Ey/hi9N+dOQ=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkSQG/jd//PO4vFJocP906Qdo6v4ZswQDAyeTdApt/
 R4X1SoGJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZEkBvwAKCRArRkmdfjHURQScEA
 DHYEzk/CAR3pKFVbUQzHScLV61Nj3ShHPazSgecJdtrcft/9wq+g3EHK0cOzlfC7s/wTED1onhKxMc
 T7oIjtnXeXQCKp1/4fFizhdHiVXaO/CYS6CPF0zRPdDUsGuNF08IGNUNV1c770cfdN9X9Vmequuhrn
 +i3FY1G+X3xKv+NViPH3RpoibdSDBOfDVJFKZ7cNUIVgGIQ5QyvRcVPEx148KXW2JoUyrpFk4r4R48
 UyuC+Ngb7VixvD3OvdRCDrAZMApjNMoZiujcjwH9kHRk/qSnBEsY5Z52gKPeRUsip2zSree7+nKpgY
 IcsQ/xFK1Qr9MkFDoeVwPmxCYlSC5w11j/PVBx7OIeAlpqNwQWhaIDoFWzN88rXn1p3M5rxQOKTxO1
 j4KZlyWRhzl4VSMRJH35kgAN9L5R985JO3Jwb8nCcq6ytl/X4c0hbZW0D24ocRvoag1bIeApCxvc5V
 +hAy3pv19vifqhfwSoXISMnw4Hi8f5LEgdzy/0r1QzDmitrNCVjtj3KaC1WQwgdr6vZsiTCVi8uiUZ
 MGfpIfkJiS15y2XDxlkgtPyguf8TPBf02RIztg97V1bUu29JEbWSSNP6GhLH/9Ma7S8mRvUsi7IScZ
 OKP/7tjYjZGCERYILTch31ueYPGhDtSFg0YTCDluwu6Rt3QsqcvO6eiFiddQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

On downstream, we observe that the MSDC IP (used by the emmc, the micro
SD card and the WiFi) isn't working properly if the VMC regulator is
shutdown.

Make sure it is always on.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
index cd920d09c3fe..ceed6cb8152b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8365-evk.dts
@@ -137,6 +137,11 @@ &mt6357_pmic {
 	#interrupt-cells = <2>;
 };
 
+/* Needed by MSDC IP */
+&mt6357_vmc_reg {
+	regulator-always-on;
+};
+
 &pio {
 	gpio_keys: gpio-keys-pins {
 		pins {

-- 
2.25.1

