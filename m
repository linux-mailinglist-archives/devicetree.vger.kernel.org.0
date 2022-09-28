Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2560D5EDF86
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 17:00:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234675AbiI1PAo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 11:00:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234590AbiI1PAR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 11:00:17 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 564833686C
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:00:08 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 10so20797798lfy.5
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=LtgKFbu4xqrBfa/UrtX2sBDc1GeFUYPgf38w51iW7Nk=;
        b=Iv35MiLznn/D0K8UTRyRcqgGBwwGImiPAYgqYnb+ZzlkVb3BcS9NVIUNjDYi5nB3Pb
         WK9EjEtjpWBDVSFuE/lQibiPhn74MWHfsx62bmFd+wjS7yMLouMVm1+sZ0gZ5SGOhM0a
         WoOagqQkrTPRLTvdtTvcAUb9/tEKt1DP2taUN3ghOLOJhHTlV+2ZBvezH8TNRIwzBsEf
         B5JrOa4tRWAdAhi7FRmSnraHrrGcfBPqEuhCFwtU9z1gZaUUxvSBSQTP+8AyVuxms1lS
         hgMN6fhk3oQQAbMwQaLaCYk7HeyOevF4zQ4pwXgahvyGnDV/AwqKONdSNnXXsfU41kDJ
         icmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=LtgKFbu4xqrBfa/UrtX2sBDc1GeFUYPgf38w51iW7Nk=;
        b=bY6YTOR3WZyc5Jxol56p5iR54tahuPevQS5UxRBZZ5voligExL5tP0a1whj+Pgpt6j
         SSJMmx+lgzJzbCjbGkwTH2BSSUX7yhVqdhpiyiHVRwNi8YKlLrglC/AwlesMBrqDNAxo
         Qc0vWxT/5jOmTBSOsvKuLGEI3bDQgvZchx4brtqXiG+4xZdovlDEfEGbqa7azQJywqua
         4W1+ELutPGBeYcTy73B2POCZa1tV6Teg+mPW4NF/hdDfGzkKpflwrqVe8NS5H4ZM+Krk
         v1dG53fxFvtoFyfF9oNcikWVIHc8cSOLAA/qkIlHlA6hZNFISPpEl2MFTyUQqqKGsPi4
         ll7w==
X-Gm-Message-State: ACrzQf3rh7rLQ5Oe5nU4Stmgqjxg3wOFXfE6weHLNTqteBkdp1O+6c3t
        H9qC3VGOelg2q8xevi8xAYzGxg==
X-Google-Smtp-Source: AMsMyM4FREszGlL2+XHKulFWgB1264kaoph75qVa8jSSu2nL5puYWiGKb2yxb9iuFhfkdBFVhDkWoA==
X-Received: by 2002:ac2:57c9:0:b0:49c:3e64:de95 with SMTP id k9-20020ac257c9000000b0049c3e64de95mr13703590lfo.452.1664377207499;
        Wed, 28 Sep 2022 08:00:07 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id be36-20020a056512252400b00492c017de43sm494996lfb.127.2022.09.28.08.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 08:00:07 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 10/11] ARM: dts: qcom: msm8974: add clocks and clock-names to gcc device
Date:   Wed, 28 Sep 2022 17:59:57 +0300
Message-Id: <20220928145958.376288-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928145958.376288-1-dmitry.baryshkov@linaro.org>
References: <20220928145958.376288-1-dmitry.baryshkov@linaro.org>
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

Add clocks and clock-names nodes to the gcc device to bind clocks using
the DT links.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 810a163ca14f..68ef494ca87a 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1054,6 +1054,10 @@ gcc: clock-controller@fc400000 {
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
 			reg = <0xfc400000 0x4000>;
+
+			clock-names = "xo", "sleep_clk";
+			clocks = <&xo_board>,
+				 <&sleep_clk>;
 		};
 
 		rpm_msg_ram: memory@fc428000 {
-- 
2.35.1

