Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3A21410FE8
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 09:18:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234734AbhITHT0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 03:19:26 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49422
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234682AbhITHT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 03:19:26 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EF8473FE02
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632122278;
        bh=K975uWTYLGkLbkETM9T3s7Y45GbdozAN4S3IGUhBhMo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=BbbSf2IYQkzLy8pUdFju1wufZSgPWXMAomvadMGdNKyBBalbNIze4cHXOBvWrhknl
         obcC3j4W6gpe8cvCaZ/5iqdoi7YWyjA5CpjLzs8TCr5DYVwVp6iPC5om1Z1XmJ+Fxj
         tRZA2WBxJIQKDxdEpc8gX87DwGobbQTG6Zl14qJ/KYenVQ5o+o9PYzxklQCRkvVu9s
         2hT27PIpwMdf4jiGqbsu/8HM26pVgvotkiXHvcU8n5ty/JfvrbhG5Yf7NTim+y+Buf
         zTH+kHxefhvnCg4YlmLMh5xn/a3aTPbWbgyLxPVtdEy17dSExE96oej2ugdrLnpXsl
         hruUlW7AYCL3w==
Received: by mail-wr1-f72.google.com with SMTP id q14-20020a5d574e000000b00157b0978ddeso5460476wrw.5
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 00:17:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K975uWTYLGkLbkETM9T3s7Y45GbdozAN4S3IGUhBhMo=;
        b=U14f/n2TDVj9VNOGSyPWlXtcN5gy7+4lWTaI85IPs8Ccf2J0f2faX1m3TVjdCYuewv
         +H8/BfbiF8//8nwBtIMVZ+JtnRanaXGELZLeNcNxdkLuqdS+cSt4e8/zYkMhMJQEEacf
         ZlIhHFnnKLhektGL5EaU8TWx6f0yVpWT1puzWYgnE5aHz5bTbKUwBFP5h6gHwHCMZIHn
         VTglIk3JQ/VHZe9xYeQ+9pDcxzmK19T0n4Wd4oHX+u+nU2dLhL/2aBjsDtAE6bukqHHJ
         vmWEy+e7b/KHJMryM+EA9jS69rKNYdaYTQ7CU3t9Tcez5QpeRb9xa+HX4W7lQBzw3p6l
         7HGg==
X-Gm-Message-State: AOAM531WMF5v+zfq9Ptn16Iqoi4Ga8D8QKvapWAdV+xkTJ0C4nkYGD16
        Gtq8UdBm74fDoilXorkzupHWFyPpN8uXh/2ihSiA04ouE+xs7OnVVDyBvqHdunF5qwLsvPvIU4l
        Fv0zRadumIIyIP4R3u+6oQEarGFopF+HnGvkoixE=
X-Received: by 2002:a5d:668c:: with SMTP id l12mr25958810wru.436.1632122278652;
        Mon, 20 Sep 2021 00:17:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzW4RCYsQAwDVi//vMFGQ0H5hMTUOpmow8nulLe+L4fg0CAxTaF+uxW5s557hhH8OPbHt+Sdw==
X-Received: by 2002:a5d:668c:: with SMTP id l12mr25958797wru.436.1632122278512;
        Mon, 20 Sep 2021 00:17:58 -0700 (PDT)
Received: from kozik-lap.lan (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id a202sm6990798wmd.15.2021.09.20.00.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 00:17:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH v2 1/3] devfreq: exynos-ppmu: use node names with hyphens
Date:   Mon, 20 Sep 2021 09:17:51 +0200
Message-Id: <20210920071753.38560-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210920071540.38337-1-krzysztof.kozlowski@canonical.com>
References: <20210920071540.38337-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Devicetree naming convention requires device node names to use hyphens
instead of underscore, so Exynos5422 devfreq event name
"ppmu-event3-dmc0_0" should be "ppmu-event3-dmc0-0".  Newly introduced
dtschema enforces this, however the driver still expects old name with
an underscore.

Add new events for Exynos5422 while still accepting old name for
backwards compatibility.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/devfreq/event/exynos-ppmu.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
index 17ed980d9099..541bd13ab61d 100644
--- a/drivers/devfreq/event/exynos-ppmu.c
+++ b/drivers/devfreq/event/exynos-ppmu.c
@@ -94,11 +94,16 @@ static struct __exynos_ppmu_events {
 	PPMU_EVENT(d1-general),
 	PPMU_EVENT(d1-rt),
 
-	/* For Exynos5422 SoC */
+	/* For Exynos5422 SoC, deprecated (backwards compatible) */
 	PPMU_EVENT(dmc0_0),
 	PPMU_EVENT(dmc0_1),
 	PPMU_EVENT(dmc1_0),
 	PPMU_EVENT(dmc1_1),
+	/* For Exynos5422 SoC */
+	PPMU_EVENT(dmc0-0),
+	PPMU_EVENT(dmc0-1),
+	PPMU_EVENT(dmc1-0),
+	PPMU_EVENT(dmc1-1),
 };
 
 static int __exynos_ppmu_find_ppmu_id(const char *edev_name)
-- 
2.30.2

