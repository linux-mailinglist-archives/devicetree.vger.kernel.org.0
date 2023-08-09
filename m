Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE333776A61
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 22:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234821AbjHIUjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 16:39:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234597AbjHIUj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 16:39:29 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F523FF
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 13:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1691613435;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=okYpy3Rt4UA69l0nbI4avGMj8RPG+1RIyEiSyQ/9d54=;
        b=Aa78DufFA6Q62evvhwtJf9/yOT6FcYfuzAXgQL/M70bakdFoFj8e1DMA9OgzKlmuOQ3CWY
        ytCwPBVzxlwFnJtkatuppcLba5AXjOHnuIvtNBffsnz+QP1ceqi38SBS9n2hx5RMalsXnH
        BX/M0cjDyecMdyZlGNOuRkdszEcIkH8=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-414-bDTfMmABNoi0xZom8UK1Dw-1; Wed, 09 Aug 2023 16:37:13 -0400
X-MC-Unique: bDTfMmABNoi0xZom8UK1Dw-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-63d0b65ae89so2030566d6.0
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 13:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691613433; x=1692218233;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=okYpy3Rt4UA69l0nbI4avGMj8RPG+1RIyEiSyQ/9d54=;
        b=GoYngQWPXEhq8r3SxIsA1r2+UakVeczBk5X1bfvUdk+kb98KlvY4/18ck8p8wyKB5n
         TgrRLKIspFCr3Jb4cDVYZcOez7JVyhSo1gbQgXY9+CE453Scg9JgXD/U8rwegHCzpzLJ
         41JtnTXwoB800dh6R0bd0zX8DY9qb9PFIpbz5X5+Abdtaxvvg2Oqb97ZnlNsS16Zg0R4
         1zVXxzGaLa8fKG0/kvJ4oTPujXqFnXy41maxhqapQAAR0ov0+KmB5qMC5JJrmGZNGBTn
         gYZO5Vht2GSRs/daIahpxneCxcNtz6n+2cmMcfM+NiS2XhuBbjLMS3T6w/Sm/a3cAgZZ
         iiMw==
X-Gm-Message-State: AOJu0YzJO+kuSMLypgvdCYUwlcr8XJyYiPrWbPALwgAQXeWgIFb+6xm6
        xBBwcJCGkoZjmdzCvde8HzH77IvdljX1q5N1ovO8sxpKV7tBYG+V3GgIk6aglJrRdQzOxLkiLq7
        hoTZf8x73lyqUU7qWJVu8qzxVB/8eDA==
X-Received: by 2002:a05:6214:20c5:b0:62e:d9db:c788 with SMTP id 5-20020a05621420c500b0062ed9dbc788mr53849qve.3.1691613432925;
        Wed, 09 Aug 2023 13:37:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFePJdGbKu390tbx2fZ4whJZ/mljd2KlTVDJqTIyN/is0gqW0Cu6HgyuXsv/ohCkV26e9HkmA==
X-Received: by 2002:a05:6214:20c5:b0:62e:d9db:c788 with SMTP id 5-20020a05621420c500b0062ed9dbc788mr53825qve.3.1691613432663;
        Wed, 09 Aug 2023 13:37:12 -0700 (PDT)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id e8-20020a0ce3c8000000b00637615a1f33sm1179234qvl.20.2023.08.09.13.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 13:37:12 -0700 (PDT)
From:   Eric Chanudet <echanude@redhat.com>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Eric Chanudet <echanude@redhat.com>,
        Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH v3] arm64: dts: qcom: sa8540p-ride: enable rtc
Date:   Wed,  9 Aug 2023 16:32:33 -0400
Message-ID: <20230809203506.1833205-1-echanude@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SA8540P-ride is one of the Qualcomm platforms that does not have access
to UEFI runtime services and on which the RTC registers are read-only,
as described in:
https://lore.kernel.org/all/20230202155448.6715-1-johan+linaro@kernel.org/

Reserve four bytes in one of the PMIC registers to hold the RTC offset
the same way as it was done for sc8280xp-crd which has similar
limitations:
    commit e67b45582c5e ("arm64: dts: qcom: sc8280xp-crd: enable rtc")

On SA8540P-ride, the register bank SDAM6 of the first PMIC is not
writable. Following recommendations provided during the review, use
SDAM2 from the second PMIC at offset 0xa0 instead.

Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
Changes in v3:
* Reserve rtc-offset@a0 in pmm8540c_sdam_2 instead of rtc-offset@ac in
  pmm8540a_sdam_7.
* v2: https://lore.kernel.org/linux-arm-msm/20230718145105.3464105-1-echanude@redhat.com/
Changes in v2:
* Default pmm8540a_sdam_7 status to "disabled" in sa8540p-pmics.dtsi.
* v1: https://lore.kernel.org/linux-arm-msm/20230717182351.3389252-1-echanude@redhat.com/

 arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi | 11 ++++++++++-
 arch/arm64/boot/dts/qcom/sa8540p-ride.dts   | 15 +++++++++++++++
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
index 1221be89b3de..a1fbb477fafe 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
@@ -14,7 +14,7 @@ pmm8540a: pmic@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtc@6000 {
+		pmm8540a_rtc: rtc@6000 {
 			compatible = "qcom,pm8941-rtc";
 			reg = <0x6000>, <0x6100>;
 			reg-names = "rtc", "alarm";
@@ -39,6 +39,15 @@ pmm8540c: pmic@4 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmm8540c_sdam_2: nvram@b110 {
+			compatible = "qcom,spmi-sdam";
+			reg = <0xb110>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0xb110 0xb0>;
+			status = "disabled";
+		};
+
 		pmm8540c_gpios: gpio@c000 {
 			compatible = "qcom,pm8150-gpio", "qcom,spmi-gpio";
 			reg = <0xc000>;
diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index 5a26974dcf8f..b04f72ec097c 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -407,6 +407,21 @@ &pcie3a_phy {
 	status = "okay";
 };
 
+&pmm8540a_rtc {
+	nvmem-cells = <&rtc_offset>;
+	nvmem-cell-names = "offset";
+
+	status = "okay";
+};
+
+&pmm8540c_sdam_2 {
+	status = "okay";
+
+	rtc_offset: rtc-offset@a0 {
+		reg = <0xa0 0x4>;
+	};
+};
+
 &qup0 {
 	status = "okay";
 };
-- 
2.41.0

