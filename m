Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A9D94261F7
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 03:25:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241443AbhJHB1t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 21:27:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236670AbhJHB1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 21:27:45 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C418EC061796
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 18:25:44 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id y26so32781624lfa.11
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 18:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rl9lijE101nkKuIfXUJz0J1rHJh3GLfZMfhSeNFX708=;
        b=RqlG/JjJd4k29AASlqtoXzQdegQ0a+3xdtSbdEq2jABLdJiJaTOPLfdbL2hg5zeh1q
         tvqA0mTagWvk+CgCwwy9JflMkCoMMuEfiRgTNS2XB7vvxC3K+6wiN2Fly9hgUuftn81X
         hzDnI3lYjjRl4zHnA54MjRBpwRdSYfMteOA/csqMl9NYyjlia8hpQqPv27vymwS2/NkR
         YtZe2N1qzBfB9bz1JXoi56SttGU+c17/IOMNt2/AxEBrUpKnVbVpW8VKNLzJ6EORbpP5
         BMEy7EWgqduLwEV7z9R+mgzAV4ZLuhzKMt1bxa5E/JRh2kiYssGs28Zuy1kF+UZqaJn8
         A/Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rl9lijE101nkKuIfXUJz0J1rHJh3GLfZMfhSeNFX708=;
        b=OaYvUXKY4F6SY1Io0E1KIge1vt8aFDmzUi2kjHcrewNdoWzy25SVzWTen/4qEi3njp
         7N1vmAtBL3edqV1cwuHyN27n7017SLcySpJdfGnTUKEWys1Idqrx5mnXu0NJcIrWWjEF
         VRPqjbKnj+IiSJB4G21C6RBfnDVo2hNTKM0RNt/kALwJX+GqJCrKMREGxHhljmriCYUp
         djgAKIdoXb7619wrVbSh1J3WZb1dzFLs70GTlXCRH5C6rqsHMMS8YgbwqMlnssabKT2m
         CPLlB24V9BUmkTX8HRUz2MymuBb2sddlcYRmfCKEDpmX1mw3ViSoyScDFuq+9swH678h
         2SKg==
X-Gm-Message-State: AOAM5314ACcd0C8tXoJ/f+Yqi4rKd7HJ4DLZUDbTWI2bj5NjoaJMuYtW
        5bSoN4zB803SVJozdAxWLCgBlw==
X-Google-Smtp-Source: ABdhPJwYedEG9raGpnqEQa5sN24WwYPUWIJfrGHPF+D4q72rJZ1gE6oyy5xY0MS755aA2Xr2hRduLA==
X-Received: by 2002:a05:651c:905:: with SMTP id e5mr325945ljq.361.1633656343167;
        Thu, 07 Oct 2021 18:25:43 -0700 (PDT)
Received: from umbar.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s4sm112875ljp.115.2021.10.07.18.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 18:25:42 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v3 23/25] ARM: dts: qcom-pma8084: add interrupt controller properties
Date:   Fri,  8 Oct 2021 04:25:22 +0300
Message-Id: <20211008012524.481877-24-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the pmic-mpp is a proper hierarchical IRQ chip, add interrupt
controller properties ('interrupt-controller' and '#interrupt-cells').
The interrupts property is no longer needed so remove it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-pma8084.dtsi | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-pma8084.dtsi b/arch/arm/boot/dts/qcom-pma8084.dtsi
index fcee2afe6740..7b8a8d9695da 100644
--- a/arch/arm/boot/dts/qcom-pma8084.dtsi
+++ b/arch/arm/boot/dts/qcom-pma8084.dtsi
@@ -43,14 +43,8 @@ pma8084_mpps: mpps@a000 {
 			gpio-controller;
 			#gpio-cells = <2>;
 			gpio-ranges = <&pma8084_mpps 0 0 8>;
-			interrupts = <0 0xa0 0 IRQ_TYPE_NONE>,
-				     <0 0xa1 0 IRQ_TYPE_NONE>,
-				     <0 0xa2 0 IRQ_TYPE_NONE>,
-				     <0 0xa3 0 IRQ_TYPE_NONE>,
-				     <0 0xa4 0 IRQ_TYPE_NONE>,
-				     <0 0xa5 0 IRQ_TYPE_NONE>,
-				     <0 0xa6 0 IRQ_TYPE_NONE>,
-				     <0 0xa7 0 IRQ_TYPE_NONE>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
 		};
 
 		pma8084_temp: temp-alarm@2400 {
-- 
2.30.2

