Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D73062CD8F1
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 15:23:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727875AbgLCOWk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 09:22:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388089AbgLCOWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 09:22:38 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53966C08E85F
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 06:21:18 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id d8so2984003lfa.1
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 06:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Uko9b3BV55av2QkaenkzJqpvAkDFgYkHQm5vc8/OXNA=;
        b=qJrt4aoaolAkah1dxXJu8KfgFK+T32JHaItAD8G+A73NgIFHPilflqIWrges82Iatd
         u2ebVO6uUJkcpoAOEoyC1MVi8MnhlwTpxwHunzJBWpslTDRXZKxEFAwd8qm2YsxFvUQq
         SiYf8p+AnOjNn4ct5xLXEoOSFrew9WAJidMO/TZ3uTN13tJ2G3a6abuBWxtvBp2wuZz0
         OYVGczGOvL8Jx5/VWVFDJTEpQpwWH4zjfvAhbrPUJFRDm1O20vB1yXK24izRPG6m4TkG
         qxqE76EpWjlDRLP/l3X/oKNo/jkQ9MSf+9o1B3i7ODZTIXsCiC0nck3245013GjQWRRb
         0oOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Uko9b3BV55av2QkaenkzJqpvAkDFgYkHQm5vc8/OXNA=;
        b=lv5SpdqVg/6TOVNltekEU4fBypxHL5hpdsb81Hb4NiiCSwFgEPy1TuBt+S9cGphrYd
         GtTQISXa7IYHyoxkdIwCsTe0OMJUXjRp48e9DCiGaFGaWD/v4FMugkJpReYeiASboBdd
         TCyH0GQXByLia874b5LCU2nSmPBd6icTKeA9XpQXaEOIwYz3PdjzdDq1UE4TBo7FU9Sc
         2OEqFKaQ3rESdlFtsDbrXjP/rgmMfFDtQjTH6+8gSDGMA84kl1dwa5k5wYLfyaglb2fN
         uH/gCCX/uH/ZmsxHHtBizt0f4ZYRACb9bqFO03OnxC5FaxDPmfiabxv4vn/gsCpsepEG
         dP1g==
X-Gm-Message-State: AOAM531ENYwaur7bZB+IaUDni9L7CE25AxNLoHvaNugUYOMdU5ww2bJU
        mln6UBDZNz9XJPwEgR4mc4su/A==
X-Google-Smtp-Source: ABdhPJywIs/X8+NXKZuXzyMN49m16C2DvFiDJzeR2Wvxsfihvb2v1JWxgqpIo8C13nq7cLFLzLer0Q==
X-Received: by 2002:a19:c518:: with SMTP id w24mr1328933lfe.334.1607005276570;
        Thu, 03 Dec 2020 06:21:16 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.117])
        by smtp.gmail.com with ESMTPSA id k185sm575716lfd.294.2020.12.03.06.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 06:21:15 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 5/7] arm64: dts: qcom: qrb5165-rb5: correct vdc_3v3 regulator
Date:   Thu,  3 Dec 2020 17:21:03 +0300
Message-Id: <20201203142105.841666-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201203142105.841666-1-dmitry.baryshkov@linaro.org>
References: <20201203142105.841666-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

vdc_3v3 regulator is sourced from 12V, but it is controlled by l11c
regulator, so set it as vin for vdc_3v3.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 22c1953f4e63..94d95dff48c4 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -87,7 +87,7 @@ vbat_som: vbat-som-regulator {
 	vdc_3v3: vdc-3v3-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "VDC_3V3";
-		vin-supply = <&dc12v>;
+		vin-supply = <&vreg_l11c_3p3>;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
-- 
2.29.2

