Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE29C2636CC
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 21:48:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728347AbgIITs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 15:48:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727010AbgIITsZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 15:48:25 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FFA5C061756
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 12:48:23 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id l63so3884150edl.9
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 12:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jGoxTNHQetF7fWue/FsBwgBc5cdIuqMc5s44Uajfba8=;
        b=CeoXEIZBu6YhTVERAjUZGRjiPJZspQoOCh5rpLEodjsvPqEnEDRgWGpaELQrPeObQv
         CeKvNjw1eItFKS6YX84cs4eS8XJ8DxwjoZ7A8A3tfcvWCFna4X/Kkg6xM3EReyYhK9Sk
         OcnSfiljESAeHPf1QGN79OVLMCrGiOIU+apdTZ+0adyqnz1pccwwzkQFx0QryK2dENx9
         ItsPyFKrqsjB4CKKs1WIw0NRMIyHVHw7dFWLVCtSSfFcBut/3Mhg48lo7wh/QnFn+QOL
         meZzMneUjsW5SOObIlAH3TMIpACofHUvcczGb2IKw5bn4wYyqdNwRcfLJm70q4oinaH8
         FOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jGoxTNHQetF7fWue/FsBwgBc5cdIuqMc5s44Uajfba8=;
        b=KqUxAWPHclw2xZDSQeikljIcMH/3vPEfx9qEu1oahYgxyFOcZsLbIn10028SlLLt0+
         HM0DUnfb71PqamTvM6eiBiQIitpAmM8oW3UEaBmgCPFAlqGGXfl2pr8VFayTTN8Caw/b
         p6zM9LUAOcOLMBVWIgMNfi0xTJeCMmQSEqceQDnyiXlt+1RgZe9ejauwLZsNPuWh3f6v
         JN/dexkMVN/M2yXwQk1jHDCw6QV8ILxw7r5kAhEE7Qn/4ZSRrFie7gG+a3y2yYAU6WO9
         jjNOm6DoT/VtPZuZMWL/G8gouUm+3svhd1SBsi1Uo3Aq7pWcsL+TLccjgMJCsrro+KyZ
         rTSA==
X-Gm-Message-State: AOAM530TH7dowqguqaoyFjYqbthn4yORcebO/p4Zbk+sBCZ8igX42NUs
        AaVEhx18CEEeAduSiJ8XtXh+7g==
X-Google-Smtp-Source: ABdhPJy+AsLa/GrOqTK4l40JtalccZr5BVueT0w4yBYWM6KSdC/BeSG+/ge730Qph7akQNgiojK2tg==
X-Received: by 2002:a50:f1d1:: with SMTP id y17mr5521552edl.231.1599680902299;
        Wed, 09 Sep 2020 12:48:22 -0700 (PDT)
Received: from localhost.localdomain (dh207-97-133.xnet.hr. [88.207.97.133])
        by smtp.googlemail.com with ESMTPSA id hk14sm3461452ejb.88.2020.09.09.12.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 12:48:21 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>
Subject: [PATCH 0/4] arm: dts: qcom: ipq4019: add more boards
Date:   Wed,  9 Sep 2020 21:48:12 +0200
Message-Id: <20200909194816.3125213-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for some popular IPQ4019 based
boards.

This patch series depends on:
https://patchwork.kernel.org/patch/11765789/
https://patchwork.kernel.org/patch/11760437/

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>

Robert Marko (4):
  arm: dts: qcom: ipq4019: add more labels
  arm: dts: add 8devices Jalapeno
  arm: dts: add Alfa Network AP120C-AC
  arm: dts: add 8devices Habanero DVK

 arch/arm/boot/dts/Makefile                    |   4 +
 .../boot/dts/qcom-ipq4018-ap120c-ac-bit.dts   |  28 ++
 arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dts  |  27 ++
 arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi | 255 +++++++++++++++
 arch/arm/boot/dts/qcom-ipq4018-jalapeno.dts   | 215 ++++++++++++
 .../boot/dts/qcom-ipq4019-habanero-dvk.dts    | 305 ++++++++++++++++++
 arch/arm/boot/dts/qcom-ipq4019.dtsi           |   6 +-
 7 files changed, 837 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom-ipq4018-ap120c-ac-bit.dts
 create mode 100644 arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dts
 create mode 100644 arch/arm/boot/dts/qcom-ipq4018-ap120c-ac.dtsi
 create mode 100644 arch/arm/boot/dts/qcom-ipq4018-jalapeno.dts
 create mode 100644 arch/arm/boot/dts/qcom-ipq4019-habanero-dvk.dts

-- 
2.26.2

