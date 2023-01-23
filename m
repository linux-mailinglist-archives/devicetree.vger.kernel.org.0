Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C147677F6C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:18:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232369AbjAWPSF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:18:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232613AbjAWPRx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:17:53 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 992CE298C6
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:17:08 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id h16so11110484wrz.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gm+Gp9pR9IMXXhQFxyLYqm/RbZlHJZIdJ3yAH5kvq7Y=;
        b=TX4Y/4P8Xhe1h9XM0PVorL+OzHG/rDPGMpkSrrgxxUPGlKc+czJQoRpd6sdv0KFnjL
         bxOtBmmFlq2jUmz+XsEUREyIt4JY2zPK8G9aJk438fXVqSzQpdGKPt6a++Zwj+p385AX
         ZGV8C7BQJVQ7iuS1U17IXue8Iqa/vwy0/dlmC00RjpGuhBw3gR++RIlqnHRACBz3poQO
         Ukw8pywqsSGNEscgAsFUUmVewPEfDCTB3ww4eIvU1Bv+djDTWoo0QdQO2knscugsL/rt
         NF0YgtrGPFEKEI9DZvLqVCxaDZO6VIfW4TwFVBn9/z9klLUZakG8OSqF7Xl2ooU1KVe/
         Ap/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gm+Gp9pR9IMXXhQFxyLYqm/RbZlHJZIdJ3yAH5kvq7Y=;
        b=WAyfqFV0NwJcY/q+MckBvrBdMGxD0pK+ta8l4mvwiUhkcFNRH4E5PK+Xj9a0IkfYAi
         UN2MuZpAnFLchb5loS+D2Swz48/UfxUMrp0bk+VRNAniziXvjsY+GZaveIa8ir+1O9/L
         XG+Uva2OSq1nZqIsjLxq0QkyL/eULrRvO2maB4wqNnctFYgBFrUs1jQDC1NsTsZcb5FC
         4K4DYCIM+TxUmhnKFFVaCPgCO8hStNc2kn8Rj9V/G16UMbnXuxmnzgwdD8DfFsNbkCQm
         h6IgQNQ0HfguplIMu+CEEP38QwrfhtGomdCTU4aF031gIJFsllLbzsjLv3XunsapCDV3
         wPYg==
X-Gm-Message-State: AFqh2krjznok5M2evqTsKMO4RHoNhLIOfdId6bNQIFa2Cj26FIcNsIm1
        VRPSx7gmStST39MV+lmQoGZIOw==
X-Google-Smtp-Source: AMrXdXsOrds413JqL7J/87edldEW0DET/5EYJMlOr3g1/6+tV4yilZkdowNpQSk3rGo59FDk1iRRRA==
X-Received: by 2002:a5d:6084:0:b0:242:733b:af28 with SMTP id w4-20020a5d6084000000b00242733baf28mr21564299wrt.5.1674486999487;
        Mon, 23 Jan 2023 07:16:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d6e83000000b00289bdda07b7sm4529287wrz.92.2023.01.23.07.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:16:39 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8183: drop double interrupts
Date:   Mon, 23 Jan 2023 16:16:34 +0100
Message-Id: <20230123151634.370011-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151634.370011-1-krzysztof.kozlowski@linaro.org>
References: <20230123151634.370011-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTSI comes with interrupts property, so it must be removed if
interrupts-extended are used:

  mt8183-kukui-jacuzzi-cozmo.dtb: serial@11003000: More than one condition true in oneOf schema:

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 821a51e458c5..fbe14b13051a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -963,6 +963,7 @@ &uart1 {
 	pinctrl-0 = <&uart1_pins_default>;
 	pinctrl-1 = <&uart1_pins_sleep>;
 	status = "okay";
+	/delete-property/ interrupts;
 	interrupts-extended = <&sysirq GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>,
 			      <&pio 121 IRQ_TYPE_EDGE_FALLING>;
 
-- 
2.34.1

