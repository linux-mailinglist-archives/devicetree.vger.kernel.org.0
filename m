Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB1BD2C3022
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 19:46:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390949AbgKXSoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 13:44:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390880AbgKXSoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 13:44:18 -0500
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EF2FC0617A6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 10:44:18 -0800 (PST)
Received: by mail-ot1-x342.google.com with SMTP id 11so7786722oty.9
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 10:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z50zrczk/HXT3wMf0LhtTgKjujoLdfzrjXHxy6jadvU=;
        b=BUsry8dXUyq6qvH12+S8uwdIvLqe47yNySt4CQBM/hhHB87Oyc9x7pntTUnLGORUqr
         NNSsIGUhtiOxgn4o6pQqsfQpM05xC7XvoCOhW4QbJb6IVm8ZPHeh2mepfyScK8CS3Baw
         dv/+IPESAIh2X71+UL5+oSEdZFxaBMrDtH6hs6W+HOCygkxEdoThZJ7LFg7+ucKkC6Dh
         7bry1X8B275f9C/S1Y/7qrRnGJrU2JL/K6eopL6Qu9PXt+lPuiyoSoeeZq6cpTdlF081
         P4T4aFBfXxbb4IXGoCzk6/lUSsYHs79NtnJ3N41yDXmW0k4lFCMedgofKqhd9ToLT0h+
         JSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z50zrczk/HXT3wMf0LhtTgKjujoLdfzrjXHxy6jadvU=;
        b=f4khxbEZRoLX5gxPR07l8sbqXePPwdFC4lyMk2hMSwzZWJWMRIopJl+aF/9vgUr9r8
         aus8ikBOmtVa5jTeYRNvIZoQh1p2L1kgbBCDCHjB3rfPkpJ/x9xFrxsjBpVgURbBJuNR
         UBfJZ99qYXb17vTTcPAJ+tgYaYeEoIJCoJXdGWk/oQ2mYOf7N6L0ptGUyjakwxZV9H4m
         gMeJbQpleHI7ZzFCk8uhnYFZDms1G/QkU3a8bIggJQAscH+kQjINVO7PiB0ZwxlJzAJo
         N9D5Eu+YnWxkfniYtWCHp7tOum1cRitScBfKTiCC+GL/0McFE7DDwE33HrSeLV3uGiuS
         rubg==
X-Gm-Message-State: AOAM533LAmdKvftS9x7qX1SFlqEwDz3atNvu/RIUOIctRPxA3nY6KfN7
        ejTT6UanQVv6DwzcXpvL8CKieg==
X-Google-Smtp-Source: ABdhPJzuUNL2hALito6AJog35PnicqoPfOTu0soQCA+H2qKVW4zlwU8MRsrtI1pCWL1vVO8keKN8nQ==
X-Received: by 2002:a9d:6641:: with SMTP id q1mr4553514otm.190.1606243456575;
        Tue, 24 Nov 2020 10:44:16 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t25sm9024376otj.13.2020.11.24.10.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 10:44:15 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Steev Klimaszewski <steev@kali.org>,
        Shawn Guo <shawn.guo@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: c630: Re-enable apps_smmu
Date:   Tue, 24 Nov 2020 12:44:14 -0600
Message-Id: <20201124184414.380796-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Re-enable the apps_smmu now that the arm-smmu driver supports stream
mapping handoff from firmware.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index d03ca3190746..f5b98845fa90 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -232,11 +232,6 @@ vreg_lvs2a_1p8: lvs2 {
 	};
 };
 
-&apps_smmu {
-	/* TODO: Figure out how to survive booting with this enabled */
-	status = "disabled";
-};
-
 &cdsp_pas {
 	firmware-name = "qcom/LENOVO/81JL/qccdsp850.mbn";
 	status = "okay";
-- 
2.29.2

