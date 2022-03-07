Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B7384D033E
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 16:46:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236321AbiCGPrN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 10:47:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243892AbiCGPrN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 10:47:13 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 635D57EB3A
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 07:46:18 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id m21so15023373edc.0
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 07:46:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=qbuVe6nDY03YrLd6EKAmfjy8Xa7+ttYaCGu9Ft8mXNk=;
        b=Z7nFErSwglbyHm076TpKKK2nIpM57+2I1HSukjcbHGh/+3RomimyAmQGKZaQIPpthE
         M4kR3yREE4Auw0YbeTEwnkgbVJ0ceknXRpL9h11nrwD3G+jK1jkXPytJBQwvz1+Hd3N9
         fHD9mSbB2Nual/+Jpe7jdaprB3qAg74nAvwqBP5i+pwII4D5K7fdK0NnS1dFXIbpJkvf
         wZd90jrlqkuzBfMfdo00cRbMBiQGAZzOlckyYxZJNkUFjPnlXq+d1+F0qoFP8XhWFhEE
         6aYVMrchJv+z+8fK10mCpwdb4Aw2VIkHrlBVgOp9LNFMcSPP9gZB973t9zB8tybpWcQL
         qNyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qbuVe6nDY03YrLd6EKAmfjy8Xa7+ttYaCGu9Ft8mXNk=;
        b=UFjNNon1JnHr2Tfa9uWEH0rBzFu7BSdB2QlbMnvwzq1Iw5wNeEFijws9fT7S1kLcBv
         pv6/M/ZFu7L3H5SFjg2nArO96Ibf9Sr2HuH32l3pWEdIkwrSoUAn+X2P3bNiIvsPtiTO
         U5gLNCorcmEkbl679ETKucjLdY47DiGZnsCRoUJMu5PnzufEDiDEaD+Vb1r30/XXoBRh
         2U96btK2fenfL9M8t2+pAdsfwA0EULjqtWeYILQCEmnTKkzNCeX/uy2yMKr7tIfN46OE
         OSQTOXbZg7n7AYDTPHIpa+P09Z74LEouwQD/L61J/mkYZUSSSTwroPGwAcf03+quyYpU
         Y//w==
X-Gm-Message-State: AOAM530pRt52NBlLgV4ZvJpJSRYo/14NHa8mAu0rL6+maqmZd7efkk7f
        amrkYWYvpjCpiUUycyx3NVRcocIatzdQUg==
X-Google-Smtp-Source: ABdhPJwX8/FBbfGH5wS01NOcZx+cCthRhK0gDbtRwrXcJKhFfUh5mmx/x3w97eCLEhwf40YzairJ2g==
X-Received: by 2002:a05:6402:1386:b0:416:d5:ecf0 with SMTP id b6-20020a056402138600b0041600d5ecf0mr11510281edv.212.1646667976991;
        Mon, 07 Mar 2022 07:46:16 -0800 (PST)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id e12-20020a056402190c00b0041615cd434csm4210747edz.60.2022.03.07.07.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 07:46:16 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        matthias.bgg@gmail.com, robert.foss@linaro.org,
        xji@analogixsemi.com, hsinyi@chromium.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Chen-Yu Tsai <wenst@chromium.org>
Subject: [PATCH v1 2/2] Revert "arm64: dts: mt8183: jacuzzi: Fix bus properties in anx's DSI endpoint"
Date:   Mon,  7 Mar 2022 16:45:58 +0100
Message-Id: <20220307154558.2505734-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220307154558.2505734-1-robert.foss@linaro.org>
References: <20220307154558.2505734-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit 32568ae37596b529628ac09b875f4874e614f63f.
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index e8f133dc96b95..8f7bf33f607da 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -171,8 +171,6 @@ port@0 {
 
 			anx7625_in: endpoint {
 				remote-endpoint = <&dsi_out>;
-				bus-type = <5>;
-				data-lanes = <0 1 2 3>;
 			};
 		};
 
-- 
2.32.0

