Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 731CE65AB02
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 19:47:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjAASrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 13:47:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjAASqz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 13:46:55 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFCBF2199
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 10:46:54 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id bf43so38794508lfb.6
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 10:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WXvfGEHTzXKuks+EcxR/n48YaAfRkRku9Lb7SUrYa5g=;
        b=xBXW6Bgz5HnII7O19jLVbin+o5EhuOhKP7X65FhamnTQTjWcdPlx+OLh/dV9LNve3o
         U+DrYXZCneBSKwgnXArxQFz22UfM4IQ/4ac9zKl43gW8jIbV6vvZqriqZgsDV75unGqj
         3Z5YgrRP7kT1c2q9bKonyrtDlN/Zd6OaDET1E7rcLuDFIDSBK9EOjbsYayl8QvH0/lze
         fakKYXep7PXBL3dugwOtSqZzXoU9+byit4pLL8q34raGklChd28KkMhRVVwN8p25EuaH
         YzdzQmuqA4ZoRdkcPtzUOjDJaehVEE5yco0JdnW1RcBpIDzYUFTMfv/yTOwcMBiWLaO5
         alAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WXvfGEHTzXKuks+EcxR/n48YaAfRkRku9Lb7SUrYa5g=;
        b=lFH4ECqLVxDxeGYcriOjUeFXathzbRA3GQmPCTDELYyYivWrOZHwvS8ZmdqpDlj63h
         odbwcbxei0GgRIardog4TTZwJ3SMsS0n3QF4QMaOAOtgVklZOso7kj+cR9cAyWQGSZdY
         lMP+n4H1zf2woRuFqzzw0xWTkRApRxrnDrs4AmKDyYQQ+RIwmGhGascMRfI8l5I27KEX
         89lGoE3j7Ko8/N71nDPbs/Vp6iFa4ubEogsA5znYxakt4fIvRfYKVhVUiAbc8uAY1RZg
         5JRSElLWm5pzIBhCaS1aCJ7Y/MFwo37rKRzZAx/GsUdDicl5HogmpCD5A0E1Wal1GxlL
         QibQ==
X-Gm-Message-State: AFqh2kpIurlP54+5Bnw8whg3931Q/BGRs50hgbAKL95P4ux8f33Ujotm
        ELxO/S8u1Asiy8XdgWgbFGe+iw==
X-Google-Smtp-Source: AMrXdXscNeOq++ACRzomRbJVxPs+buxzeLnkc1WfW47n6ELJDZJvsBLn3NC64G9fC1g33K9nuEbM2Q==
X-Received: by 2002:a05:6512:b92:b0:4cb:1645:7251 with SMTP id b18-20020a0565120b9200b004cb16457251mr6123873lfv.62.1672598813365;
        Sun, 01 Jan 2023 10:46:53 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id bd9-20020a05651c168900b0027fdb26e4b1sm955760ljb.91.2023.01.01.10.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 10:46:52 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] dt-bindings: arm: fsl: Add the Starterkit SK-iMX53 board
Date:   Sun,  1 Jan 2023 20:46:50 +0200
Message-Id: <20230101184651.807900-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
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

Add an entry for the Starterkit SK-iMX53 development board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 05b5276a0e14..fba7c19d7991 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -173,6 +173,7 @@ properties:
               - kiebackpeter,imx53-ddc        # K+P imx53 DDC
               - kiebackpeter,imx53-hsc        # K+P imx53 HSC
               - menlo,m53menlo                # i.MX53 Menlo board
+              - starterkit,sk-imx53
               - voipac,imx53-dmm-668          # Voipac i.MX53 X53-DMM-668
           - const: fsl,imx53
 
-- 
2.39.0

