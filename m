Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED8B9658BC3
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:33:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233099AbiL2Kcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:32:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233085AbiL2KcY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:32:24 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C5DBBE18
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:32:23 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id bf43so26968184lfb.6
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P64bH1r0zNwiitNkk4H3h/0XLvclxgYzoaTyBhCDdBs=;
        b=oVxImu1p5cCn8n67Jxnxd8FIOI1o69vuFEkM8eNH5mvOwlUb1dRa0YuIjnV0Y/ogSM
         vACfE9QkXjGU8lYHjofsgW22rlPZlRHP+kiaEbSV3LOO8sfdciCB82WqJAbEi+zRplFN
         u+l8MZCv+srmWfECRjIdON1L4x2uMohXw6pwqt43trhNkFNnNPNX9u5GEYoLWBa/BVIx
         NcSv5XJxlRjCyZmHdEPbjH6Z74OJgovmXs6AMO2Pu4hnuvdBGtIHgYrdu7ARo+7pC011
         epyG8UX4KYCSTFCPwzCi0TwEreJEkttJ1SClgXShSs3DS8EKBgIeCWOmrYolOqumMhFI
         P4sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P64bH1r0zNwiitNkk4H3h/0XLvclxgYzoaTyBhCDdBs=;
        b=dwuWtMvOcGLTuHjuA6tHBp0GArVNcJwY19RF+ut6c7WsP+P0hsku2oWnPMWsiz0+t/
         s8CiIL5gDXurRX5BJ8xb6+YessbVkbRPUWJVr5mFP+GbmK2ezcVOw+xBu9QqqxqWT/ec
         pPxcg0K6jxnk3GcXIAmAMYrytvTBbil7VmPpumByaTfuhP2prp3BiikjRGurDO4sIO/v
         pgWtfNoQigT7II8aFnU1qOreGECZhAig81CaAM8JAM3VKPyd34514CAfwaMwRwwCHH4U
         odZCLRjb8X6hv1TsPgLCg/utdlm3HiJX1BzDg/zWGQwwibKiuf+gtADvqUp4VIez/yxY
         JjKw==
X-Gm-Message-State: AFqh2kpfpJyAVsv4imuBVXoxnA/ahDwfS2eljvYpgD/xlqEq8rgyIz6O
        fg5IIu5RUklSoKxHWh8oEahpHg==
X-Google-Smtp-Source: AMrXdXst4XqWFsq1eZP/TLy8rWFEU1HgxLUfaUTqyTQsbh1Hxs1JQGanBlz+gy9AHUQTvNe7tctfhA==
X-Received: by 2002:a05:6512:ac2:b0:4cb:1189:285d with SMTP id n2-20020a0565120ac200b004cb1189285dmr2059402lfu.4.1672309943124;
        Thu, 29 Dec 2022 02:32:23 -0800 (PST)
Received: from localhost.localdomain (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id m1-20020a056512114100b004a478c2f4desm2993526lfg.163.2022.12.29.02.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 02:32:22 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/7] arm64: dts: qcom: sm8450-nagara: Enable PMIC RESIN+PON
Date:   Thu, 29 Dec 2022 11:32:11 +0100
Message-Id: <20221229103212.984324-6-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229103212.984324-1-konrad.dybcio@linaro.org>
References: <20221229103212.984324-1-konrad.dybcio@linaro.org>
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

Enable the power and volume up buttons, connected to PON and RESIN
respectively.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
No changes

 arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index a8c4df2696e3..15709d73b264 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -643,6 +643,15 @@ &pmk8350_gpios {
 			  "PMK8350_OPTION";
 };
 
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEUP>;
+	status = "okay";
+};
+
 &remoteproc_adsp {
 	firmware-name = "qcom/sm8350/Sony/nagara/adsp.mbn";
 	status = "okay";
-- 
2.39.0

