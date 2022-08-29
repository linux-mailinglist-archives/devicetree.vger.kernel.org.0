Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC0515A521F
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 18:50:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229677AbiH2QuT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 12:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbiH2QuS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 12:50:18 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68FAE558C6
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:50:17 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id l5so4691879pjy.5
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=/JqFRsfWc9SAzvod+scKS9vCJ/82zulusd10VvDyv/U=;
        b=k/bSbr13oFJgDwbXV7O3MysZvt1jGmJvRITnPBuHM+KO0HO0Yn5/m8e7G0rDhxcUdu
         MbdpxQLMOwIIfw16H0JoOhRnRkcROUuSgg9K9+WXlJj2oZGV9nq+r6Ex4eYUJGv/jKoD
         3FlrMucgfLYmWwcz4I+KgVkTdLIMjw7pArRso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=/JqFRsfWc9SAzvod+scKS9vCJ/82zulusd10VvDyv/U=;
        b=oa1cpg0z3WfiriIzA9qHt4jJR8LErFeQr4pLP/KjS7gboA9bBLIWGqSseqDOg1AXg1
         0htOOBRN6K1XJq/AXEt444kfwbZjs3rr5aq5HSjAkwhzAd98U1t/LhcD4hws8VqbKKUR
         VMRLcjuwJczZG4FHNvLd189aZlGGo+9eIi1j1yUNTBNAGaXpm7RkWawB+LHLfmECO2ni
         rN2EfNQxqgP2/aQc0/E/mSfZbej2fXmWx5hGnvdPWbGBAB3ZN0Hzo9mnFzEJi0Ip7Sir
         3qUIDqp+PZgYm9RzKteVwXL/3RKvcDvoXHSoTfV3qUkKrHDqKBpBR+jDcqXLZ0qXTMT6
         hXhA==
X-Gm-Message-State: ACgBeo1GESPDU+SdII4MCEowAZqevLwZqDWlTNuwRbzWdM8LQ9yCP1hA
        nLLc55Kwqzi5tiA/zg65BRD8Yw==
X-Google-Smtp-Source: AA6agR6a+oYSlVo22PUDaC+EZo/UuSwM2itcan9ouOvKUC3GSZN8+L4ll/q2sZeyrbhRfXBY2PqbIQ==
X-Received: by 2002:a17:90b:4f4e:b0:1f5:8a65:9192 with SMTP id pj14-20020a17090b4f4e00b001f58a659192mr18973833pjb.224.1661791816976;
        Mon, 29 Aug 2022 09:50:16 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:3a97:5017:7e33:8964])
        by smtp.gmail.com with ESMTPSA id l1-20020a170902f68100b001729db603bcsm7864238plg.126.2022.08.29.09.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 09:50:16 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Johan Hovold <johan@kernel.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Mark Brown <broonie@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] arm64: dts: qcom: sa8155p-adp: Specify which LDO modes are allowed
Date:   Mon, 29 Aug 2022 09:49:47 -0700
Message-Id: <20220829094903.v2.1.Id59c32b560c4662d8b3697de2bd494d08d654806@changeid>
X-Mailer: git-send-email 2.37.2.672.g94769d06f0-goog
In-Reply-To: <20220829164952.2672848-1-dianders@chromium.org>
References: <20220829164952.2672848-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This board uses RPMH, specifies "regulator-allow-set-load" for LDOs,
but doesn't specify any modes with "regulator-allowed-modes".

Prior to commit efb0cb50c427 ("regulator: qcom-rpmh: Implement
get_optimum_mode(), not set_load()") the above meant that we were able
to set either LPM or HPM mode. After that commit (and fixes [1]) we'll
be stuck at the initial mode. Discussion of this has resulted in the
decision that the old dts files were wrong and should be fixed to
fully restore old functionality.

Let's re-enable the old functionality by fixing the dts.

NOTE: while here, let's also remove the nonsensical
"regulator-allow-set-load" on the fixed regulator "vreg_s4a_1p8".

[1] https://lore.kernel.org/r/20220824142229.RFT.v2.2.I6f77860e5cd98bf5c67208fa9edda4a08847c304@changeid

Fixes: 5b85e8f2225c ("arm64: dts: qcom: sa8155p-adp: Add base dts file")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---

Changes in v2:
- Added note about removing regulator-allow-set-load from vreg_s4a_1p8

 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index ba547ca9fc6b..ddb9cb182152 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -43,7 +43,6 @@ vreg_s4a_1p8: smps4 {
 
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-allow-set-load;
 
 		vin-supply = <&vreg_3p3>;
 	};
@@ -137,6 +136,9 @@ vreg_l5a_0p88: ldo5 {
 			regulator-max-microvolt = <880000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 			regulator-allow-set-load;
+			regulator-allowed-modes =
+			    <RPMH_REGULATOR_MODE_LPM
+			     RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l7a_1p8: ldo7 {
@@ -152,6 +154,9 @@ vreg_l10a_2p96: ldo10 {
 			regulator-max-microvolt = <2960000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 			regulator-allow-set-load;
+			regulator-allowed-modes =
+			    <RPMH_REGULATOR_MODE_LPM
+			     RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l11a_0p8: ldo11 {
@@ -258,6 +263,9 @@ vreg_l5c_1p2: ldo5 {
 			regulator-max-microvolt = <1200000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 			regulator-allow-set-load;
+			regulator-allowed-modes =
+			    <RPMH_REGULATOR_MODE_LPM
+			     RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l7c_1p8: ldo7 {
@@ -273,6 +281,9 @@ vreg_l8c_1p2: ldo8 {
 			regulator-max-microvolt = <1200000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 			regulator-allow-set-load;
+			regulator-allowed-modes =
+			    <RPMH_REGULATOR_MODE_LPM
+			     RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l10c_3p3: ldo10 {
-- 
2.37.2.672.g94769d06f0-goog

