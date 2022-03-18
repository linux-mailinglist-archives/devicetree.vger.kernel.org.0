Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20EC94DE12B
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 19:38:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239904AbiCRSkE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 14:40:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240188AbiCRSkD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 14:40:03 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 247841C3490
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 11:38:44 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id b19so12809287wrh.11
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 11:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IsPzUzvYgLroRu4csiaCo2UKzNPvjuzZI8dPfwBHJgI=;
        b=Bb7G9eAidXa4LtVJHXlV2hdxDrOmusC1eMK5cZl9Dw1C0hBIEEgp9CgMVxa2ho8EH9
         Iy7Wvie5D5ex39h2yW9Q2Qm+2rfhzPmHV+hzlZ2dg3kkqTUki5LdJIvsugrmihAoep49
         dnU8et/omSgk0dpcxJyQ0aUlBsqs6GVSlPxvGYiuoA//woteMVcI+GpeALlKT4mZRY9Y
         R+Agz8iqrxzPEbsdZ9bGSz+n6IsfkXJx0nw0D4rKVzuQLus3hk2vlALuyF+HIszpwtve
         k9ci5JTZsfn8NvOzj2PidOYW9KILHgvJ10PAHxLnCYmnaNxCGUoiu+RJGlKibcpe+eHN
         TchA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IsPzUzvYgLroRu4csiaCo2UKzNPvjuzZI8dPfwBHJgI=;
        b=v7UIuiyKQE8JzUEyD1HDwLI4+krdhMQgFvX38I3Jwu1LN/wUaQ106OxIgBttrQ/lNs
         PhWHDfqpTFTxc5zy2T8zigjuO6WuduHlJkLoxtHfqFnzxBEmzsuFVZ9ZtMrMOPk/W9l2
         hdAUp3eHTdX5mFF+6Wc/9GTVcoa1UT3bhMQ1RKWYaeeZS3eL72ylHoUh8ximok5yvfm/
         cKdX5j3yACAA45m5OE8lYuItC/KzXg0h8TNyKJJS4JFbhbATifH9zxe8r01LyonV+cn1
         V+Pk/EoruA0Cw+EmmEcghDJpStDHnGIJAi0Eno21nTstdaiUCz/BVO/JV1MJhDJqfQ/S
         7pTA==
X-Gm-Message-State: AOAM531+OsUyUNpieBYswfRaveApfXbyazu5Qz9u51YUex5XZPptUbAo
        ksw7pZ0b+PDLl1TE8xK0NujEM2vG6OtW1Q==
X-Google-Smtp-Source: ABdhPJwCFaAeaJnJiep/ONIqfYgxBm2KzuK6ldKFXPAH+O97PzsAaUVBZLeOF/oW5FVvabze6YOf2Q==
X-Received: by 2002:a17:906:5597:b0:6ce:f3cc:14e8 with SMTP id y23-20020a170906559700b006cef3cc14e8mr10038931ejp.426.1647628231596;
        Fri, 18 Mar 2022 11:30:31 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl. [62.163.246.182])
        by smtp.gmail.com with ESMTPSA id y8-20020a50eb08000000b00418b114469csm4567551edp.52.2022.03.18.11.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 11:30:31 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: qcom: sm7225-fairphone-fp4: Enable UFS
Date:   Fri, 18 Mar 2022 19:30:04 +0100
Message-Id: <20220318183004.858707-7-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318183004.858707-1-luca.weiss@fairphone.com>
References: <20220318183004.858707-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Configure and enable the nodes for UFS that are used for internal
storage on FP4.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../boot/dts/qcom/sm7225-fairphone-fp4.dts     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index adb6ca2be2a5..533a1c88040f 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -336,6 +336,24 @@ &uart2 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	status = "okay";
+
+	reset-gpios = <&tlmm 156 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l7e>;
+	vcc-max-microamp = <800000>;
+	vccq2-supply = <&vreg_l12a>;
+	vccq2-max-microamp = <800000>;
+};
+
+&ufs_mem_phy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l18a>;
+	vdda-pll-supply = <&vreg_l22a>;
+};
+
 &usb_1 {
 	status = "okay";
 };
-- 
2.35.1

