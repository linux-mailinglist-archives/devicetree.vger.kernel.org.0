Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0744FAF6AD
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 09:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727136AbfIKHRE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 03:17:04 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:45845 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727134AbfIKHRD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 03:17:03 -0400
Received: by mail-pf1-f195.google.com with SMTP id y72so13058706pfb.12
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 00:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=3aqllZnhirWen18NJ9rLavBCP+/YOWA9zZa8CCtZyTg=;
        b=L3wGd7LB0bierPG9sbQdy13pJdxcVz2jCSo3BbxJYYWTs+0POADWJOxwUle/17TUzo
         nqLzYwD7X/sDwdnvK0tGeWCUrP5jVynB9yFyIiRf+/k46QIGkYxJmLeiedtivkGraazl
         i3nqMnWRkTPMiDBcLXyLkP+HbwVzO+u2wLRHtnzRxLKNkO5MHbk/k2q9v118eDi/ikPt
         zHlHdbNtsXVBE0hkfKlWJsAG5RlNxGxH72czlbwKJBqh0gVWQDsB+dVFrNhRiVqgmu0c
         +Z1d9pdiyZA+uVLxRAKVFrGN1NJohaQMQlasvruHAqtTBXLiFWOBJKSD6X+8gUiKo/NS
         ZBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=3aqllZnhirWen18NJ9rLavBCP+/YOWA9zZa8CCtZyTg=;
        b=aSSm+UuKE0Xheb43n0bO9kHlrfEQiphXk/YDtnM20vBgGu222y3n5RiYRJ0oQgqrV1
         I1Sf/QC2JPV6u0wS7KXIbG9zJK/PWWwKsh3V2ogXU4HB3jRQcyLcqIwyo2L5vxzzs+gV
         rEGRpxN7bLrODObusH7wRk912DNnOMMtF3lKCRYqfgosJayfDmfjLhmoaMm/yTT/zaRQ
         ghVBXebx9HGXjdHoJuTMxPM61jfcDWAB1y6Xax6Vnfjr7s1KvIqUjz1ijtDxSbymEQkA
         K7An+0UqzQ4b9Zw40Z1I+ejMd9QCnQGap07vldeG+gTMdXxrHOLCD2ArYQfuHqYoXiFZ
         MSDg==
X-Gm-Message-State: APjAAAUKws2j5WYCkFNoPeW5D2QJ6MIfkt9WHPStePDwtgaxTK76XIm8
        BuwwT0w0dGR3DMmC0dxyGxtxZQ==
X-Google-Smtp-Source: APXvYqwLGTmWnztX3+l4zBFHblSob682uzYu6tFIpr+t1m6e9BiXASPtmZln57+ZOh2b7p1jNtkysg==
X-Received: by 2002:a62:15c7:: with SMTP id 190mr39946864pfv.107.1568186222731;
        Wed, 11 Sep 2019 00:17:02 -0700 (PDT)
Received: from localhost ([49.248.201.118])
        by smtp.gmail.com with ESMTPSA id b10sm152893pjo.1.2019.09.11.00.17.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Sep 2019 00:17:02 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v3 06/15] arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
Date:   Wed, 11 Sep 2019 12:46:23 +0530
Message-Id: <47305ec06a4b76a79aa073e4c0202a27a853a700.1568185732.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568185732.git.amit.kucheria@linaro.org>
References: <cover.1568185732.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1568185732.git.amit.kucheria@linaro.org>
References: <cover.1568185732.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

msm8916 uses sensors 0, 1, 2, 4 and 5. Sensor 3 is NOT used. Fixup the
device tree so that the correct sensor ID is used and as a result we can
actually check the temperature for the cpu2_3 sensor.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 5ea9fb8f2f87..8686e101905c 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -179,7 +179,7 @@
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
 
-			thermal-sensors = <&tsens 4>;
+			thermal-sensors = <&tsens 5>;
 
 			trips {
 				cpu0_1_alert0: trip-point@0 {
@@ -209,7 +209,7 @@
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
 
-			thermal-sensors = <&tsens 3>;
+			thermal-sensors = <&tsens 4>;
 
 			trips {
 				cpu2_3_alert0: trip-point@0 {
-- 
2.17.1

