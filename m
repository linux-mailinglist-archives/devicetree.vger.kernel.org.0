Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 970BD52739E
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 21:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234850AbiENTBx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 15:01:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234828AbiENTBt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 15:01:49 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22AD92872C
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 12:01:48 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id v4so13815531ljd.10
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 12:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+RgTCF6Ae4/KvPMsQo/XxnFRH2qjyDoAGXi+2vATcqM=;
        b=X+Jocmxg74AE83E1opLSZ8sCgHh47r0nJ/vVjYA8C+Bv7j7+wEzFHFTXMolh54OIl/
         CWD3Fwi6FZypbQ/87ylu3ne+esVMTEn9jwbrDnlADspyprVJDwsIjEWGDYNVVDt1POkf
         C8bfz4YBX+UgXFSeiPqfiGAJKv/yLMQC5qKlG76/VLIVwRntUMrvmfCywF+JZuh2j+r/
         D97lOM8HCP8mRBnT9LJwResPZGHOlWsEydRDknUjM2SQYLAtWFSzM3xGfYr77B585XXM
         Pb0ahpJjWGyUHseBPKdBFF5gQy5mxllhITRDF5jgE+1TiWsDwtQF+DjuF0vUXGyRPMXM
         EmQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+RgTCF6Ae4/KvPMsQo/XxnFRH2qjyDoAGXi+2vATcqM=;
        b=5qsFHLNZlBmyVSdz+jkUuNdk8pqLDZpGMxruW3J+4b2xuO8golrdSGxrCzaaJOaT10
         r25BkUsDZhQuInAzUBmyrDabKeXWiLFu/f4Aq7zKgz8g+G7WRqE3y7PBX1vBgWI/FkIw
         Xton2yDDxh2VgZW7hFITl1AJBSwQS/++pJoGCeu2JNjWLhNyqM6eNWx0LWSWSpYgBqeu
         xpYoUk6Cy936vIRDYWtKgp1UC+xsCo9gugHPGpDLE+iM8h47iJNZJwE6aR7ViouoZNqn
         SkgaVPINqAgf14wuX3U7CnggcZByXtHlpHDrtqnPuJ7NT4GDq/eyF2j4GbyxxbHdgm92
         h7Ig==
X-Gm-Message-State: AOAM532wMGikLwQVltMHuv1I14JI7m5zQR+kQX6wKd0u6t78cJEKh5r5
        RW1aEeq9nXDwcsFJvghFXX8o1dMUYpG9zA==
X-Google-Smtp-Source: ABdhPJytHFKj55+mGPyyVXQ3L0VvxFP1BRGVyX30coke0IGJ6Ls9Fw5js72ZvgnAESnCtKTXS7Nacw==
X-Received: by 2002:a2e:9188:0:b0:24f:1a0d:6bbd with SMTP id f8-20020a2e9188000000b0024f1a0d6bbdmr6410729ljg.226.1652554907622;
        Sat, 14 May 2022 12:01:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([93.92.200.201])
        by smtp.gmail.com with ESMTPSA id y26-20020ac255ba000000b0047255d210f4sm787427lfg.35.2022.05.14.12.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 12:01:47 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v5 09/12] arm64: dts: qcom: sdm636-sony-xperia-ganges-mermaid: correct sdc2 pinconf
Date:   Sat, 14 May 2022 22:01:35 +0300
Message-Id: <20220514190138.3179964-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514190138.3179964-1-dmitry.baryshkov@linaro.org>
References: <20220514190138.3179964-1-dmitry.baryshkov@linaro.org>
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

Fix the device tree node in the &sdc2_state_on override. The sdm630 uses
'clk' rather than 'pinconf-clk'.

Fixes: 4c1d849ec047 ("arm64: dts: qcom: sdm630-xperia: Retire sdm630-sony-xperia-ganges.dtsi")
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts b/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts
index b96da53f2f1e..58f687fc49e0 100644
--- a/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts
+++ b/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts
@@ -19,7 +19,7 @@ / {
 };
 
 &sdc2_state_on {
-	pinconf-clk {
+	clk {
 		drive-strength = <14>;
 	};
 };
-- 
2.35.1

