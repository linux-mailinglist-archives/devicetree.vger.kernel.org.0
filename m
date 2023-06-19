Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2756734F5A
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:14:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231248AbjFSJOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:14:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231266AbjFSJON (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:14:13 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04AF61B0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:13:43 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f9002a1a39so16563695e9.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687166021; x=1689758021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1C82NuiRAia/YhjujkCgLkELLEPYOAaW/5fpk8oBGP4=;
        b=AA+Itp+Sx3GggUVnhhkWtf5sxJDMSmZOXt2TEY+d9VKXDw58LXUVuQYDECuLmrUD2b
         KEUf+5x2WGSW7YBX+sY9pyjKwaj5kCnkLXP07pzh1FCdiu6diQkRgWkP1aqZAfMgNn8/
         lFzPG6fuVWxxV20VosVM52Asa61jDiMyrNbuHBWLfjEEsCFpgsCFlZ0o6NBigouVwagO
         t2oIZ+ntjvJzOS+X9LyrQ8Ktst20Cmt50T198urRF8Q+ZX5DBJLp9xI5s+g0pYJiNAL5
         9wpaLxufJ3NucdXMl/X4mZjT3j4FIgc2W+t8KRDW1iahux594TnnOMMNeRWZH8ePNUcl
         xpog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687166021; x=1689758021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1C82NuiRAia/YhjujkCgLkELLEPYOAaW/5fpk8oBGP4=;
        b=Jd5zeOVHrxPBUYSWEOc+Rqm4rxy5trFEgqo/Qgmkbh2V8rOGEBZMEiFMsIs93f1G4Y
         jltRXjkgtgb2EzZk3HVzOHDphEQVGuvtbq1m8cpp/KqeSNROQ4HJ711GEH0ct53bed+f
         D+1F2JLvSXP7sk1QqXgo2M/QMpViJvUcWhHdbXZNNDeTy8b9jMY5TH7JF1C8zcncBf9v
         D1FQAOoeP01jR63FXMgOfSVrxUfnCyqykFJwrobomeCmkfMasJgzozZYtTRJ8QRBdMGu
         g0vZtiNXOl3Gys2w32rAmPplvVjNAnRX1BPWcPgVwDbFIF6JAQZR+Yd7Qt7IS6tvXkNt
         JFjQ==
X-Gm-Message-State: AC+VfDwTWZDm9OnBd0cnLeZDaEmFZIWp5Ojc0bAmPciFoVDK0+Vd7WHU
        /6spEpJGN+0aWzm6n5V4L7Bd/Q==
X-Google-Smtp-Source: ACHHUZ6/ggW60pun/Sld9wz/UBXySJ5eRhz4id6HJk0y61sdfFs06pHgign6sI2xdNyeeUnN661dBA==
X-Received: by 2002:a05:600c:2112:b0:3f7:395e:46a2 with SMTP id u18-20020a05600c211200b003f7395e46a2mr6138146wml.16.1687166021498;
        Mon, 19 Jun 2023 02:13:41 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d9e8:ddbf:7391:a0b0])
        by smtp.gmail.com with ESMTPSA id p20-20020a05600c205400b003f9a6f3f240sm3072993wmg.14.2023.06.19.02.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 02:13:41 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [RESEND PATCH v2 1/3] phy: qualcomm: fix indentation in Makefile
Date:   Mon, 19 Jun 2023 11:13:34 +0200
Message-Id: <20230619091336.194914-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619091336.194914-1-brgl@bgdev.pl>
References: <20230619091336.194914-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Align all entries in Makefile.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/phy/qualcomm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index de3dc9ccf067..5fb33628566b 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -20,4 +20,4 @@ obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
 obj-$(CONFIG_PHY_QCOM_USB_HS_28NM)	+= phy-qcom-usb-hs-28nm.o
 obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
-obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)		+= phy-qcom-ipq806x-usb.o
+obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
-- 
2.39.2

