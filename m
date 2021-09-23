Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A084741588A
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 08:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239520AbhIWG5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 02:57:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239479AbhIWG5S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 02:57:18 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2078DC0613C1
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:55:47 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id k17so4855016pff.8
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KMdCHA5e/4Tgus56dgPDaFFyXU7i8m/R/NCEHCrJVKw=;
        b=Cc0+nswv7bSuFIfFow9ov2u5aDDh9Fr+y2+Pq5+z7oyrlzCkKarIPH63VpSzvdtjnG
         R2eRHdo88PzkCqjnd4Y9mvc/bopVjjy3ejKzsleHMQ/GcVDwK9p2Z0CNBsHqPOgvN+hB
         B49JKJEpat0jdGxGKQNLDkeK9dX7Xr+3HqV2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KMdCHA5e/4Tgus56dgPDaFFyXU7i8m/R/NCEHCrJVKw=;
        b=IUZvekYI/80bYTQS/X2J+n9FLWVRmLNC4KHRDMSAMj2/6Uk2avJ0iKN1pUNLjCaahB
         EMdNT4/OtRW8lxg7RzK6dHGUc/43mSJ45emRQlpmasnU6N6lYtM57sVYH+6fiSLPk4Y7
         VMJzUW988H9p+2+U8l52KeBQOMcQAx9L8IjOLfOtT1SC4iPz1gnl9uAjMqz8m+WPEf8V
         ltl/2Ve/T2i8nQA5b3RNwT4vSrSOYZCJKZAUuSljaEDsS6zChCxzcVBTv8RAA/k8itz5
         XNx/4V624GE456HGcAZgrCmtW01XITLHd+oFOytuWamGRMqK3qPsVUywYZcUZkCLs/hx
         P12A==
X-Gm-Message-State: AOAM533jTtlJYV8WiVICoQxdnP6QNEo0BS9CgD0x3W0EIXhSyEx2Wer7
        vJHq8I/TIilX8+FagaqY41s/DcFvOnMybg==
X-Google-Smtp-Source: ABdhPJyPGmgR22y0B/bQvS6QxZMSDO1N5mNWbEVlZwKyFsGrSilrXYdEjMRVRGG0c4vFYU3hzuUX1g==
X-Received: by 2002:a63:d806:: with SMTP id b6mr2777380pgh.395.1632380146517;
        Wed, 22 Sep 2021 23:55:46 -0700 (PDT)
Received: from shiro.work ([2400:4162:2428:2f01:7285:c2ff:fe8e:66d7])
        by smtp.googlemail.com with ESMTPSA id e12sm1581888pgv.82.2021.09.22.23.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 23:55:46 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-leds@vger.kernel.org
Cc:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, pavel@ucw.cz,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 03/11] dt-bindings: leds: Document "activity" trigger
Date:   Thu, 23 Sep 2021 15:54:52 +0900
Message-Id: <20210923065500.2284347-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923065500.2284347-1-daniel@0x0f.com>
References: <20210923065500.2284347-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "activity" trigger can be used as the default but it's currently
undocumented so validating a devicetree that uses it causes a warning.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/leds/common.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 697102707703..8160a5073728 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -80,6 +80,8 @@ properties:
     $ref: /schemas/types.yaml#/definitions/string
 
     enum:
+        # LED will flashing will represent current CPU usage
+      - activity
         # LED will act as a back-light, controlled by the framebuffer system
       - backlight
         # LED will turn on (but for leds-gpio see "default-state" property in
-- 
2.33.0

