Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 210C86E0CB6
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 13:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231211AbjDMLff (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 07:35:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229713AbjDMLfb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 07:35:31 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F352193C5
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 04:35:14 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id i3so4582079wrc.4
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 04:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681385695; x=1683977695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WBNeeJB4Ye5R7jbvMhzaPQ3c9ocEPIWp3JugDo5ICqU=;
        b=dCbuPC3Rz+m58vYAV7E6a0OOgsn8Ynnkv/pkS+CgiTwC+VtLbjT17oEKWbj8+B20oq
         8J+9u4jbv3aad7u2WiAFA7dGkoJJoyB0IcO/+9uNO0rUkd3vIxUZgWfN+2EhF0ptkKa+
         npoNNCVbUuczRlppRFzIVdLBkGLfCyRvZXf6+kOqUd5CeUihKeAsGAtKobhohMbb/hJ9
         X7jekljiFE7HzmQ5kTpmBJNg2sSQkylBy3lgr21+8HYqbP3G4FvRk8XFjh12AydpQmZE
         uPIZTzXSN4bY2zKwFDlPc/VSouvga7MwVBSk2W3fnmkc1aARh++UfhBjqOzY0QnP4iOh
         jKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681385695; x=1683977695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WBNeeJB4Ye5R7jbvMhzaPQ3c9ocEPIWp3JugDo5ICqU=;
        b=JpM5EntH4Pf9+qlkIzEePRrMmwVcfceIS5Wcn5KcBgqccCbcyaT+sxzhOE5iiAxfwm
         FEUFOkuV+B1HVG07mEcjdUEw74PBF1roetpvzG4IcXJYMxs9AsPjaWuKny8cgr8PQnee
         5qaL+6lolBEelwpG7zpeOewMJrl3p1tcEjX20tAv+2xv23yMpqh1yiXF93b+tlJqqwx4
         AEJKLJgy5RL9ta2mmb85xAGTIMNLjoWA78ckoZ9aUHpCOuVoObRsUR5BXgmfhkgGWtL5
         9FLkx8WHVqrWGSUJuWA0t0VpGtfs5JJwv+bOxx9bVQ3f4aW0z4Vn2pFgRpH2lsG8vQfb
         7Lzg==
X-Gm-Message-State: AAQBX9e8pv8hsq3Q3Uz7ik0wWTUIyEfo13elepaHKqa9HsKJ3DkE4NrH
        J3YVdhkOVFXVtiqN7sWATtt1zA==
X-Google-Smtp-Source: AKy350agq/aaNDRKRCP6mvp8di1174nuEVgVuVSjyrmbaBgiwVHG4Frl5eTk9WB5GNHfAZfeKUmtPw==
X-Received: by 2002:adf:e352:0:b0:2ef:b1bd:786 with SMTP id n18-20020adfe352000000b002efb1bd0786mr1095880wrj.13.1681385695414;
        Thu, 13 Apr 2023 04:34:55 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e16-20020a5d4e90000000b002f2782978d8sm1108877wru.20.2023.04.13.04.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 04:34:54 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, bryan.odonoghue@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
Subject: [PATCH v5 11/14] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM usb-role-switching for usb_1
Date:   Thu, 13 Apr 2023 12:34:35 +0100
Message-Id: <20230413113438.1577658-12-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch on usb-role-switching for usb_1 via TCPM. We need to declare
usb-role-switch in &usb_1 and associate with the remote-endpoint in TCPM
which provides the necessary signal.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 1e0b6fd59abc9..b5cc45358a474 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1273,7 +1273,13 @@ &usb_1 {
 };
 
 &usb_1_dwc3 {
-	dr_mode = "peripheral";
+	dr_mode = "otg";
+	usb-role-switch;
+	port {
+		dwc3_role_switch_in: endpoint {
+			remote-endpoint = <&pm8150b_role_switch_out>;
+		};
+	};
 };
 
 &usb_1_hsphy {
@@ -1359,5 +1365,16 @@ connector {
 					 PDO_FIXED_DUAL_ROLE |
 					 PDO_FIXED_USB_COMM |
 					 PDO_FIXED_DATA_SWAP)>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				pm8150b_role_switch_out: endpoint {
+					remote-endpoint = <&dwc3_role_switch_in>;
+				};
+			};
+		};
 	};
 };
-- 
2.39.2

