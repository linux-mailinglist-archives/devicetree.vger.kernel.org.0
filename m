Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05B5E526353
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 15:57:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231650AbiEMN5h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 09:57:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230452AbiEMN5f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 09:57:35 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC86712EB
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:57:34 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id iq2-20020a17090afb4200b001d93cf33ae9so10889258pjb.5
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c38pckiAKbL4R5gHxVgybPN8tZ+xHGcvHTSt+rrxRXI=;
        b=Aj0zmrOaKti+xYakhuf30LNS9d4gixVrjVffHak/1ybBgigezMf2WbGLhH4zREtA7i
         UOCRkjtXh4tXDHwTNxDVAbZhvyrT1JU1yZ66a2XAAxW7TQIpnCm6LY8SRCeknr88LLPo
         SUXgWuDxFtra4m7lNPXmTUuqyfV6H31zK0lHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=c38pckiAKbL4R5gHxVgybPN8tZ+xHGcvHTSt+rrxRXI=;
        b=LpuIHjLP3KzkWLaAkZBpyk2Ydu9UaVMKkxv4kQNuxAoOA+6QMtfERAr+abjNBYUjgP
         6XbsE1B9ni4kwS+tDG5MYueTxkBrQIAWk4LVfQS4YxANmSX2Y9tBz7GgN+zcELvZbxWn
         nfZnuWA1aTD52DMTPdDAPMcvwrMSwWBmeqaeHuQgnkjJ/GUz1O4wEiUhOy04jLdtOQBZ
         kK+DSm9NXqLPcqnJy3+SiP2o01mIiqjJcqgMFR0cEOyNj2yBeq+Tmwxin8owBZTTke/W
         Zy7b7fw8//0iI2x8gtroxiGzJ1OsQq/s+hy4IydKc8y/qs98MNIsc0SLNZoAc77fhaJA
         e50Q==
X-Gm-Message-State: AOAM5312zaz2QPs07sNhnDv73utgjnHzX04rEJUyxyYLbTu32XNj6t2V
        rzOiTkaDT1rLBI01+RSiPFasEjMyPtQRb8c/T6jC0g==
X-Google-Smtp-Source: ABdhPJypfdJ6x5Kten/v6OEf0RQgmVULwcLl0muJOPJ+GbmUvv32LL9LYZnsjMVnVyL/VoEiVqjEVQ==
X-Received: by 2002:a17:90a:a82:b0:1da:3763:5cf5 with SMTP id 2-20020a17090a0a8200b001da37635cf5mr5138007pjw.55.1652450253811;
        Fri, 13 May 2022 06:57:33 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:1ee3:ea22:908:c2b5])
        by smtp.gmail.com with ESMTPSA id p123-20020a625b81000000b0050dc76281d7sm1843921pfb.177.2022.05.13.06.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 06:57:33 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     quic_aravindh@quicinc.com, quic_khsieh@quicinc.com,
        quic_sbillaka@quicinc.com, Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>, quic_abhinavk@quicinc.com,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: qcom: sc7280-herobrine: Enable DP
Date:   Fri, 13 May 2022 06:57:14 -0700
Message-Id: <20220513065704.1.I9b9b9d4d1a3e0350a89221892261881a1771ad15@changeid>
X-Mailer: git-send-email 2.36.0.550.gb090851708-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This enables DisplayPort for herobrine boards.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 9cb1bc8ed6b5..709b7aa02101 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -429,6 +429,15 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&dp_hot_plug_det>;
+	data-lanes = <0 1>;
+	vdda-1p2-supply = <&vdd_a_usbssdp_0_1p2>;
+	vdda-0p9-supply = <&vdd_a_usbssdp_0_core>;
+};
+
 &mdss_mdp {
 	status = "okay";
 };
-- 
2.36.0.550.gb090851708-goog

