Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B49613FAB0D
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 13:18:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235179AbhH2LS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 07:18:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235110AbhH2LSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 07:18:55 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A705C061575
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:18:04 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id e16so9409436pfc.6
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8okuw2i2gPCnfaWf95lgXpEu59gG7ex2eCsuML2DL6A=;
        b=QSE3uw13jKeUYYk+uqifiB+83SGOgghrwJutk3Cn5A5Vuz4oYBU/6FMNrBlgKdudxT
         +IqdiH/wsPjFZCL0K9RyILKgylbbxKOy1Z9lofhD93FSuY9BUsyHl8N0dpn7YjOPY67I
         kCX+/IgWWxeZoKdXavnyleXju8mV+TdPZTNiWsut3uZjiPEhIX2iIakjYxzagISdycOV
         lD65VtK8UBAW5ZxAHU8MiqctHJgSqydglXrxfjNMZkE9kIvn0ueA6K2e7lfJ9l2nGQ5r
         ajDDKuNGMZhUqeZM/ONB75IH0qfMV6pkc/n3aa8/jIP/vhiltGAi8xGojpqIfCehWETB
         I9pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8okuw2i2gPCnfaWf95lgXpEu59gG7ex2eCsuML2DL6A=;
        b=bFHc35OTWTbKfCE62eMnZr3gj/EwP1ZOQw2QUEiQv1wem4vRYFxPHqQnlovC1DLNe+
         LGDFCyD4Y/G7eblmNTP6WZMqu7rH47Yxkc6hkmQLJHKpJV5hwLjBxFehr1YOUWqqYboJ
         /ytNZw1ewPXMeQzEeNriMUNMKOtCf/N6RW30Isx1A335zFvrMxRw0x8Wz9BzqmKG4r+V
         XumX9RYqeecqzwvkaMzopJi3sG2F/ZOjHfEcFhhTGmPNizH14qAfegEGA4pDOTMiogZA
         8EOmCzOEtNxYXGX0far9tlIgPNEhKNgX8Nl9p2Tj9Om+P6UNNTU6c8srHI5KmuQsmKfO
         3AVQ==
X-Gm-Message-State: AOAM532y27++rNMphyB+WYtccwknZ+cf0tWVXxYRtoU+0N10+bng8qix
        bnj0lQFP6zZ0zGLXsfWIZiKOQQ==
X-Google-Smtp-Source: ABdhPJy0LT4n2ycGaxCPFVDPOBVgl84naMcnihSsOKRJ4ovHXie9zLb6Sj0ltfu8i4kUZqe2Yz2RUQ==
X-Received: by 2002:a62:e116:0:b0:3e1:57a4:e501 with SMTP id q22-20020a62e116000000b003e157a4e501mr18127475pfh.36.1630235882547;
        Sun, 29 Aug 2021 04:18:02 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id gn12sm16857115pjb.26.2021.08.29.04.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 04:18:02 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 2/3] arm64: dts: qcom: ipq8074: Fix qcom,controlled-remotely property
Date:   Sun, 29 Aug 2021 19:16:27 +0800
Message-Id: <20210829111628.5543-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210829111628.5543-1-shawn.guo@linaro.org>
References: <20210829111628.5543-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Property qcom,controlled-remotely should be boolean.  Fix it.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index a620ac0d0b19..2843bcbce778 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -220,7 +220,7 @@
 			clock-names = "bam_clk";
 			#dma-cells = <1>;
 			qcom,ee = <1>;
-			qcom,controlled-remotely = <1>;
+			qcom,controlled-remotely;
 			status = "disabled";
 		};
 
-- 
2.17.1

