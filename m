Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2DCD3012CD
	for <lists+devicetree@lfdr.de>; Sat, 23 Jan 2021 04:48:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726807AbhAWDq0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 22:46:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726808AbhAWDqO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 22:46:14 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26DA9C061225
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 19:44:41 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id kx7so5023957pjb.2
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 19:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qzVpWEoynH6taGK1dmEKcfhSuX1O4pYnplDljz5JhnI=;
        b=ZDnQTJDKNyO1AQ1cRjQ8PqkniCuIk/RpUwCJ6AHBruosIDFTH0frYO+JZrs4uL9C6S
         HkMKzgBAA92GE1iFaM7x6HOWIzqr3cb9Qe2kLqnc4QzX5aKrrSZpUhaaNMSHRl3I9x8Q
         6A5o05k28QJYoGYkL4msES1sKDXAfW9YklUY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qzVpWEoynH6taGK1dmEKcfhSuX1O4pYnplDljz5JhnI=;
        b=ZAJKnf3s8LY/gI0Wa/oBh6R8iFib0fUwc1cPI7AMuhb7uMOO4xjbfDi/9rpqfjJ9S1
         JjSAeFIbU4ZxTgm1+rZa352oAaz2wT/TIIs3SU6ExFDxhNjEPhzQ5I6YNO45BB+AZqhL
         CBZMYE/GL/w7KvANB9sLPbv6DWbIlcveCEwZYQvKuMU0kRjrUVS4kvg0bVMev8V2K8pZ
         HKOtdsfg+AHqSvc9DFcSJc4ZxkYYKF8+d9IndloocS63xb3cmUg9EHmeFOsz6TpUCqGZ
         HFb811dHRWDEwZT1e7w9SSS65nmLpyqpLbpmEwtvXQqWCSXo2jVdwuNZ5DzHCVx37NTf
         g6Hw==
X-Gm-Message-State: AOAM531/wZsgKHyEnfaJUzNT6IHUHOMK35FgzzN9ixEBhUf2c6MJr0rT
        o32rsM7T8RQQ/0ZxBOOiaisliQ==
X-Google-Smtp-Source: ABdhPJzUqWEy/sG3S+FLSW0twubig1dqKx3dPmZ1Tqg20DZKNkVEy17j+dLI6Tj53lCL0uEhQ2MnwQ==
X-Received: by 2002:a17:90a:1c09:: with SMTP id s9mr9066942pjs.83.1611373480787;
        Fri, 22 Jan 2021 19:44:40 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:202:201:3e52:82ff:fe6c:83ab])
        by smtp.gmail.com with ESMTPSA id gf23sm10480343pjb.42.2021.01.22.19.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 19:44:40 -0800 (PST)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 6/6] of/device: Don't NULLify match table in of_match_device() with CONFIG_OF=n
Date:   Fri, 22 Jan 2021 19:44:28 -0800
Message-Id: <20210123034428.2841052-7-swboyd@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210123034428.2841052-1-swboyd@chromium.org>
References: <20210123034428.2841052-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This effectively reverts 1db73ae39a97 ("of/device: Nullify match table
in of_match_device() for CONFIG_OF=n") because that commit makes it more
surprising to users of this API that the arguments may never be
referenced by any code. This is because the pre-processor will replace
the argument with NULL and then the match table will be left unreferenced
by any code but the compiler optimizer doesn't know to drop it. This can
lead to compilers warning that match tables are unused, when we really
want to pass the match table to the API but have the compiler see that
it's all inlined and not used and then drop the match table while
silencing the warning. We're being too smart here and not giving the
compiler the chance to do dead code elimination.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Acked-by: Frank Rowand <frowand.list@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
---

Please ack so Rob can apply.

 include/linux/of_device.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/linux/of_device.h b/include/linux/of_device.h
index 07ca187fc5e4..937f32f6aecb 100644
--- a/include/linux/of_device.h
+++ b/include/linux/of_device.h
@@ -99,13 +99,11 @@ static inline int of_device_uevent_modalias(struct device *dev,
 
 static inline void of_device_node_put(struct device *dev) { }
 
-static inline const struct of_device_id *__of_match_device(
+static inline const struct of_device_id *of_match_device(
 		const struct of_device_id *matches, const struct device *dev)
 {
 	return NULL;
 }
-#define of_match_device(matches, dev)	\
-	__of_match_device(of_match_ptr(matches), (dev))
 
 static inline struct device_node *of_cpu_device_node_get(int cpu)
 {
-- 
https://chromeos.dev

