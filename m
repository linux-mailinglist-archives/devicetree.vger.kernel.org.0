Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8FDE21A164
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2020 15:55:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728172AbgGINyw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jul 2020 09:54:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728121AbgGINys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jul 2020 09:54:48 -0400
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com [IPv6:2607:f8b0:4864:20::844])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA500C08C5DD
        for <devicetree@vger.kernel.org>; Thu,  9 Jul 2020 06:54:47 -0700 (PDT)
Received: by mail-qt1-x844.google.com with SMTP id o38so1685651qtf.6
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2020 06:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=I8kRZdRWy2CNksnUvA4vMT2OP8+RWTSu608AfsNc9EI=;
        b=e99sLYf/9B+iF//z0hDbqFmIXH7m7MUN+trdQww27KbsCX6a9w4Q5mjZRhcEd1x22Z
         /KZzi2fhxqWyBMlYvypQfgCb9Z8bdy4qiU63SYgUQev5irr5DaCmHgQycT70JJrxkjwi
         vuhRcHkBPMZPPr9pjiRL51AX+Vu0ajVke2M+8zSHvUWWq7Pb3I7ghfAwCRKP3PwogBom
         PM6eJz5/OI4OdEZXXeSjeRZUMAQHD6aGsqS0qyJuFN45ioEh+cE2ROs8p+AzMaCiF4X1
         5JsYSK7Ws3h+eH8fQ/gJ2PjH+BAXfOOwdhcyFt3vu4x4tuYHBf0WmLWn92YiAjfHlYQT
         R9Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=I8kRZdRWy2CNksnUvA4vMT2OP8+RWTSu608AfsNc9EI=;
        b=PIntWyq1gTwFYUG6ePKoXeIpsetr8Qfja1bOUF0UAqzxprQ5yGHaBklsEFopb2XZ/P
         Mh4zt9vniCW0NHg7r7673kNdYtKamq5z7KjGhs/DEH1IBC2rWeNwGGzO9aeGC72RBBGK
         HMSV4Q2NZQZUVgqSPEhI/z67yLjhYKfyKxj0tLTqmVO3aNy4GY38Az80H0bFf5aCMsBE
         dy7DFxmM+bZneVUZ1tXd+lhXnukQusKGOEGOQ4kCoSnvnleRWvIShqqFmpn6H9hMUrn2
         4ZGWN3nNMj+tjcv78S41raf3bjVJorxLnoIBpIkO5w+8bTclcUoyrttGzRKVqrdIbZcT
         0iWw==
X-Gm-Message-State: AOAM533Jh4BFHYn+F5+FwMqesejOEVcIJkuK7tDgiPq60YVW5qKOBrwv
        bCNitPPxgvBwS4C/UjZ2J7xusQ==
X-Google-Smtp-Source: ABdhPJwuNf1aPQWlHS9qcvv5I9dW4J23Hcaf2uToPXVoTzF6nixgkXSd6Ii9H61gimDh8EMf1dWHVA==
X-Received: by 2002:ac8:4cc2:: with SMTP id l2mr68607242qtv.225.1594302887150;
        Thu, 09 Jul 2020 06:54:47 -0700 (PDT)
Received: from localhost.localdomain ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id 130sm3632735qkn.82.2020.07.09.06.54.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2020 06:54:46 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v3 12/14] dt-bindings: power: Add missing rpmpd rpmh regulator level
Date:   Thu,  9 Jul 2020 09:52:43 -0400
Message-Id: <20200709135251.643-13-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200709135251.643-1-jonathan@marek.ca>
References: <20200709135251.643-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add RPMH_REGULATOR_LEVEL_SVS_L0, used by sm8250.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 include/dt-bindings/power/qcom-rpmpd.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
index dc146e44228b..5e61eaf73bdd 100644
--- a/include/dt-bindings/power/qcom-rpmpd.h
+++ b/include/dt-bindings/power/qcom-rpmpd.h
@@ -55,6 +55,7 @@
 #define RPMH_REGULATOR_LEVEL_MIN_SVS	48
 #define RPMH_REGULATOR_LEVEL_LOW_SVS	64
 #define RPMH_REGULATOR_LEVEL_SVS	128
+#define RPMH_REGULATOR_LEVEL_SVS_L0	144
 #define RPMH_REGULATOR_LEVEL_SVS_L1	192
 #define RPMH_REGULATOR_LEVEL_SVS_L2	224
 #define RPMH_REGULATOR_LEVEL_NOM	256
-- 
2.26.1

