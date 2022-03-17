Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA94D4DBBAD
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 01:28:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347650AbiCQA3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 20:29:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244189AbiCQA3m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 20:29:42 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68D281C930
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 17:28:27 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id t22so3184898plo.0
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 17:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s7sITGOccSSxXbU5IqO/h2LY98v91UmNuWsJwF4ndG0=;
        b=WDLX8RusToDhguFb9R+rCWHeuiQ9xj1U0FmX3/jNDcQHvip5vREM6uhQ0SlzUIIT2j
         Ph2NU9QMfsX+77WZ2mKP8w46ikhcXVC7eVnPTkNSJ+82v4hh+/sAEertJqaOCgn6qI4U
         oIuPVUAvZacjdffC/1xVdem7LqSICRDZe+ltE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s7sITGOccSSxXbU5IqO/h2LY98v91UmNuWsJwF4ndG0=;
        b=ESlJt+XgozxQ96+FXxDn4Mzu901ZMr6coc7CGhQB/Toeqoj9nTrNWcUbPDGTkCn/ws
         J0j9C8m294YCsQKKatpX5zhX7komnE8BZ4W2yH6FCIwsuFzhzsD84z68Lxc7o9rr/NQi
         MCA9FZqdBG5nz8Bsp2ZZQmgIjIXOfome34LXX44mOlz2DB9r7hJB7MIMlNDOer1Qd23r
         JKcQqAj2uwoDPvSc06iNxOfMGXAit2IlTlkmAKGLOavsYxzbFin2BPzMaGWKGrnNQES0
         rimAJ8iQcKirqssvWN7gtaRy60y9qUmhVE6UZAqcIAePvVlJNSJJsOsfVeIZ4n0VRmpl
         X1Uw==
X-Gm-Message-State: AOAM530urzm5Kbyx/TaIt7CBsJZ8K6QG2RO/Q07C41Dg++Ix7ct0eE6/
        ellAIPoTnmqGpvTICdjrdB01hA==
X-Google-Smtp-Source: ABdhPJxoDEonzZLvxbRJfDVLNOwBp6GF5KVNLA9ru3wOYbA5CpXQ2CMarPevTUmhXDQpypumPPymGA==
X-Received: by 2002:a17:903:32c3:b0:152:c1b:e840 with SMTP id i3-20020a17090332c300b001520c1be840mr2494389plr.40.1647476906946;
        Wed, 16 Mar 2022 17:28:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:3314:2f99:65d0:5a73])
        by smtp.gmail.com with UTF8SMTPSA id x16-20020a637c10000000b00380b351aaacsm3396764pgc.16.2022.03.16.17.28.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 17:28:26 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v1 1/4] arm64: dts: qcom: sc7280: Rename crd to crd-r3
Date:   Wed, 16 Mar 2022 17:28:17 -0700
Message-Id: <20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid>
X-Mailer: git-send-email 2.35.1.723.g4982287a31-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are multiple revisions of CRD boards. The current sc7280-crd.dts
describes revision 3 and 4 (aka CRD 1.0 and 2.0). Support for a newer
version will be added by another patch. Add the revision number to
distinguish it from the versionn. Also add the revision numbers to
the compatible string.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

 arch/arm64/boot/dts/qcom/Makefile                             | 2 +-
 .../arm64/boot/dts/qcom/{sc7280-crd.dts => sc7280-crd-r3.dts} | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename arch/arm64/boot/dts/qcom/{sc7280-crd.dts => sc7280-crd-r3.dts} (91%)

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index f9e6343acd03..38d41b1d70ad 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -87,7 +87,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-herobrine-herobrine-r0.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-herobrine-herobrine-r1.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-idp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-idp2.dtb
-dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-crd.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sc7280-crd-r3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm630-sony-xperia-ganges-kirin.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm630-sony-xperia-nile-discovery.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm630-sony-xperia-nile-pioneer.dtb
diff --git a/arch/arm64/boot/dts/qcom/sc7280-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
similarity index 91%
rename from arch/arm64/boot/dts/qcom/sc7280-crd.dts
rename to arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
index e2efbdde53a3..7a028b9248c3 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts
@@ -11,8 +11,8 @@
 #include "sc7280-idp-ec-h1.dtsi"
 
 / {
-	model = "Qualcomm Technologies, Inc. sc7280 CRD platform";
-	compatible = "qcom,sc7280-crd", "google,hoglin", "qcom,sc7280";
+	model = "Qualcomm Technologies, Inc. sc7280 CRD platform (rev3 - 4)";
+	compatible = "qcom,sc7280-crd", "google,hoglin-rev3", "google,hoglin-rev4", "qcom,sc7280";
 
 	aliases {
 		serial0 = &uart5;
-- 
2.35.1.723.g4982287a31-goog

