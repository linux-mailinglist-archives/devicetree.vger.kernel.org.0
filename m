Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 339CD5404CB
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 19:19:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345653AbiFGRTO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 13:19:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345678AbiFGRTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 13:19:04 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 042DC1053F7
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 10:19:00 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id y19so36553785ejq.6
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 10:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dkxGKqfjlk2BseBFR/4rpL2eqUgP+7L5CxVKR6PZDHY=;
        b=jWjQn4yiof6z1wOf4VVqd3sJCsADu0ZkWQWoYH0kyxK0F/zYWpWqecY6/eNv/pHRcl
         9v66ISeM4TY7zIRNTjX3CvR/Mdq6CrwMAgtErEbS1t9qzOeSnlckxG2NypIYOLTfkxVA
         7tmfaMituYRQsf9F51jWJCtHhk98nZ+5pD42ToFN11jW/VrWZPA7jgck/yNqDoq8p3jG
         huMKxoaJyUZb1haqDcqBwEn8HJj0mNkN1qXj+6OGtgdh7iYgIqnfUy4gA9HvCWbU/di8
         2LHkBh0Q8YhLsHzsyGDH3jWmiwu+4tsclhTo7W0VpRPnEstPIodPDiQ/JXqYEqNJRJx5
         7I1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dkxGKqfjlk2BseBFR/4rpL2eqUgP+7L5CxVKR6PZDHY=;
        b=6TBZKtv11ykVkAz6GwpeqiwavgUlm3Hk8dI707L8CwVIN5GmrOEinzPXs/Ux8EZodj
         ssl16xcnfwhZhuvnxgKKoK8Xqua9k8tMBSsWrAuuBr7XS6oIQOAp8YB+TwtKzXZW/jGa
         /YSmJqMVj+rVmu1CoWut3+cPgmWyaJ6+lrSbYF0njDCcRwDk4V6malFObPk7T3Dkgfxy
         c+9/aERlKj/yO2UMBI5zj+rhys9tgwMsPaEf7Sxcj0EoQPP7E2LoQgonCmdGcrjzSvFi
         SXP2HMrumuAD84a0+ZXQaIu2+KKGAXSGvblfimVdWD6nquR5UrKwkL30yksar7UFtmdA
         udnQ==
X-Gm-Message-State: AOAM53376WOtKLnidlILLq7Ncl2svN544lEnmS0pRIVMSxBxBjWX3VKn
        YUfcnuknv9blFhiKf3RDL9Hq/g==
X-Google-Smtp-Source: ABdhPJwvVpI5kUxoZUY5o27MdTOXLLE+WxNK8SL79kihah8urA6NRTQcJkTareJ4XD6xl4j9eOMKFQ==
X-Received: by 2002:a17:906:2a86:b0:711:d8a5:cb0c with SMTP id l6-20020a1709062a8600b00711d8a5cb0cmr7919603eje.426.1654622338378;
        Tue, 07 Jun 2022 10:18:58 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i7-20020a170906444700b0070e238ff66fsm5876540ejp.96.2022.06.07.10.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 10:18:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brian Masney <masneyb@onstation.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/14] ARM: dts: qcom: msm8974: add required ranges to OCMEM
Date:   Tue,  7 Jun 2022 19:18:41 +0200
Message-Id: <20220607171848.535128-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
References: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
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

The OCMEM bindings require ranges property.

Fixes: a2cc991ed634 ("ARM: dts: qcom: msm8974: add ocmem node")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW. Testing might be useful.
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 5e6b2ae72e62..add03309b3b4 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1608,6 +1608,7 @@ sram@fdd00000 {
 			reg = <0xfdd00000 0x2000>,
 			      <0xfec00000 0x180000>;
 			reg-names = "ctrl", "mem";
+			ranges = <0 0xfec00000 0x180000>;
 			clocks = <&rpmcc RPM_SMD_OCMEMGX_CLK>,
 				 <&mmcc OCMEMCX_OCMEMNOC_CLK>;
 			clock-names = "core", "iface";
-- 
2.34.1

