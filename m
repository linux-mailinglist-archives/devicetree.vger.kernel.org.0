Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 605346F30C1
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 14:11:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232532AbjEAMLh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 08:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232535AbjEAMLf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 08:11:35 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AD821735
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 05:11:29 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f178da21b2so25458435e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 05:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682943089; x=1685535089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcMNU2pXY7at0soUmicgwVM/bFPgaN3uZsi3VUVpjYA=;
        b=AwWEzSRkWUIDRrxEH1u7BILJWZieTXOPsUY7V3LKbeJfxJsThda59xWNyCNZ8Txgih
         rIFv/hOxn2wNVk1YC6tGZHnoKmx6OwLm9+n0+sR5XP+8Txw7CXVUXeHYaXLwbWSeihtf
         nxJehKCmI1NsOGp+hPPgEEHB8kEpj9yxhJDq9Gp1mFkO6tEG+Uqv2hTDvxaWJQW9K2I7
         yuTJ8djXTVFoA7sKYC+MQKL0ADPsFS/9vSyLai69QJk2FoO2BDJ1bnihL7lOtZNbyllN
         zkxTfegLzVwICXPX4k0cdt8LVNsv6Zo43Pv2H7yLO2MjecKivqsQCVNWM7sLAFgIa42B
         mO0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682943089; x=1685535089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zcMNU2pXY7at0soUmicgwVM/bFPgaN3uZsi3VUVpjYA=;
        b=RE8t8O5EJhmHTP+QixMnzEuIAsRJxtgKcBMfiF/Q8b0TGLJuEEE6rmMCeQ0BFMK/0c
         Tk/bLEOi6/yF/ib2yEIXmMI90ETeq/mnUnd31apSyLBCxV3SzjRuuS5x/sN3MUorI4B5
         GQpVfgajg5TJ5ea+iOhAvHiS8zKO9pz50GvXuRoPpKKvEDzil12qHDiswZufHyQZdQPd
         P6MUVhJcc28j1d3+XuukrkG2lYIIY0x0w0cmLShW5Ropcn6vScA8hnJUWoDeooYhWZvo
         tKd/7hWdFbBGVHyHtK6L1m7o8yUOF8sv99H+aWSApvmJ1rZW3fnCkbyv8CRZtTOEA5G0
         7b3g==
X-Gm-Message-State: AC+VfDymVNIHLIFCVOrY6U0k+OHQBRNEWJQ+Ve22XlgJnJn/o2/QTWx3
        fMbupAYmZ3KAYc80i9r1DTmxLA==
X-Google-Smtp-Source: ACHHUZ5evhvGogRq7WoYPYxGULCGHYzaLMxYpC3XUQvheYzH8fgrkIk5K58WTWPDmH0RDs/0wX6JdQ==
X-Received: by 2002:a05:600c:210b:b0:3f1:8b0f:96ea with SMTP id u11-20020a05600c210b00b003f18b0f96eamr9021436wml.37.1682943089508;
        Mon, 01 May 2023 05:11:29 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id o10-20020a05600c510a00b003ee443bf0c7sm35856634wms.16.2023.05.01.05.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 05:11:29 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        luca.weiss@fairphone.com, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, bryan.odonoghue@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
Subject: [PATCH v6 13/13] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for usb_1_qmpphy
Date:   Mon,  1 May 2023 13:11:11 +0100
Message-Id: <20230501121111.1058190-14-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230501121111.1058190-1-bryan.odonoghue@linaro.org>
References: <20230501121111.1058190-1-bryan.odonoghue@linaro.org>
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

Switch on USB orientation-switching for usb_1_qmp via TCPM. Detecting the
orientation switch is required to get the PHY to reset and bring-up the PHY
with the CC lines set to the appropriate lane.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index b5cc45358a474..8935a8e327904 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1295,6 +1295,14 @@ &usb_1_qmpphy {
 
 	vdda-phy-supply = <&vreg_l9a_1p2>;
 	vdda-pll-supply = <&vreg_l18a_0p92>;
+	orientation-switch;
+	ports {
+		port@1 {
+			qmpphy_typec_mux_in: endpoint {
+				remote-endpoint = <&pm8150b_typec_mux_out>;
+			};
+		};
+	};
 };
 
 &usb_2 {
@@ -1375,6 +1383,12 @@ pm8150b_role_switch_out: endpoint {
 					remote-endpoint = <&dwc3_role_switch_in>;
 				};
 			};
+			port@1 {
+				reg = <1>;
+				pm8150b_typec_mux_out: endpoint {
+					remote-endpoint = <&qmpphy_typec_mux_in>;
+				};
+			};
 		};
 	};
 };
-- 
2.39.2

