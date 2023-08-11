Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17D35779B9E
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 01:48:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237304AbjHKXrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 19:47:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237285AbjHKXrq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 19:47:46 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 009BB1718
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 16:47:45 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fe426b8583so23871945e9.2
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 16:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691797664; x=1692402464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OvdIfz5zUOd71DmktwXF8XCtGN303BHSgHFEyeqUTG8=;
        b=pHllTPeYcqkqT3mxYtyqZzXRMvNCn77gEn0lSUfMTjxHRN+wzWg0Y+Q8mKfx0ywRSy
         he+Ph58EzWjhHDJTc5Vr6RGRRC742Hx3SzHIBde3HnWr7PscvbicVgtqgjjZGJtHfe4s
         +O5e+kNRzQlDCXXX0J5FCl3Jr/hrUo/0QKj8HzolPUCfjEplrucOFTcCILyGHgTxvDMj
         OSDfELh+QRZ/SaXb7KxenenNr/g2ww4wyaeRLYdtvedZIFuihxcd8nmIXvlaalsTCANx
         mgXwCzCniYxUps6GD9l3lHe7eC776vY/Olm8baXQEzUyf1YftC3w7BOxpWbWIWXtUL1x
         qI3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691797664; x=1692402464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OvdIfz5zUOd71DmktwXF8XCtGN303BHSgHFEyeqUTG8=;
        b=JrPUJVAUmGCFO8a6RBK473yAcur/xt53SyBuRNEpnRRIoEF/ZOWTUEXm2r2aCwsdkI
         fA+BublCv9YXHpajTjNWZrvq7Kx6PWcnyv5d66fRzf+l3uxPt8ORukKSX8SAanWMxj8f
         sMLQD2IqV0rwTTrTClOk+ZPqWiFSkt60AyvnARpqLQM77yGNlgHYQntlppcV6v+72ujG
         DTavV3SlwE25o5FXAnXgaB+ZOtraflABk8lIouUsBqWxa+bgz4l8TrgkeoKIKohZITYH
         snKvIlz+L5YkrRKGmKKGO0dJoHBUlVyjvEqHKQE6QrrKyOb6t7Zznp8mqqm33GwvKVSG
         /d8A==
X-Gm-Message-State: AOJu0YzhzNLcMEikGPO8RYiAVQSR6+vZgbY2F7JoUdK2FGgmblgS0I46
        5InBYCrhx2uBOBCx4hQwysT00A==
X-Google-Smtp-Source: AGHT+IFvieQ11KvEBFS2fPlThzOhRAimEDTWxlxg9HmA/9TJr+MANKmVUsQDF/iLWsmPuCzxRing6Q==
X-Received: by 2002:a7b:c40d:0:b0:3fb:415a:d07 with SMTP id k13-20020a7bc40d000000b003fb415a0d07mr2633477wmi.36.1691797664589;
        Fri, 11 Aug 2023 16:47:44 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 20-20020a05600c025400b003fa98908014sm9599051wmj.8.2023.08.11.16.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 16:47:44 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v3 3/7] arm64: dts: qcom: apq8016-sbc: Fix ov5640 data-lanes declaration
Date:   Sat, 12 Aug 2023 00:47:34 +0100
Message-ID: <20230811234738.2859417-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230811234738.2859417-1-bryan.odonoghue@linaro.org>
References: <20230811234738.2859417-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The yaml constraint for data-lanes is [1, 2] not [0, 2]. The driver itself
doesn't do anything with the data-lanes declaration save count the number
of specified data-lanes and calculate the link rate so, this change doesn't
have any functional side-effects.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index 75b4e5ff7c95c..0481a4a82090a 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -291,7 +291,7 @@ camera_rear@3b {
 
 		port {
 			ov5640_ep: endpoint {
-				data-lanes = <0 2>;
+				data-lanes = <1 2>;
 				remote-endpoint = <&csiphy0_ep>;
 			};
 		};
-- 
2.41.0

