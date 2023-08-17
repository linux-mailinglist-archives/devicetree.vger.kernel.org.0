Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36D7877FA18
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 17:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244054AbjHQPAs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 11:00:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352674AbjHQPAO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 11:00:14 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ECEC3592
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 07:59:53 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99bdcade7fbso1013024166b.1
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 07:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692284386; x=1692889186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rcfI9dJEQGwO2jpUJU2BmFA8ECYrDPYOAyZ+fcK6u6s=;
        b=qqdMTpkEEYUo+2H0ldiuOrd3i053WCImL+6eghhBSKXWsN4ra0gICZTvfEi+FX8yL4
         Ei4zqsl+hSTfgYaUbSuXqRgvXGje67UkoisUOd1TN3JbYJGkyFIhsAo8igOFNE1r63CB
         AbJMGZD9hNGu8HiOOt6NuasrWYRxEr0gNEOh+2GftpKsKXifEL44VkdP2BiqvnPySTEr
         S5plSdA/82CwIwcc3CrMfrE1r4fyNZZiKb2LGgL3qLq5W5IAH8I/TsjNDEDSxtpw5lsm
         dpNtVOsMJaOK/9kvotTflTTMRUkg/5cwFT4Btyg/aqXFd8yV4K3VLtK2yLCBGNB9L3UH
         zRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692284386; x=1692889186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rcfI9dJEQGwO2jpUJU2BmFA8ECYrDPYOAyZ+fcK6u6s=;
        b=GIGO6e0IHGhHqeGvCovIZyuAx7EHCSY6KjKUI41jonO0JAUAvZaocOT9qV3Pago+5K
         r/87TEQerdim9odocMdNlNH7E76PijGyUnN0I76fM6N2R2IdwB2YknVz1KqBesGeYaBm
         F8ZgiErEcaBb7knsN1VbcfkmeGyEl0G2MUAJ00VadbO6ZEfaKaE2L+H2YK4lEZdyHd80
         o8/DD2auqFGqkTp/QjS3bR/C4RP5L1W3M+lRCN2oPtKvqXqwmWKrhRpTpyarkCWiBphh
         tJVHhiB1bB3bqrijOKlEWGFaR+wiqIwkiL2sfQhDostTTrAmTZq+4hmkDiLATwx3M1Pm
         /1KA==
X-Gm-Message-State: AOJu0Yw0yhQJjsmTwQnRFedQ6uCxdWGNF7pPpyqOsTOYa7EB6+Cv+JhW
        w26PWAA2sritCm9w4UGFBU/I2g==
X-Google-Smtp-Source: AGHT+IECi+eaQXrTqAbnKkv+RqFUnl86IqnerKbx0KVhX6hpc4uR2HN5mcfm7ey/sghhrQyauD8hbA==
X-Received: by 2002:a17:906:74ce:b0:99d:f7f1:cdd9 with SMTP id z14-20020a17090674ce00b0099df7f1cdd9mr4093338ejl.50.1692284386344;
        Thu, 17 Aug 2023 07:59:46 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id lj9-20020a170906f9c900b00988be3c1d87sm10233557ejb.116.2023.08.17.07.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 07:59:45 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 3/4] arm64: dts: qcom: qrb5165-rb5: enable displayport controller
Date:   Thu, 17 Aug 2023 17:59:39 +0300
Message-Id: <20230817145940.9887-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
References: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the onboard displayport controller, connect it to QMP PHY.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index a4f7a9f9c22c..3bd0c06e7315 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -656,6 +656,15 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp {
+	status = "okay";
+};
+
+&mdss_dp_out {
+	data-lanes = <0 1>;
+	remote-endpoint = <&usb_1_qmpphy_dp_in>;
+};
+
 &mdss_dsi0 {
 	status = "okay";
 	vdda-supply = <&vreg_l9a_1p2>;
@@ -1442,3 +1451,7 @@ pm8150b_typec_sbu_out: endpoint {
 		};
 	};
 };
+
+&usb_1_qmpphy_dp_in {
+	remote-endpoint = <&mdss_dp_out>;
+};
-- 
2.39.2

