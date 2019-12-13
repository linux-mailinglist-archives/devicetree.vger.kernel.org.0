Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F355F11E62D
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 16:07:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727482AbfLMPGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 10:06:39 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:46320 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727674AbfLMPG1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 10:06:27 -0500
Received: by mail-wr1-f68.google.com with SMTP id z7so6942124wrl.13
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2019 07:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ju2DWoiSq3sCuDuOb3+XYRdjorlT9EWL8zOGsU8XDDE=;
        b=g1iXLIo/06Kgq3WDGPDVgVT+dPEQkkBmZcNL8L6XydyHZ7GfAdqmfYqPndZeAvGQGt
         /t6PsCE9lUZVqouc69Bnp6C5ai60/+NnmgliBf3XyLWXTRgZ5DGPFbx0Kpy1WlW/ntvD
         BWkbjcwC0rVhyhVfL1QgJMImUFQw1mBaVPont9fDoxfopk5qWAgvz1erPZoP1sV7qQJB
         DCJF2MbO7JhOVmzxOnMlFvMVAXh2aev5pH5HvQlzb0CQ2a16xRAHTFzculCzFU/ybRf7
         QUgSpalpMqHDmxsrs4B6W+I3zV2d0brp2nfRvZzQZdUuBGkZcZ84P6RXej9pWfUibaGa
         m6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ju2DWoiSq3sCuDuOb3+XYRdjorlT9EWL8zOGsU8XDDE=;
        b=FMR01++bl64gMYfRFYvO/OYoF5C2d9hSrVYU9rVtQFETLtKALeDr4HadQWP5CaO5ak
         PnoeActn9OqFrlIEll1ZGMcAKC5qM14k1le143f19L9n0SSaKEjXoeJ57U3oXk+kCRnR
         9gQ1zAMoIqs5wMYQYD2wDyOiKNvviEMtIGiUrbVoQwnyC6jinEEJeQ+Lv2VR59BjWFIR
         zzY+2XtDui+KyTqnDN+cZU6SB6tkUY97dRUZ60SqpXQvvXnYN52OaXUpO8LdQx5wlzSG
         OIiz0jYzL17O0DjeeXgEA50eU3qhTpPiwT9p5w2DZY+Auy/a5xJewjCp5YBFuAvfptSw
         QTTg==
X-Gm-Message-State: APjAAAUOazw/61sXXdYXGW3E3sTwv8A1glZh5AOIr9RTPC+UzLY+lKIc
        pdoCKnpkLnTpXfmw+/iV2aLgGQ==
X-Google-Smtp-Source: APXvYqwzvmODMxjLHMVJJ3sYjesIygUUveBwEjPG8EIcf23ZpBReBW0v3BiPhCwaQpNzmlNSkOMTwQ==
X-Received: by 2002:a5d:4752:: with SMTP id o18mr12906181wrs.330.1576249585032;
        Fri, 13 Dec 2019 07:06:25 -0800 (PST)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
        by smtp.gmail.com with ESMTPSA id x16sm10449403wmk.35.2019.12.13.07.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2019 07:06:24 -0800 (PST)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     marcel@holtmann.org, johan.hedberg@gmail.com,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org
Cc:     netdev@vger.kernel.org, nsaenzjulienne@suse.de,
        linux-kernel@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH v5 1/2] dt-bindings: net: bluetooth: add interrupts properties
Date:   Fri, 13 Dec 2019 16:06:21 +0100
Message-Id: <20191213150622.14162-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191213150622.14162-1-glaroque@baylibre.com>
References: <20191213150622.14162-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

add interrupts and interrupt-names as optional properties
to support host-wakeup by interrupt properties instead of
host-wakeup-gpios.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 Documentation/devicetree/bindings/net/broadcom-bluetooth.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
index b5eadee4a9a7..95912d979239 100644
--- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
+++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.txt
@@ -36,7 +36,9 @@ Optional properties:
     - pcm-frame-type: short, long
     - pcm-sync-mode: slave, master
     - pcm-clock-mode: slave, master
-
+ - interrupts: must be one, used to wakeup the host processor if
+   gpiod_to_irq function not supported
+ - interrupt-names: must be "host-wakeup"
 
 Example:
 
-- 
2.17.1

