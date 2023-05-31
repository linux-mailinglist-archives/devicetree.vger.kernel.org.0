Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5164A7172EA
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:16:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233964AbjEaBQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233760AbjEaBQ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:16:28 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C672C100
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:27 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f50470d77cso3153952e87.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685495786; x=1688087786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=82RzHLV1uhavI/GlDnaxb8vbJsT2sjrZzn+8HSvbDyA=;
        b=cOHz+BD2dHgyRnivBP+ClL47SGVVD3zy4i00x/ukxgWZxfuo4K3OFL7B5XKuTlSHp7
         +xGSGrpXYRex7ZPA0sgyh62j+8JfYOZueWKLJ+yVhbg6WIw0DD1gQHXqCdi/FkU6sRuK
         ztdvIOhC7Bfw9L5BJtL/fzKCkJ/BrMVypCnyMFwZvRUbSqee6m1GPUP5tOjpgC/f/RCE
         ChabzdaXP60B/+4MYMsuihhLiv6viW0Tx9CHKe+vP63tKXZMmL7bXLwBOFryqj9AfwCZ
         xoGbV1ME5piwOm9SnQHcBW2j5MyFuUTyA4wTbAclNwpepjrMZ6lqA55HsLXNDumUjqpB
         6gHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685495786; x=1688087786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82RzHLV1uhavI/GlDnaxb8vbJsT2sjrZzn+8HSvbDyA=;
        b=VJZe7lBOoomGqjdoAjkSjdHrdcWhsjSBTOYwXqxwzLtchGyoWoXM7pbXdpRRK8nMqs
         6STNdbqpeQryKdE1PXDPkWBi9gTXfMIKcmyEqGWVA6hd66yfhyYXHIiz+ymY0wsLBz+V
         qfkwxMe41nSl/zCv9g6in0oIi0tBUc3iLDQ+6DPRSBoOd9zlTPJQzUOpxwRo3BnAmO7g
         +N3io5QTnK0Er+9zJMZno8txZS7l4VMCgimLPz1g978Kp/r+W3Z7VkHXs6a0WcyyukYj
         bkJFemK40G31OUI12ThhpTnmryz1ECHDbViIBJ9ZpZ2NqqMYmyZNWZkqj80elpRWb7+j
         /YjA==
X-Gm-Message-State: AC+VfDxPvmKdwLdEra/SP0lacFIvh0u/4rzcc2JbUPurm8kyU/o1wIiZ
        p8ncTkLtsVZB5uc0wAwX8WM4bbbOA6EPn/oKGAg=
X-Google-Smtp-Source: ACHHUZ7epbMjVkFDeFCqCS4uyqmvqZOiff70QcwvJhEKSlSauYMIk6yG5lBovgQ88K5dAZtuORd5CA==
X-Received: by 2002:ac2:5605:0:b0:4f4:ce78:2f17 with SMTP id v5-20020ac25605000000b004f4ce782f17mr1660840lfd.13.1685495786198;
        Tue, 30 May 2023 18:16:26 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm505640lfd.128.2023.05.30.18.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:16:25 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 01/14] arm64: dts: qcom: sc7280: Don't disable MDP explicitly
Date:   Wed, 31 May 2023 04:16:10 +0300
Message-Id: <20230531011623.3808538-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
References: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MDSS and all its subdevices are useless without DPU/MDP, so disabling
MDP doesn't make any sense. Remove explicit disabling of the DPU device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 4 ----
 arch/arm64/boot/dts/qcom/sc7280.dtsi           | 2 --
 2 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 5b1c175c47f1..9ea6636125ad 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -467,10 +467,6 @@ &mdss_dp_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000>;
 };
 
-&mdss_mdp {
-	status = "okay";
-};
-
 /* NVMe drive, enabled on a per-board basis */
 &pcie1 {
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 00547192215d..1aa3c6bf81f0 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3881,8 +3881,6 @@ mdss_mdp: display-controller@ae01000 {
 				interrupt-parent = <&mdss>;
 				interrupts = <0>;
 
-				status = "disabled";
-
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
-- 
2.39.2

