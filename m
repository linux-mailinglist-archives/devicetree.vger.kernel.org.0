Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9898531BE7A
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 17:12:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232618AbhBOQK2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 11:10:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232242AbhBOQCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 11:02:36 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D67DBC061788
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 08:01:40 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id v15so9523804wrx.4
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 08:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SIR8kxlA4Jty9/otffAphB5/jPhHJK1wsDSo+IREMHg=;
        b=xAUHUH2ZGTK9itsUvPnViiXQnYk2p/FdoaR+mxhqrVTnKd5ialKAionRBo3hhxAsGV
         /hoc4W3bhajapFNiS+JVgjy5o4u+1cLwo0tLqJcqrYvwQeIGrFt1pijroCfMihJGia/S
         1eTUmEvzA4TH+DyU8Ii0eRjofSXgKo5jnli2HSDBKjdS7vmyGAR1PHK8CFCjizyeXr7c
         myM+sbEP9w30bzgRRwSPF/F3GlHW4IaymBsO3Qk5GGw4c0autgcgxaXcbtNIEe0P1HZL
         GAxZovG64fPEaHY8aC22YUTt2cdKAnkiToC53kfgkja28dxun/oZQYIPILT/cv6FB+0O
         AEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SIR8kxlA4Jty9/otffAphB5/jPhHJK1wsDSo+IREMHg=;
        b=m/QX37x0NB9OflLNkzk0ro+eeZjrOpiBB+xUSJEh19qsuu1ZHUTvbvBtdlurx5EZCH
         ETCcTdpR7AgNo/SR2wB2MQQ7vkj9fg6LMHlUowR8S8Ma9sHqsZ8IkMceAXWR9OCxe5gF
         gEmOsA3yjWK2AppT5cxoM6CqnNSQAtFtQOaWUjyfxK0YTxrCnGSfKGfIyZLCgn97zOBP
         Szr5nXGwF/BDsjsdYaQLo5fVcetsKEKZfpDNifteP8Vnurd03HS/xtsB2Srr5OLgW4L2
         I5D4Av9kJwHzdlRzsMN7pa5iCt75GU7Fbv1tTyzGIXXywYpP82AbywTplNWLv8fMcNoB
         AJkw==
X-Gm-Message-State: AOAM532umXxk+1dx1jhmi29wDmbA813jSFcj/RQTWWCoE0QkvT/UAIX3
        AQsjBtC+wyYZYZLV1y0d8p995A==
X-Google-Smtp-Source: ABdhPJxfJajEcL7wyvjJiHAxOyj00f/iUHnAV6kOd/ACwpwuqYrfHNuFh6oAV4p6EvVHv81pPBZNlQ==
X-Received: by 2002:adf:ef4b:: with SMTP id c11mr13862618wrp.0.1613404899634;
        Mon, 15 Feb 2021 08:01:39 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 101sm14698659wrk.4.2021.02.15.08.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 08:01:39 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, stanimir.varbanov@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH v2 1/2] dt-bindings: clock: Add missing SM8250 videoc clock indices
Date:   Mon, 15 Feb 2021 16:02:53 +0000
Message-Id: <20210215160254.1572615-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210215160254.1572615-1-bryan.odonoghue@linaro.org>
References: <20210215160254.1572615-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Two indexes need to be added to videocc-sm8250.h for venus to function
properly. Rather than adding the missing indexes when used we add them
separately here to keep checkpatch.pl happy.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 include/dt-bindings/clock/qcom,videocc-sm8250.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,videocc-sm8250.h b/include/dt-bindings/clock/qcom,videocc-sm8250.h
index 2b2b3867af25..8d321ac3b1fa 100644
--- a/include/dt-bindings/clock/qcom,videocc-sm8250.h
+++ b/include/dt-bindings/clock/qcom,videocc-sm8250.h
@@ -16,6 +16,8 @@
 #define VIDEO_CC_MVS1C_DIV2_DIV_CLK_SRC	6
 #define VIDEO_CC_PLL0			7
 #define VIDEO_CC_PLL1			8
+#define VIDEO_CC_MVS0_DIV_CLK_SRC	9
+#define VIDEO_CC_MVS0_CLK		10
 
 /* VIDEO_CC resets */
 #define VIDEO_CC_CVP_INTERFACE_BCR	0
-- 
2.29.2

