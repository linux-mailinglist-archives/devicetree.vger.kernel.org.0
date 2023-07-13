Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDBE77526FD
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231909AbjGMP3r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:29:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235060AbjGMP3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:29:37 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 429BD2706
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:29:35 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3143ccb0f75so1063414f8f.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689262173; x=1691854173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kp9sugFtWyIDPD/yBMpvNDc39VCfPRNuz+NnzXC9aRs=;
        b=Y0QPRb+aqDCc0MEbQQU3Fz3C3vXNBtkUEbBek3coBBGcSdoTlekUltAoFRT+ITt+0x
         do4e2hS+IteqmBggHX4YkS9ZfmzRrweLmF1BZqcBpBUAFR4q9SIcbyF1Ju1qk9yR8RvX
         kAzaoDVpXiqde1S0BFAJ0Kt6RX4LR6NiJdMNkg/xDToXdRpsKL8zvFhuquwbfx75hOyV
         i4aKCCmdmXJdwP8NgkAyqbiOr0M1ODoBbjeCsGw/3iHQnVNsdOfmhC5QUZuuU7IZhCiq
         i71QfaeN4EEqgejVDgmRFaP/0/FSV3E9qdLYNEF5sltB6HifTQKNpj7XO4QJmRgRJ4Bh
         vthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689262173; x=1691854173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kp9sugFtWyIDPD/yBMpvNDc39VCfPRNuz+NnzXC9aRs=;
        b=UfmCHgAC8UskLOqkhCSVYAC/X+m1vugf3R8MkFhX6tNSX4+e/8aFGKn+WVOiPgy731
         2BeQ82fGnRE7r8h9LQ5c3THSEtgFzR6Ul9/3tO68pcOB3/KuSBzy/klG8H4pJwVtKmvz
         JCkctSMKpr2rUImEj8+JSZKstroO1yvCOEcUbWEcTVRZgleIZtK68cWIF4dFV4T0zCSw
         W2TLKsNsctHuDEXqRnjEKvh6jXm4p3Zig39notnVGVx21+FnXaZMn/RHiY8zChqQDGKs
         mhvx8D+zyffA8acLc2GMV8nbP9pNPPEPGMFOj50jS21aW6PuOdlJEVGN0DDzgQsEgeMY
         /SSA==
X-Gm-Message-State: ABy/qLafhZk3uRUuZX8Jg2Y42qK2vR1WiwXf1HmaYRUkV/nsH36KxSJ2
        PTwXTU1Zcn2sSa+VKi/6An4JkQ==
X-Google-Smtp-Source: APBJJlHiik/5j2yP4OuALeCGWXMARDs1MSuf4Ur9VLzHl7TniGtKQ+UXrP2BTUCTVPBdzP8GMV6abg==
X-Received: by 2002:a5d:4acc:0:b0:315:99be:6fe4 with SMTP id y12-20020a5d4acc000000b0031599be6fe4mr1975591wrs.69.1689262173689;
        Thu, 13 Jul 2023 08:29:33 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id k2-20020a5d5182000000b003143aa0ca8asm8285924wrv.13.2023.07.13.08.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 08:29:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: samsung: s5pv210-smdkv210: correct ethernet reg addresses (split)
Date:   Thu, 13 Jul 2023 17:29:26 +0200
Message-Id: <20230713152926.82884-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230713152926.82884-1-krzysztof.kozlowski@linaro.org>
References: <20230713152926.82884-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The davicom,dm9000 Ethernet Controller accepts two reg addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/s5pv210-smdkv210.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/s5pv210-smdkv210.dts b/arch/arm/boot/dts/samsung/s5pv210-smdkv210.dts
index 6e26c67e0a26..901e7197b136 100644
--- a/arch/arm/boot/dts/samsung/s5pv210-smdkv210.dts
+++ b/arch/arm/boot/dts/samsung/s5pv210-smdkv210.dts
@@ -41,7 +41,7 @@ pmic_ap_clk: clock-0 {
 
 	ethernet@a8000000 {
 		compatible = "davicom,dm9000";
-		reg = <0xA8000000 0x2 0xA8000002 0x2>;
+		reg = <0xa8000000 0x2>, <0xa8000002 0x2>;
 		interrupt-parent = <&gph1>;
 		interrupts = <1 IRQ_TYPE_LEVEL_HIGH>;
 		local-mac-address = [00 00 de ad be ef];
-- 
2.34.1

