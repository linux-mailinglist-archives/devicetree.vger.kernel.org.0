Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A154131D825
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 12:25:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231491AbhBQLYG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 06:24:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231596AbhBQLX0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 06:23:26 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 394A5C061797
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 03:22:00 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id jt13so21511463ejb.0
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 03:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oxEhFanRiIwaURE1Asj018eMvsFp7g2C+jPywv6JQCM=;
        b=qCnnaF2OLkh0pa1oFwRs9lNbWKszkZlb/pZFSqn57LaXPWCs1/+i9jiBoLv8om4ALg
         UBpJuep9RiRwlzULpDC5wQuwcsQXKWXr7t89CYyWV9PNdCSUwqS36/hKvO5DTa4p8Ff7
         1jP/u8279PvD2fT8tVAZLe9etWpA+iJ2l7WCDQ14grRzrHCUX/AAQGHTnPyNeOwtRlPy
         /C8g6B2Tqc4FKj5maDlqLAXEpfErHC64x+GsSN3HJ9S1fjDYfQw6k/bHupqN4JBfeutl
         +5zbTh2vquc2Y5INni8djti63ivnIpodUfj7fj422g3q+GDBBimi7GoCF10O+XjS1XVC
         wSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oxEhFanRiIwaURE1Asj018eMvsFp7g2C+jPywv6JQCM=;
        b=Y6vdso8TOEcNo2/tmSOCazLnQSz6T6DBoUL6VXVkC/abslc5Q6Akk134LS6ZmtYcoY
         JyPGD1yCV8yv6cXXJKyrAy6jc0RF2fIRMq0sSA9R+UuT/AkBs+91AbodXnjbIvAxeLhr
         ZjnL3P4bDTwV0TiiqsisbgYbEvK7n9GOj0lHsgFWz5/gB0e11iLXJd6s9H3LwemTnwH+
         AH82K/nh6p4ox9Ig+1XgnxXPOcT7/ppECGtyb0riiK5x8yJEFs26Ftib5T4OR8EorUG6
         SrOhWEelYoHC0EUnwghrTW0/YKWmvAV0IVlzJ42am5sUXmBVRp6aXkJ5vNTal7rVS9Hq
         fSNw==
X-Gm-Message-State: AOAM532DDpjKFqndVnPPcoamCbEXpGd17kWmVa9oB3AHWFyvEQvyuVMj
        MzVAC3uY6na7lK79e0e/5PFsjg==
X-Google-Smtp-Source: ABdhPJwzW155uV1Lp/nync0xOTDYo+Lh9zvYNam1FD9gxnoxVEHlm82NLq1x7ctrELhgndK7Ip6bXQ==
X-Received: by 2002:a17:906:380b:: with SMTP id v11mr13514242ejc.183.1613560919007;
        Wed, 17 Feb 2021 03:21:59 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:4815:d4dc:ff5a:704a])
        by smtp.gmail.com with ESMTPSA id h10sm934344edk.45.2021.02.17.03.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 03:21:58 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v5 02/22] media: camss: Fix vfe_isr comment typo
Date:   Wed, 17 Feb 2021 12:21:02 +0100
Message-Id: <20210217112122.424236-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210217112122.424236-1-robert.foss@linaro.org>
References: <20210217112122.424236-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Comment refers to ISPIF, but this is incorrect. Only
the VFE interrupts are handled by this function.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1
 - Bjorn: Add r-b


 drivers/media/platform/qcom/camss/camss-vfe-4-1.c | 2 +-
 drivers/media/platform/qcom/camss/camss-vfe-4-7.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
index 174a36be6f5d..a1b56b89130d 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
@@ -922,7 +922,7 @@ static void vfe_violation_read(struct vfe_device *vfe)
 }
 
 /*
- * vfe_isr - ISPIF module interrupt handler
+ * vfe_isr - VFE module interrupt handler
  * @irq: Interrupt line
  * @dev: VFE device
  *
diff --git a/drivers/media/platform/qcom/camss/camss-vfe-4-7.c b/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
index b5704a2f119b..84c33b8f9fe3 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
@@ -1055,7 +1055,7 @@ static void vfe_violation_read(struct vfe_device *vfe)
 }
 
 /*
- * vfe_isr - ISPIF module interrupt handler
+ * vfe_isr - VFE module interrupt handler
  * @irq: Interrupt line
  * @dev: VFE device
  *
-- 
2.27.0

