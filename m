Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56AFA6F39BC
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 23:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232776AbjEAV0C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 17:26:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232688AbjEAV0B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 17:26:01 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 372782115
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 14:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1682976310;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=TuHaeHAXI9GPugBSTpdzSqqdOtmVVSm+cOC6UAbi8I0=;
        b=YXxCXEt5yt8A5EL1D04ZkvlO8JrjbsagcN5FvUak40BCLDtefrpfeImtnSA8TJVxAsKwkf
        BCJueL/xh0RGpdSft4eVZApe59azeIW1mLpA+qC+f/M6sfdLSMdsKscU2nbLuJWenuaaeL
        3TezQrBLGfIbl6NJ44xx7DHWVMwYt6w=
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com
 [209.85.167.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-257-p9EIKfGTNTamr2L9nxm6kg-1; Mon, 01 May 2023 17:25:09 -0400
X-MC-Unique: p9EIKfGTNTamr2L9nxm6kg-1
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-38e6bcb9813so1959686b6e.2
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 14:25:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682976308; x=1685568308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TuHaeHAXI9GPugBSTpdzSqqdOtmVVSm+cOC6UAbi8I0=;
        b=C7LrfmsWpUtMXo1uIIrakKByiFrRbzAIj9NurwPLh/7Vi6qJFiI1VeHYsY4sda86hZ
         EHQ0gi4Bk/K8YYmWXQf7pvtkEjKmKs13Ia/gjFxZKjWCHo6C4HwX4GmqsliP6hhYLA6U
         zahCQwAGoIEefWy4s+dBGgdtD6Jd0x1ErNkUqQ1thxTy4xRIulR3zLXDo0ieO0ci+kQz
         n5H4YsrpvcyAQrNeuHAPJPc7GYRuJH/i4+Lc/AYXovBoGiWezNpM1Cae0+JPntXyUxqp
         vhFMeSJmsFJYmm6gBqDmgc4ButJmplCKmXOAXr9WI8Bu6V4+X+706X9FSm6sAjzaPB3w
         gHsA==
X-Gm-Message-State: AC+VfDwpQzb+gV2PKE5Zf3ofXz7m6xS12mJFr28NDWIhzco1qijxPobW
        piKYwfHvtXut1zbyE42yqU2DQrU5+4iwS9hm7oPw5aM2pycTWfnz6jkEb2hG3DQ/rw1va6jJY74
        67wJZ7/V7URnRNG/0PLo3gYUTJN8Q7A==
X-Received: by 2002:a05:6808:5a:b0:38d:f298:6cfc with SMTP id v26-20020a056808005a00b0038df2986cfcmr7224348oic.0.1682976308097;
        Mon, 01 May 2023 14:25:08 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4SbvWwmykUItBzmqFI5W2I8HfTV/ULJhJO3zEWw6FZxUduhjFzNK4MGF6+18C35B4vrbEWQA==
X-Received: by 2002:a05:6808:5a:b0:38d:f298:6cfc with SMTP id v26-20020a056808005a00b0038df2986cfcmr7224342oic.0.1682976307919;
        Mon, 01 May 2023 14:25:07 -0700 (PDT)
Received: from halaney-x13s.attlocal.net ([2600:1700:1ff0:d0e0::22])
        by smtp.gmail.com with ESMTPSA id q5-20020acac005000000b0038756901d1esm11911385oif.35.2023.05.01.14.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 14:25:07 -0700 (PDT)
From:   Andrew Halaney <ahalaney@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v4 1/4] arm64: dts: qcom: sa8155p-adp: Make compatible the first property
Date:   Mon,  1 May 2023 16:24:43 -0500
Message-Id: <20230501212446.2570364-2-ahalaney@redhat.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230501212446.2570364-1-ahalaney@redhat.com>
References: <20230501212446.2570364-1-ahalaney@redhat.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As stated at the below link in another review, compatible is always the
first property.

Follow suit here to avoid copying incorrectly in the future.

Link: https://lore.kernel.org/netdev/20230331215804.783439-1-ahalaney@redhat.com/T/#ma76b4116bbb9e49ee4bcf699e40935d80965b3f3
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
---

Changes since v3:
    * None
Changes since v2:
    * Collect tags
Changes since v1:
    * None

 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 339fea522509..029b23198b3a 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -352,19 +352,18 @@ &ethernet {
 	max-speed = <1000>;
 
 	mdio {
+		compatible = "snps,dwmac-mdio";
 		#address-cells = <0x1>;
 		#size-cells = <0x0>;
 
-		compatible = "snps,dwmac-mdio";
-
 		/* Micrel KSZ9031RNZ PHY */
 		rgmii_phy: phy@7 {
+			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0x7>;
 
 			interrupt-parent = <&tlmm>;
 			interrupts-extended = <&tlmm 124 IRQ_TYPE_EDGE_FALLING>; /* phy intr */
 			device_type = "ethernet-phy";
-			compatible = "ethernet-phy-ieee802.3-c22";
 		};
 	};
 };
-- 
2.40.0

