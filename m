Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F13926C86C4
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 21:23:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231924AbjCXUW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 16:22:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231810AbjCXUW6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 16:22:58 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB0C8198
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 13:22:55 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id b20so12505598edd.1
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 13:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679689374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=es+HvkHe0F3GCsxEWp3ux6VZSAP82WMs4eTXPrG/qLs=;
        b=w3edZX2pdX8rRHpqalOELCRLN8gKCBYtNb8YNtJRMrGm0cgp17tl2c6c36k3LrmWMN
         sZxYkPvuGXF+b0jVGPrRHD5+RGo8XI0IuL14G0G2GJPHMVv2RB7KcohHfF2uLLiTGcBJ
         EUCqQ0Xbp+0zIap9KibqvUjqoeMSujbt9jEEdbXU7IwPsxvX7rPpkYSWNwlXhSZKEgdv
         ym2cQdH0hcYbVVGAqDTtlaeBrnrghuD8JAXkUwAs/90kX8AdN6GZjzKdxmROe9UqzIqr
         Tkye1KcG2KRTME+AIs++gHRg+Yv3TCHuiStl9BKusyb94+YK3slXNvsaLZIgwulty51w
         fChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679689374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=es+HvkHe0F3GCsxEWp3ux6VZSAP82WMs4eTXPrG/qLs=;
        b=lCRGhs85FIIZUZTp/Qv6+W9JJRIKort2FtOUyWjfeKm622qJytI2mmulXMSNqfEHg8
         DNUI8B1O1bZwS9yTcy1jtsvD4iHm95pHuZ5xPL6H8oJkveK+gdRvi6YgG9Ccb+3Kf2xa
         K/6/gu4phT0rjbS1AF7Hlxw0HxqY++D9St9R+PPTlMdzXQ79GXyRYZQgmPoO5eKTAleL
         xnwjdj2aII8rvO3waH8KML0vPfGJJoVhBPnMSbRgzD3mMmAO1obr2Y4PP89K1Kz6B0vK
         AxGfVHWxBzJccuIm/rb/VWYbmFXHLRvT0vuhOU0g4izikclMYVLJ+otxxuwuw+BFn4XG
         IMmA==
X-Gm-Message-State: AAQBX9dIgYug+OI45W7XIQzXTFusz5kI+j1DFrryRhRqsayu13/8+j6/
        3ck8wVPbG77HKPGHuCnUag9DtQ==
X-Google-Smtp-Source: AKy350ZqG9qUaOyLxyUcK4EVRu670bb4FV3YOfRgoKPvP4ChaTR+jipizk6p70bxtJaezkVI1TiYpg==
X-Received: by 2002:a17:906:5785:b0:93d:1c2b:bd23 with SMTP id k5-20020a170906578500b0093d1c2bbd23mr4926818ejq.39.1679689374260;
        Fri, 24 Mar 2023 13:22:54 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:3027:fb0b:ae08:588])
        by smtp.gmail.com with ESMTPSA id rh26-20020a17090720fa00b00930ba362216sm10900041ejb.176.2023.03.24.13.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 13:22:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/5] arm64: dts: qcom: apq8096-db820c: drop simple-bus from clocks
Date:   Fri, 24 Mar 2023 21:22:41 +0100
Message-Id: <20230324202244.744271-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230324202244.744271-1-krzysztof.kozlowski@linaro.org>
References: <20230324202244.744271-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'clocks' node is not a bus, but just a placeholder for clocks:

  apq8096-db820c.dtb: clocks: $nodename:0: 'clocks' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
    From schema: dtschema/schemas/simple-bus.yaml
  apq8096-db820c.dtb: clocks: xo-board: {'compatible': ['fixed-clock'], '#clock-cells': [[0]],  ...
    From schema: dtschema/schemas/simple-bus.yaml

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
index 4476e2e22816..b599909c4463 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
@@ -63,7 +63,6 @@ chosen {
 	};
 
 	clocks {
-		compatible = "simple-bus";
 		divclk4: divclk4 {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-- 
2.34.1

