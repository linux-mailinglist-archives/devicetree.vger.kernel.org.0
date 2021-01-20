Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AE732FDB7B
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 22:26:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731759AbhATU4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:56:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389510AbhATNvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 08:51:15 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148DCC06134E
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:45:01 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id 6so15888486wri.3
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:45:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vztiGMVp+rvsTFKWIicHjtSmUWk3pLrrjlnb+8+XkDo=;
        b=dT23SxdOb6Y9xBCRkwxpCNfTfrakj5EBLLf4T+faZJW08iKW0fi9uK2B3r4T30FBKD
         7pplan8HZA/ALOtNoucFcoyrdNXk6WK9TdYPVycsTU/y3+hsUUWqv0EcUDGHdaZk5itv
         KIbip9A4PwPa/iNuPzzggi4NCQYei8DYW2SoLUV1HzRDaYh95EKo/GFRHrKrfan1Iun8
         gevAszK/9Hugka5fd4wRLR3ZUZf6Yw1aRStp8tcXN6SqDDC7CXB122x0G3PWIiKRHCCk
         tSDGLAz74kBHcGFdQHvTrGxrLkyMPAaxdmbnFILm/0grNEuwpAWJuUrU0PAb+QepuHl0
         utDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vztiGMVp+rvsTFKWIicHjtSmUWk3pLrrjlnb+8+XkDo=;
        b=Od3Vd/JWItyssTZ5GpuVjZ9J48R0n5v86Jq1YwdW8w+P8FWzfjzt7sThEVs4orqRhC
         qskZd+NAJeb509nGQAQ6lSdsg51GZMilTEm+Zcr/jmnqO/7v+YFgSjqpVMUbNPasTC2J
         +k5wSkG58QtFfzDJ8ZMgsHj3RMrp3JOoF3evcRVlQvQ90p0t1b/e4+1nofkF0wV9+/74
         rjOcuarRAgrSH8hwu7gRrwxyaETQ9eVdgfD5PIO9zFMP8dpGnb7HD6LAeqKnE3oLKfQO
         A1FL/yKjZ7gQfgbOkPYqJppQm+Yk92X2lsJVkrokHg0Rz1xt8MST7BuSIptqsMHkSm9N
         Yavw==
X-Gm-Message-State: AOAM533/rOegJaYsKsKJ0dspJBE2O8oi7mKQjI/g/E9AVuLRSGKsfxpZ
        j8+bevUBKzNTotsonzah/Grmzg==
X-Google-Smtp-Source: ABdhPJzcDDIc++DKDwG28GvjCyGwlaq/0VFE1rXnXTpPxCR3vv7fJqFE0CqOMkofHxMEDJckZgd75Q==
X-Received: by 2002:a5d:4d50:: with SMTP id a16mr9173834wru.43.1611150299729;
        Wed, 20 Jan 2021 05:44:59 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:93b3:1f80:ae7b:a5c6])
        by smtp.gmail.com with ESMTPSA id t67sm4224075wmt.28.2021.01.20.05.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 05:44:59 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, leoyang.li@nxp.com, geert+renesas@glider.be,
        vkoul@kernel.org, Anson.Huang@nxp.com, michael@walle.cc,
        agx@sigxcpu.org, max.oss.09@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v2 17/22] MAINTAINERS: Change CAMSS documentation to use dtschema bindings
Date:   Wed, 20 Jan 2021 14:43:52 +0100
Message-Id: <20210120134357.1522254-17-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210120134357.1522254-1-robert.foss@linaro.org>
References: <20210120134357.1522254-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Due to the complexity of describing multiple hardware generations
in one document, switch to using separate dt-bindings.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 47fad204d6aa..4008e321a584 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14684,7 +14684,7 @@ M:	Todor Tomov <todor.too@gmail.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/admin-guide/media/qcom_camss.rst
-F:	Documentation/devicetree/bindings/media/qcom,camss.txt
+F:	Documentation/devicetree/bindings/media/*camss*
 F:	drivers/media/platform/qcom/camss/
 
 QUALCOMM CORE POWER REDUCTION (CPR) AVS DRIVER
-- 
2.27.0

