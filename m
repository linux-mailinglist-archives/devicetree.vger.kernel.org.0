Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC8C96E0CB2
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 13:35:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbjDMLfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 07:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbjDMLfb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 07:35:31 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D69469ECE
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 04:35:15 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id s12so5424356wrb.1
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 04:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681385696; x=1683977696;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcMNU2pXY7at0soUmicgwVM/bFPgaN3uZsi3VUVpjYA=;
        b=fta7Yb+O1bsTNZqK70ZbYc0/Lj6QF5t6o7ldRAG8TEFsbUjd8otC26p5V1/0r8eKLI
         hjPvY++1QkY/55HuhKrkkoeFMTOSDBu9cayHxybQ6vaMI8B+E4DcEa8iVrqxP3yrbXjL
         lgnmuwtwabmkUnYFkOUN4ffq4ZAHY+f4sqtU36+Apdp7VE7ojyux2ub9b/WKG+UaKWmB
         ZZd2h9pzMfV5P3lxxVS+KukX1dY75g7YJWYS9QV3ekBcQNwoU5C+wMbZJCVzb0D2nFDL
         FHanbqlKuuVpOVd2qR5pUF88TXC2nxXuOeitTT20LK/A2egO7hunOrXqFymmi5/A36wu
         CNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681385696; x=1683977696;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zcMNU2pXY7at0soUmicgwVM/bFPgaN3uZsi3VUVpjYA=;
        b=BrtMPsqYta34JuDsu9cmxdDE8RvSxMUd6IwIAp9o+zz/dhwNwhQ2y2XusVkTP6m8Cw
         HGVFy8uI8AAPUDHmLKeHXF+Taajif48ouN0g9lG9PQMe/xv0sqmKoo9Zx5iWDBDx2NG3
         ydLHMa68CXqThpFf8UHcR8p+7e8dP5CGBU9OxjAjHnZusGwYAc16xUp9ypj7Zb8yRrg6
         NZVuXo59Czj4YUz1t2q5QcL/m70K0IF9HBfcTSsmPfNRU9PkMY8EHvNtZXeOgE0yVeBR
         cFAA8goLwNytlezJYcOKxCZi89fuqDqOJDCVB70NRx2M/rwSHrw62jLF6qlKdXnbSaKf
         w9rQ==
X-Gm-Message-State: AAQBX9coA4CJRZcgAqclRtc471JymwEaoGYQIlbH+OZEBOkyRamzM7Fo
        evbwoAmjY+qro63rWrZzeLPV5g==
X-Google-Smtp-Source: AKy350ZAgbyOnh3nikW0nzPoUS50snyXA9Uy7VQ6IYZyCGF2ED7DeWPCIG04/AeDff6pBIxjTVna4g==
X-Received: by 2002:a5d:574f:0:b0:2f2:585f:5369 with SMTP id q15-20020a5d574f000000b002f2585f5369mr1273676wrw.62.1681385696517;
        Thu, 13 Apr 2023 04:34:56 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e16-20020a5d4e90000000b002f2782978d8sm1108877wru.20.2023.04.13.04.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 04:34:56 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, bryan.odonoghue@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
Subject: [PATCH v5 12/14] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM orientation-switch for usb_1_qmpphy
Date:   Thu, 13 Apr 2023 12:34:36 +0100
Message-Id: <20230413113438.1577658-13-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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

