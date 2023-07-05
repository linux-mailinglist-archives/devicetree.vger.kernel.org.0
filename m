Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCE3C748717
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 16:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232866AbjGEO7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 10:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232869AbjGEO72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 10:59:28 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C47A199D
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 07:59:20 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99384a80af7so249648366b.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 07:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688569158; x=1691161158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+KmKoQmxevAlDr8GWoC0x/IRg+Abm5jjahWJpZI9534=;
        b=CahXrZzX5G78sto6/yKaMIx/9seqEqvUG+kVsIwdTjj/VTJKB2eWt1osnlwaDCJXOJ
         UCRprFp1YLaTIQ9teLiw8qs0UYfdigWrFmTiH2TLkHh+vUaH+wDA9efiHX6RkxF/hnME
         PheFt8VDZz9UgNusVZvQJetOTczGWBfqza1kU+pbrLCWkuJ5ea+atlr3Eg+DBWhX+egS
         Rv2ExdRMpo4T3M/Y9T42pufTs0A8FPVAkr/YtGa4wpH95cyavKuIY+LrWOlN4lWu8j8l
         MsfqIk0MZskP+d9X/VkxuSzyTN9A2q4QhKlj8M/iFw3u6RRe+RW5A3T6C0fYC+lzpuWR
         hq5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688569158; x=1691161158;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+KmKoQmxevAlDr8GWoC0x/IRg+Abm5jjahWJpZI9534=;
        b=k+KlDiOPPiYuksS4aH2mIgqZFvarY59CO0zE01Bh+XEWI0TjzyrqyP0/dkejMagYLf
         cEVBk6TuqaUXhnzSH711z79E9lxXRmoNfE6kozFs0kDI0fjFIVLcfgapqEDf8jIRgzUk
         1wO29jcRhBmsFldNyYSkdy9eG4fxocvfUSOooSqVGMw2uJ8kP9sZ3hjyK2DvVRLDap/o
         XT1NnRtu0W7u2gXElaoHI9Mnn0C0hYSbV70aYmIH55xQDLxSOi+YVw1KFfC8tAotsjBa
         28FmY7SW0r6otqhJUwTWSqcw5UpCuYct42JAcMsy+Cs+jJN2tiY6DDvJu6bix6hidIH+
         pflw==
X-Gm-Message-State: ABy/qLZr8WBgui2ISJbTOD2n7ZyW9UIm6LBrlaMU0bCi7P3I+XPRj3F1
        VEb0w/jyNb3osCocO9dJyEuubxbTyMVYJRMqxGE=
X-Google-Smtp-Source: APBJJlF2nHsUoLIzfCr8pWpO/KLvyvSWrmgJ8X+J5oE20VFYjBfpdT9MSi0qg/SxxlvR+WAtHIRsxw==
X-Received: by 2002:a17:906:fa89:b0:988:7d1:f5a5 with SMTP id lt9-20020a170906fa8900b0098807d1f5a5mr11016880ejb.28.1688569158644;
        Wed, 05 Jul 2023 07:59:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b22-20020a17090636d600b0099293cdbc98sm9419972ejc.145.2023.07.05.07.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 07:59:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: renesas: add missing space before {
Date:   Wed,  5 Jul 2023 16:59:11 +0200
Message-Id: <20230705145912.293315-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
index c18bbd7141c4..31cdca3e623c 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
@@ -67,7 +67,7 @@ &mii_conv5 {
 	status = "okay";
 };
 
-&pinctrl{
+&pinctrl {
 	pins_can0: pins_can0 {
 		pinmux = <RZN1_PINMUX(162, RZN1_FUNC_CAN)>,	/* CAN0_TXD */
 			 <RZN1_PINMUX(163, RZN1_FUNC_CAN)>;	/* CAN0_RXD */
-- 
2.34.1

