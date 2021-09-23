Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DCA541589F
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 08:56:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239628AbhIWG5t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 02:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239641AbhIWG5f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 02:57:35 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DE3C061766
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:56:04 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id k23so3823674pji.0
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fr7Enq1Md+/iS6o0n8IXfVQosSmEQH+2Mu6++d6naXk=;
        b=XGbJ/bAz1wNwRPORhEQJjL8UXXXNcWj8rIuHxZwAPFBFhQ5vtn3ZdMWQXxHIxQOulP
         e7BiZXQnZLv5/ziNcpQnZexJ1akH+g0yJOuFxb4Z52e7DiN95qA3mCnYkgoSJz9dQaZ0
         TLD6g4leqMUOpCrEfIuNbhKW9bBL3uwMXluc4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fr7Enq1Md+/iS6o0n8IXfVQosSmEQH+2Mu6++d6naXk=;
        b=OgvlPItGvS8dOUKrNqgbrM5Yd6u6oIQLfAj8PaSBCPc+WkE90tngwz4IpPtUYy1CFM
         pf9lL4Ez5wHy9X3yQEQjA9E7/YbtpxDIs+0F/YnLEapcEGA3nzIRAHPat55hXJ63L+Rn
         9EiP6UJwVZ1McpVSjwYgZZb9rz1H8VLqmONUo9PW9vpYIf1kYWRsg8E1QDRXPkdMNEbB
         hRW+SO2R+2RWrJIggwQXPdwmv95MSHWjeyL/Sj5BYGF7cuNmMj3Pold+fU9ydSQGIWgH
         uYe2seHGbJm3LOI/KShkTmBF/uuHiE14zgqAPl+hECoPK/TBdSBeHqeDUuXLkng3m3DL
         PGJA==
X-Gm-Message-State: AOAM530l2LILWAdP8xCrgUc99iUPu6qSJ2Qhq5WYXQGp80rXhxnBIu7Z
        sGFgxxm73kZDYjIM4/iIjXaWr7LRdP2J1g==
X-Google-Smtp-Source: ABdhPJzW3ODPcfMkj2BqCnn8XcUBbAEEGB28eD/+I/5nulCCkg1ERrU1Rta+GOQv2IRU/1vvA8AAAw==
X-Received: by 2002:a17:90a:cb84:: with SMTP id a4mr3659138pju.137.1632380163447;
        Wed, 22 Sep 2021 23:56:03 -0700 (PDT)
Received: from shiro.work ([2400:4162:2428:2f01:7285:c2ff:fe8e:66d7])
        by smtp.googlemail.com with ESMTPSA id e12sm1581888pgv.82.2021.09.22.23.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 23:56:03 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-leds@vger.kernel.org
Cc:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, pavel@ucw.cz,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 09/11] ARM: dts: mstar: unitv2: Add io regulator
Date:   Thu, 23 Sep 2021 15:54:58 +0900
Message-Id: <20210923065500.2284347-10-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923065500.2284347-1-daniel@0x0f.com>
References: <20210923065500.2284347-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a fixed regulator for the io voltage.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
index 7fba3a772fb2..19289d5b2a9b 100644
--- a/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
+++ b/arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts
@@ -40,6 +40,14 @@ reg_vcc_core: regulator-vcc-core {
 		regulator-max-microvolt = <900000>;
 		regulator-boot-on;
 	};
+
+	reg_vcc_io: regulator-vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+	};
 };
 
 &pm_uart {
-- 
2.33.0

