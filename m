Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BCAA5354E8
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:45:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347712AbiEZUoZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:44:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240101AbiEZUnz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:43:55 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3E7D6250
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:43:44 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id v15so730577edl.9
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kszyFo4EB09RE8Bso76US2qsMXSYLT6NOSolpKWxpEc=;
        b=nG3cA1barxnVxFUhlt87IM3G+wHT6ZfcrTyFAZsJU8xsoZylJP1A0gltk1XDGO5u4B
         7OUZojhtmRRwlBjEls1VpYg29PlEiZmteApR+Lxz62sU1Niw7Q8rcaIYh47jt/dcK/zL
         hzvmDfdLu8sjNs6txDEugyHI0edyFwZb7lBYJdbYHccVACvqiPIk0OB0eRmiW0UcpqCL
         IIQ2XXrPDqPCbDq74RnV5Z174QSfjMHJUgQ/s9F9hZoxp8Y7Jd4LsGLxla40pfEBvaaJ
         e2/Pgp3KWO2lv1q2y6NLn5yuf2n6G8GkTBEna551xIfsyX3vK2AlURwsEl5rj2jSYc6p
         XWkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kszyFo4EB09RE8Bso76US2qsMXSYLT6NOSolpKWxpEc=;
        b=2f8E08MgbD6KYAE48AtBlSmIvvqRO7ls+/IwQohOORqOtPVgYKaND/7Xi2lYqWjBaq
         B37mxWRPcMFJ5RTs1pk5A/0eKnS8uB8RwAoo5rG9XKVxxvDcYpMHHiQ8zsrZrAOln+uV
         MNBhbF9PblEay31qDuJMQ8KrRnRDanMYzYZQR7MW07rJq9DpvESOFv+e3bj/0hPt0JZQ
         0dbbQ/MJMpgl5sK3mO7CcO7nBcFFtvVjzT583gGA34a4I8A8oZW0JF28SwxV5SPnnJcd
         wqzdBLzqkKZzG122E+flbizcV/Ev6V7/U4Qy1HwcGO3Xltqex9pmzBXcTBDXUmIOfalH
         pYbw==
X-Gm-Message-State: AOAM532ZQ93KelshZvLTegfoBaK+5qsu7o37ZgSA+LrtyfL+eAXVaxBs
        kPo2S2Zxf+Hr/wtWF30gSt945w==
X-Google-Smtp-Source: ABdhPJw5GC65gWJ6TIdXxmfyuCi/FcX5QMBEBpnmEzWM9qJmahZ3QmBLR/RJVUw9kLFMFBIH9bU0Bg==
X-Received: by 2002:a05:6402:370c:b0:42a:adfa:9150 with SMTP id ek12-20020a056402370c00b0042aadfa9150mr41749552edb.57.1653597823124;
        Thu, 26 May 2022 13:43:43 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id qw39-20020a1709066a2700b006f3ef214e59sm788041ejc.191.2022.05.26.13.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:43:42 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: broadcom: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:43:38 +0200
Message-Id: <20220526204339.832296-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
index 09d4aa8ae1d6..8f8c25e51194 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi
@@ -567,7 +567,7 @@ enet: ethernet@340000{
 			reg-names = "amac_base";
 			dma-coherent;
 			interrupts = <GIC_SPI 213 IRQ_TYPE_LEVEL_HIGH>;
-			status= "disabled";
+			status = "disabled";
 		};
 
 		nand: nand@360000 {
-- 
2.34.1

