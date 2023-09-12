Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01AE379D681
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 18:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236922AbjILQit (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 12:38:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236996AbjILQis (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 12:38:48 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E38D410F4
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:38:44 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6bc9353be9bso996173a34.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694536724; x=1695141524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ntmraty7RCGdlp+9Fn5GfraYT+3p91f6Gjw03F9RwZw=;
        b=WvJTdRfFSFC+NI/SWglVnHN1LpJHuQx+JD1uIaAVJ6heiQ6Mg3lEzFAfuFPQs+1cHs
         wQXMlmkvRXd10FnPewgFSwa1Vj+OC687sCkdLqQ0PZK6AZEyL7Gi4tyx5mh1AZD2sZCT
         HPvoJCu1B5gatj5Fp3A4v2SRccPws/ZNr1nN7gdv3OA/Wk+N8wL/rE/i09eMjhexJTLc
         zsvI6zeetEhAi+C5B6rHzo3IhpEC+RJmzPcSg1hkCRfN4Bt+YkvSmFMYGDvlAnXsB4ya
         qUZMpRvLri9zTnP9SNlg9A6fwB8eGiZ9AA9OGxMFXnRZepteJ0DXq1E8p1OTkNKSsEa0
         qjuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694536724; x=1695141524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ntmraty7RCGdlp+9Fn5GfraYT+3p91f6Gjw03F9RwZw=;
        b=ULWnk3VmqcGMbXPRTr3lLQPFuzLlR4uTttCMzqcCGGxIxvH3IqPrlJRS+OQ7Lhqz2l
         Trvw0GOj5GB2+86JLhBrCMs61xV99Khuk8gyD2VFyeMLZQ8kM11JubLuHbzrduUmZW6l
         0HvzG5yaZW/6dTitTqti62TUs5ciK3VSxyFx6yrTVrrPsy/bS16PzF2kafsRM6TTKXpc
         jPMUte9EafSBCMOZLitnVOx1lk+ecmjFVKpqC+/etY6J1IaaovVKBfFEidNz1jDiftfB
         R7QubzkIiqRc3fUo0WhojEU85psDVeRXGIvv0ZoaqiXbrpsTrDYSuwjZT2t0RW2ni1tq
         PjtQ==
X-Gm-Message-State: AOJu0YyyE5fMEbs/UTFjKvWHAiAq/eqwVf1kBGmhetfpplTb31vM52n+
        wwS+VHsJsPh/aE6v8JfAtQA=
X-Google-Smtp-Source: AGHT+IHewzAWyBhHF69ssOaL6A9g/nywD1ArRD0MNX53utMk5mwqr00WJUZjb+ARqw1KbMM6pQXGZA==
X-Received: by 2002:a4a:d24b:0:b0:576:8e04:2875 with SMTP id e11-20020a4ad24b000000b005768e042875mr191422oos.0.1694536724171;
        Tue, 12 Sep 2023 09:38:44 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:676a:5a77:75a8:efc8])
        by smtp.gmail.com with ESMTPSA id v4-20020a4aad84000000b00565fbd0d4c0sm4012426oom.28.2023.09.12.09.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 09:38:43 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alexander.stein@ew.tq-group.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 2/3] arm64: dts: Remove JPEG clock-names
Date:   Tue, 12 Sep 2023 13:38:09 -0300
Message-Id: <20230912163810.1750488-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230912163810.1750488-1-festevam@gmail.com>
References: <20230912163810.1750488-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Per nxp,imx8-jpeg.yaml, the clock-names entry is not valid.

Remove them.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v2:
- Newly introduced.

 arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
index a90654155a88..39577071e1d3 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
@@ -24,7 +24,6 @@ jpegdec: jpegdec@58400000 {
 			     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&img_jpeg_dec_lpcg IMX_LPCG_CLK_0>,
 			 <&img_jpeg_dec_lpcg IMX_LPCG_CLK_4>;
-		clock-names = "per", "ipg";
 		assigned-clocks = <&img_jpeg_dec_lpcg IMX_LPCG_CLK_0>,
 				  <&img_jpeg_dec_lpcg IMX_LPCG_CLK_4>;
 		assigned-clock-rates = <200000000>, <200000000>;
@@ -43,7 +42,6 @@ jpegenc: jpegenc@58450000 {
 			     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&img_jpeg_enc_lpcg IMX_LPCG_CLK_0>,
 			 <&img_jpeg_enc_lpcg IMX_LPCG_CLK_4>;
-		clock-names = "per", "ipg";
 		assigned-clocks = <&img_jpeg_enc_lpcg IMX_LPCG_CLK_0>,
 				  <&img_jpeg_enc_lpcg IMX_LPCG_CLK_4>;
 		assigned-clock-rates = <200000000>, <200000000>;
-- 
2.34.1

