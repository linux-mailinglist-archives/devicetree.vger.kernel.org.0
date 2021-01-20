Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 299A22FDD4A
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 00:45:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732084AbhATXoQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 18:44:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403984AbhATXV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 18:21:59 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34F69C0617BF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:48:54 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id 9so107155oiq.3
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PuVWjtozf6tjlsvTP6rUGUhjtA8BmU3safV4j5QLlLQ=;
        b=nlGl7XkCn0rg50zVcDNjsmuukkfEOvpVyBlVcaMu/H4VJ2N65Ja8HThIAVmA0XvKUE
         I3Lt1N0/nKH/HuzFXYl7u4q3a5weK9gxb2QRWGXVeH+KM+fvd7apdKvmNjKqDGva/F0y
         5qs7KuuQAKD86CGeszH9jvRlqrEbHllHJu0HoijQHuMT6QnSmYmV6tbaAbsEI1GQxUNz
         QcOSj4jnh1+80PgrS0RQKVoYEXRmXREsA6hSYsC1ovBriluYFk7VjOugxE4Y0zvYkGtK
         s1KbFvMFDC0elSWxWy3Yioq/fnmb0QKRQmN1fvgUWDoQ/LrezOynlQFJeUy1nVycTBuW
         sXAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PuVWjtozf6tjlsvTP6rUGUhjtA8BmU3safV4j5QLlLQ=;
        b=bxLw2jZegZPHPWNYf3F9H+5vTIfORNU2yw3Wr9vpUVR9w7XYKt2Y6qH6m/AAlf7S6G
         Z25YF83cLSUi4idZVFJcw5J8L7LrwLPmqOKAC3jktnfYQqT7HB4ed2Y7vCtIMDeGiBsb
         4T20rCuUBVwF6S2V5YjP3+dV4e0crTGArxMR1CefGjq+5T4ewBQJ7F3gAWY0AzmMYPiB
         MrIp/8E/9Jw4gVmRoXozpvyiSIyVLuJ8Edt0r8teBjQWEx/2yuyWi+WabdfKnDWlrjAJ
         wV0rSe2tmAu/CEw8qw2Z9AMT6WLGGmCulEuu1w1ro8Ks/GWxH0PUmD/oTN2RHibcVVLR
         4bKA==
X-Gm-Message-State: AOAM532dd0xO/D0mTcGIZyKGD2NeArK5Nvzbdl8hPOvgYl9dQduYg5n7
        hVZHexkeEZdCKJgYk/uoRrrBFg==
X-Google-Smtp-Source: ABdhPJxZqWHSauMNZuTKTGMF6uVC1ybsgbKaS5vmmG55n9fCvqGa+cEE0LBXhCfO/FIo3QTGqSpuyA==
X-Received: by 2002:aca:4e12:: with SMTP id c18mr3008348oib.68.1611182933617;
        Wed, 20 Jan 2021 14:48:53 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r14sm706740ote.28.2021.01.20.14.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 14:48:53 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: regulator: qcom-rpmh: Add pmc8180 and pmc8180c
Date:   Wed, 20 Jan 2021 14:49:00 -0800
Message-Id: <20210120224901.1611232-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add RPMH regulator compatibles for two of the PMIC variants used on the
SC8180x platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.txt       | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt
index 7d462b899473..ce1e04354006 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt
@@ -50,6 +50,8 @@ First Level Nodes - PMIC
 		    "qcom,pm8350-rpmh-regulators"
 		    "qcom,pm8350c-rpmh-regulators"
 		    "qcom,pm8998-rpmh-regulators"
+		    "qcom,pmc8180-rpmh-regulators"
+		    "qcom,pmc8180c-rpmh-regulators"
 		    "qcom,pmi8998-rpmh-regulators"
 		    "qcom,pm6150-rpmh-regulators"
 		    "qcom,pm6150l-rpmh-regulators"
-- 
2.29.2

