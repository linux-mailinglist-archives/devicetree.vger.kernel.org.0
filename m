Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D13B5B9EC2
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 17:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbiIOP0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 11:26:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbiIOP0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 11:26:36 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8967476DD
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:26:35 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id a3so18951861lfk.9
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=BXAakde9D5XiO++33FBzAymweKcoEUCSBNAoZNLz9GU=;
        b=gYz2KcRqB57V5bUs385mNHrqrQe1bUg9C4hWeIRYr5GtMZaapP1lRYNv9YtPBQNk3M
         p1HpDZWuuKruLy8BaxPWVAcExRa3aq7ko7FMcxp5TAaHSVAf3I/a3Kir0UTDXjHKEXR7
         BS+z7RihVvJCgfhQiA6p48M3Nh2Nel3ueXoNon9VTgUFGHIm+BL4EA4QSkHjlUQ60K0K
         iU/XjwfIcqwhX5moHYahBXRamXqTJvaZeDxuEB6DErFsmSomedbjKz/GGDIWiKt1KUiL
         tJcoR6Yw0avMQUG0XsBGbwDZpULSUw0K7EDK0jqT2tOG7zI1dhGriKAxewO3auj8BBe8
         bYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=BXAakde9D5XiO++33FBzAymweKcoEUCSBNAoZNLz9GU=;
        b=aktSeZgqqcShmvosAD6SML3tlq6cWAcoSWCq49RtrRPpNDr8FemCfvq7WGfx0yC7HB
         BxaYQx34hmq25UDbDZvVIxK4eHSfyupJvGpH/EKcR/PCrwYBan0xA9Ki1y4B3iGL38Mf
         me62hchKS/kDx4GyLyJDLbmY4h1mCr9LV4VcP6e1BaXUnW83n90zw7zdymJFkv/VtS+Y
         cTbQfeI/90qRqjlFoYy5izX7zOnuvSwSLsLVNj6ZElRBmme5rMzvoBj95Jd8NPdjYiol
         qPI1A+S0eb/E9P3wyb/3sfqb9Y0C0CojYdmSRwaLHtmAXWL5xAnMlLXAdbMHkQ3WzKx8
         mLhw==
X-Gm-Message-State: ACrzQf3EPH51t9tX4B80Wfwye2ijLqI6xfaz9llFt3uXz572mBQWN5iC
        X4BGMF+JqBIUEf9a816wFlU8Cg==
X-Google-Smtp-Source: AMsMyM6cbZRB48Qttd+OHd919HmzvolBZ/7ghYPSSUZSrohzavKxeJyzp1qPH76pBQJwxET+24lOXg==
X-Received: by 2002:a05:6512:11f0:b0:497:aae4:1de with SMTP id p16-20020a05651211f000b00497aae401demr158955lfs.42.1663255594114;
        Thu, 15 Sep 2022 08:26:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a18-20020a056512201200b00494813c689dsm3012653lfb.219.2022.09.15.08.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 08:26:33 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RFC PATCH 4/7] arm64: qcom: dts: ifc6560: correct firmware paths
Date:   Thu, 15 Sep 2022 18:26:27 +0300
Message-Id: <20220915152630.133528-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220915152630.133528-1-dmitry.baryshkov@linaro.org>
References: <20220915152630.133528-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct firmware paths for the Inforce IFC6560 to include the SoC name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 28050bc5f081..04e1b12b971e 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -99,7 +99,7 @@ v5p0_boost: v5p0-boost-regulator {
 };
 
 &adsp_pil {
-	firmware-name = "qcom/ifc6560/adsp.mbn";
+	firmware-name = "qcom/sda660/ifc6560/adsp.mbn";
 };
 
 &blsp_i2c6 {
-- 
2.35.1

