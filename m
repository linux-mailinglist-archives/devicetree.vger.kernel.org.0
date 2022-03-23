Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CDB44E59D6
	for <lists+devicetree@lfdr.de>; Wed, 23 Mar 2022 21:31:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240584AbiCWUcf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Mar 2022 16:32:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243236AbiCWUce (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Mar 2022 16:32:34 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE3EA8BF18
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 13:31:04 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id b8so2838095pjb.4
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 13:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8oFqq3OAhLNYPmEUiRfaWEgxs162u2Kk2WATsf8DjFk=;
        b=yfFgEujSkMrvB7YkpTzShQMqW9DQ8ZztfhEKHxVi83cgbvHnbrolIbRgTLR7KMxOfn
         9YV5bkeeTjzlAr2Qq6Y1Z5i4ADZUugUDosI9tIbgZlfiak/gLoXdW8SGrMhYNZ9ifN7h
         MxGmlJYpAjzH3fe/rnxaw5+lGlfL1oBzGijj99NLf66z1NHaQkDzvW7WZn2+qzZ7WAhw
         FmTnj/l5KQrB2WA5dwr3qv27AEUYV+Ai0Vd7qlehDx5dJrY8n3fp3c6esRVWM2GW9uYM
         g8zaGc6EQqLj/7T1fvJ08zTjASFOt9Jgwbvpj5Zgu6B1JgkXZ3xIzOgoh//wgzxSCysh
         YSSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8oFqq3OAhLNYPmEUiRfaWEgxs162u2Kk2WATsf8DjFk=;
        b=MHGBk/HavcR4bXCEZ2P61yWzpkqb9Xb9vrLZRyV93KNj5Nikp+M0aiVRISAJd5YMxz
         a6Pq+0pPZq3tG/obI7DFroAkmrVRqr9aCZ8dJdD3XDN8lqOzolnK237zopDVDB5Rnvbn
         OiFpMH2HOYWlyfjT48Jrpg5OMU0XQN23ONfLNND53c6sz3ChaJ3g+RgL7LHsw4fQAluz
         3bndRCqy0S/viaa+q7zc/tIubaF8D4mTDnB3DvX1Vrz4n3l6+1N85rxNnc39unml/yjL
         msJqz8sXfzdomBuMvYmkz4Xs5VOkkNXruqExE6OqCQGg4kyIB1WG8yBGzmj0tWcv5rgA
         vvhA==
X-Gm-Message-State: AOAM533lIQ7q5O/+2+IVaixHb8ebGgNdF4x8OHLVcf7m9Q9RViFn/wlF
        qbLt9a0IYzmVgqE7mJbn/jNFKw==
X-Google-Smtp-Source: ABdhPJz4bqT4rTQKROWpsRfJ8/z0g4TFpQqPDv/8rW47kC7Hm9iL/Mo81XGivORNIzOkprgJCskZOw==
X-Received: by 2002:a17:902:7405:b0:154:68e6:9bdb with SMTP id g5-20020a170902740500b0015468e69bdbmr1879887pll.15.1648067464295;
        Wed, 23 Mar 2022 13:31:04 -0700 (PDT)
Received: from localhost.localdomain ([223.233.78.42])
        by smtp.gmail.com with ESMTPSA id n3-20020a056a0007c300b004fa3e9f59cdsm718476pfu.39.2022.03.23.13.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 13:31:03 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        bjorn.andersson@linaro.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/1] arm64: dts: qcom: sm8150: Add ufs power-domain entries
Date:   Thu, 24 Mar 2022 02:00:52 +0530
Message-Id: <20220323203052.1124683-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Add power-domain entries for UFS phy node in sm8150 dts.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
Changes since v3:
----------------
- v3 can be found here: https://lore.kernel.org/linux-arm-msm/20220303082140.240745-1-bhupesh.sharma@linaro.org/
- Dropped [PATCH 1/2] from v3, which is already in linux-next now.
- Addressed Dmitry's and Bjorn's review comments.
- This patch is rebase on linux-next.

 arch/arm64/boot/dts/qcom/sm8150.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 6012322a5984..eed601e70229 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1637,6 +1637,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
+
 			resets = <&gcc GCC_UFS_PHY_BCR>;
 			reset-names = "rst";
 
@@ -1687,6 +1688,8 @@ ufs_mem_phy: phy@1d87000 {
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			power-domain-names = "ufs_phy_gdsc";
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 			status = "disabled";
-- 
2.35.1

