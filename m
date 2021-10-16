Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1EB04301F4
	for <lists+devicetree@lfdr.de>; Sat, 16 Oct 2021 12:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232450AbhJPKYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 06:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240168AbhJPKYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 06:24:45 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D05AC061764
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 03:22:37 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id d3so48106257edp.3
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 03:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k6lg1YXQcsQSaHtESENC7NuGsQBvloHafjyXCeclFK4=;
        b=cZe7t7ecRSVFyGK6rU8otT3u8PVOITqJIX4Q8vpIBzXn17/WMj8MGdaNGNZcpAhqF/
         TmlJAXSSUSkfPl5wCZNYTcXQmfh0i1Y6YPJXdz5qScCmSi9oP/KDnKSnD8S479xJ6C2x
         LosDWN4CvbEUZaYo0kufzUiQxs3Blt8WQAqAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k6lg1YXQcsQSaHtESENC7NuGsQBvloHafjyXCeclFK4=;
        b=zxMPhu8F2xOVYMlN9Vvi/d/LQZN8gaByZ9LkVHXLz5okNr28HJoDmxvP5TwAUKc4sV
         kEWFgDisnxZaEX9ZwINyAlEXzaaU4BoIeI1kjc6LvJqffzEFpunoA4ZDYxbx9/jsrCfr
         1pKwuhFh/MQI+N45X88q3RRutIwctVA7cvA77fjnJ5YTB5X9ePwLdVnU2rY+HUITuCK0
         aZ0ba+lkp/WJq10UsHctJncO7jStT588d7IezoM2arFght6o45YnmnAVc4rkG60p0DK4
         uEGbkigCgcATMWkteD/gJ+3IZ0G8HfyEUqWXyFYmUVlZFiDBnel7eSACOYyZXt0YR4ku
         5gNA==
X-Gm-Message-State: AOAM532jDfYxXtmtLFKzNSjYyUQ9jR4hbPkbN9rBT8K3u3EnWknLS6i3
        z1DthxoVUMHuk09PS2jRZlzvEA==
X-Google-Smtp-Source: ABdhPJwYr2Usdx2fRzfvE8x6T5AzkhCgdaiWSMcYlqVDwgsemSvZ7/5rzDYKZhxXYIbK96KEblxmUg==
X-Received: by 2002:a17:906:5212:: with SMTP id g18mr13775067ejm.564.1634379755998;
        Sat, 16 Oct 2021 03:22:35 -0700 (PDT)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
        by smtp.gmail.com with ESMTPSA id la1sm6117361ejc.48.2021.10.16.03.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Oct 2021 03:22:35 -0700 (PDT)
From:   Michael Trimarchi <michael@amarulasolutions.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: vendor-prefix: add Wanchanglong Electronics Technology
Date:   Sat, 16 Oct 2021 10:22:28 +0000
Message-Id: <20211016102232.202119-2-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211016102232.202119-1-michael@amarulasolutions.com>
References: <20211016102232.202119-1-michael@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wanchanglong Electronics Technology is a company to provide LCD
modules.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a867f7102c35..5c43391d8c3d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1304,6 +1304,8 @@ patternProperties:
     description: Wondermedia Technologies, Inc.
   "^wobo,.*":
     description: Wobo
+  "^wanchanglong,.*":
+    description: Wanchanglong Electronics Technology（SHENZHEN）Co.，Ltd.
   "^x-powers,.*":
     description: X-Powers
   "^xes,.*":
-- 
2.25.1

