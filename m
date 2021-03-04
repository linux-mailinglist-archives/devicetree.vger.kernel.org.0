Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B232232DCC6
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 23:13:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231497AbhCDWM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 17:12:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230124AbhCDWMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 17:12:55 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B4C9C061760
        for <devicetree@vger.kernel.org>; Thu,  4 Mar 2021 14:12:53 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id h10so36973635edl.6
        for <devicetree@vger.kernel.org>; Thu, 04 Mar 2021 14:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v/pPDOAIiRjR7lEs29siBxnpMbhMpFCg4qL6RvapyuQ=;
        b=ZvgjxCFdW+xEIJQRTSrZL9RG99WKcuzdTurrplaWC8+EC8MZwlMwU+OBT9Nm8QNzO5
         NdOoYpYInzinJHNu6McP1uHtYkzgOrhNUi32Us+kUjDel5XCS1sga1lOsHnl9S6lAqYl
         N+2auUjyYr0kuUMvKyhGGBAlXCZ08f4U1dgJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v/pPDOAIiRjR7lEs29siBxnpMbhMpFCg4qL6RvapyuQ=;
        b=k3ieXo748XyjPp8sI4DNoXyJnhpOVjslg6A/r37muwQSjuu+0m88cZE4DSr2c1b/OM
         VyStv7z4TFj1JvwZ1pOJ7xOun77EvNwIHrd+dDp498nb5ZInOi4CixHGgNdbwOOvUayt
         7ACuNTutm17nlvCYBAS74WntpoT93RCI+WToAf2J+27DwaXmut3zsDg0VV7AHEXM2RNf
         OULtuyTJHVH9XSRafHAIOrDuD27L/plqL17HMbvs9QvLDVl8HXnrQoBdEp/f1HFG6+3t
         sL6M6ArLb5+Q4G8CsvqGuZMwmrWttcZTMVDOKg62tsEVvVydQ+BYwKBvSin4efpxEDvG
         1xVA==
X-Gm-Message-State: AOAM533fyrAr2j0vt34JcETvnZJFeH2MqP+QySsGQL3Zxh8U/voDFCKp
        a6pL3IJ9o7XCZd5UwpwuI0uOrQ==
X-Google-Smtp-Source: ABdhPJy3H4qGxTqJAT6Dy3t671giI6caxeE5c2SF84vG2D259IJR/Gin3MwbgSzzwbdGCsregOluwQ==
X-Received: by 2002:aa7:c889:: with SMTP id p9mr6615207eds.82.1614895972167;
        Thu, 04 Mar 2021 14:12:52 -0800 (PST)
Received: from prevas-ravi.prevas.se ([80.208.71.141])
        by smtp.gmail.com with ESMTPSA id q22sm362099ejy.5.2021.03.04.14.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 14:12:51 -0800 (PST)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Arnd Bergmann <arnd@arndb.de>, Guenter Roeck <linux@roeck-us.net>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-watchdog@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Arnd Bergmann <arnd@kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: watchdog: add optional "delay" clock to gpio-wdt binding
Date:   Thu,  4 Mar 2021 23:12:46 +0100
Message-Id: <20210304221247.488173-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210304221247.488173-1-linux@rasmusvillemoes.dk>
References: <20210226141411.2517368-1-linux@rasmusvillemoes.dk>
 <20210304221247.488173-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[DO NOT MERGE - see cover letter]

We have a board where the reset output from the ADM706S is split in
two: directly routed to an interrupt, and also to start a ripple
counter, which 64 ms later than pulls the SOC's reset pin. That ripple
counter only works if the RTC's 32kHz output is enabled, and since
linux by default disables unused clocks, that effectively renders the
watchdog useless. So add an optional "delay" clock binding.

Suggested-by: Arnd Bergmann <arnd@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 Documentation/devicetree/bindings/watchdog/gpio-wdt.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt b/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
index 198794963786..527be6b30451 100644
--- a/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
@@ -17,6 +17,10 @@ Optional Properties:
 - always-running: If the watchdog timer cannot be disabled, add this flag to
   have the driver keep toggling the signal without a client. It will only cease
   to toggle the signal when the device is open and the timeout elapsed.
+- clock-names: May contain the entry "delay" if the board has logic
+  that delays the reset signal from the watchdog and which requires an
+  external signal to function.
+- clocks: Phandles corresponding to the clock-names.
 
 Example:
 	watchdog: watchdog {
@@ -25,4 +29,6 @@ Example:
 		gpios = <&gpio3 9 GPIO_ACTIVE_LOW>;
 		hw_algo = "toggle";
 		hw_margin_ms = <1600>;
+		clock-names = "delay";
+		clocks = <&rtc 1>;
 	};
-- 
2.29.2

