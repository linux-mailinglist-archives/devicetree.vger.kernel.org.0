Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 191153950CF
	for <lists+devicetree@lfdr.de>; Sun, 30 May 2021 14:18:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbhE3MUH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 May 2021 08:20:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbhE3MUH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 May 2021 08:20:07 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26405C061761
        for <devicetree@vger.kernel.org>; Sun, 30 May 2021 05:18:28 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id o5so10226462edc.5
        for <devicetree@vger.kernel.org>; Sun, 30 May 2021 05:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=N60HzV+cqUOHSm0xyO9PKF9fq2+mfN8wKnJGwhzE5P0=;
        b=FannPbVx6zDTBZ8ual3QJ1hWadBUE7+ETukrrYUV8G6kh2ijS3Oq50ZJPv3+nvJWYC
         +liOgi9DM5RK6/fjdwU6MYzKUA77WjAXXxlSd6I25m07KP70FtGlYt/1CatTCJrMJFPd
         1siSWY9N2qMYnSduCXtoiNw7VfECam9QKx2PN76VgPeR11pMXtzChP5paYeLLb6XiEUj
         3S2ptmpiUGlhsrFkh9rcPwyRhwWqX/51lf1dY8vT7P05Ffbf1spkM+45HuPpr+IY8kzw
         +5Jbj7HaLowReAwU/C7jNvugSpf0ln6remwwKTi1J/NIfh1cH/ZKx1V7ZABdoHo2HsiB
         N51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N60HzV+cqUOHSm0xyO9PKF9fq2+mfN8wKnJGwhzE5P0=;
        b=N+yPwLXlHkXvnc8YTGN7c3g0WS97SJUPRrVgikDvj3lZaP1JMz3X9C0fozoi3U7KLl
         RB0AqdR5tkRZlZj+pvF3Zj1MYzsWTGYe7PzdkZG4KLvOuLz/0QRtgpH4h1JfzeDAlvmC
         FBc6YyiwfjkPQULzVadAV0Kd/4A/c7241sU7QODyWVB3jJPamugNvpXYiX6I5PvDSCuw
         lkiOi3ZW5kLydiWLVafNOJ63+qfKb7J035UM4DI2ekZwoJ++60oR42ETB+bgPGTkX5GP
         XHvJsg6CWejRHuGPL/2ehGmAiR2pxN2qeUOgMHLEeTKTgqCu3VHp1He09t9IKDEfUZYN
         N8nw==
X-Gm-Message-State: AOAM533wUX0G0PX6o4IbgsJF8jW7jtLhVnFtjDTZgEF0rTG4Q4dl1mpU
        zo2IbT98gVG/BOTjq1uyHIAycg==
X-Google-Smtp-Source: ABdhPJzCLE0AIneNRFOtS3RvKV29UmSYZ+JVPAKK1b8DePSPTqZ1JY+eUU17r3xH1h5Zjtp2lti9zw==
X-Received: by 2002:a50:fd0d:: with SMTP id i13mr20411865eds.163.1622377106692;
        Sun, 30 May 2021 05:18:26 -0700 (PDT)
Received: from PackardBell (192038129069.mbb.telenor.dk. [192.38.129.69])
        by smtp.googlemail.com with ESMTPSA id jx16sm1311662ejc.49.2021.05.30.05.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 05:18:26 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id fcbb3f26;
        Sun, 30 May 2021 12:18:22 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
        Bartosz Dudziak <bartosz.dudziak@snejp.pl>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Kumar Gala <galak@codeaurora.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: msm: Add SAW2 for MSM8226
Date:   Sun, 30 May 2021 14:18:02 +0200
Message-Id: <20210530121803.13102-2-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210530121803.13102-1-bartosz.dudziak@snejp.pl>
References: <20210530121803.13102-1-bartosz.dudziak@snejp.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the dt-binding compatible in the SPM AVS Wrapper 2 (SAW2) for the
MSM8226 SoC platform.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 Documentation/devicetree/bindings/arm/msm/qcom,saw2.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/msm/qcom,saw2.txt b/Documentation/devicetree/bindings/arm/msm/qcom,saw2.txt
index ae4afc6dcf..94d50a949b 100644
--- a/Documentation/devicetree/bindings/arm/msm/qcom,saw2.txt
+++ b/Documentation/devicetree/bindings/arm/msm/qcom,saw2.txt
@@ -25,6 +25,7 @@ PROPERTIES
 			"qcom,saw2"
 		    A more specific value could be one of:
 			"qcom,apq8064-saw2-v1.1-cpu"
+			"qcom,msm8226-saw2-v2.1-cpu"
 			"qcom,msm8974-saw2-v2.1-cpu"
 			"qcom,apq8084-saw2-v2.1-cpu"
 
-- 
2.25.1

