Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BAEE340120
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 09:44:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbhCRInd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 04:43:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbhCRInQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 04:43:16 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A84DBC06175F
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 01:43:15 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a1so6522853ljp.2
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 01:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=di/9uBz6WutdHLUXatgCC9P/S9U8Sn3j/0uRujoEw/4=;
        b=qj5SGbdpxdoS/QhGVUtclu8DpnTeBt6lVD0wsx/1fqf3nu0YlD25vPCyLfRXjJiC9b
         4aIPYrS8WF9pO8TSTPbWJTFHbvwZB0xrYw+CK259BciCgawIAsIYBBd2JU4E9hDZjIPM
         pJNgk75bdHt9b2aVdZB435L/mz8hPnMbKa93lyZImxTm/XrQL6bSinOZep4Ce+SnNC9x
         Xi9XdcMlSfdlXzT2DkPHXwXBTPtWROoSRUZ/evzBJr8C9WNYXehcYJDhH6QNG4kvwvSi
         brQpjjokg1/cRKwzCE1aCnV9L6kWN5cmt/1D14ef/w5tofIDuClQAWEnTCj5YahNM79x
         NF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=di/9uBz6WutdHLUXatgCC9P/S9U8Sn3j/0uRujoEw/4=;
        b=bZDcU9FtC2YTRkdXdzDhUM/m74170F2qNqpt5Qr1XNZzNsUPeh+9r9j6IkSyH2/qBA
         mzHzsdQyvoO3L/N8t9FLu0ep14ldFdLE246GGdP1obB8RE1pgUPyxvKg23l6lnl1AONt
         q1PG9r4knCFpkZb/jGRw0siXKe7aRZ1xpEtCMyXff8pBdh/9KZf9UYTn9tGYTJIiwTuK
         K9qeRwisCE1TlLFeW+z2HNI1UoYLkxggLCm7qAA8CyEHOGtu2ngVEnC2ZIPhQFtc4ufc
         SMOxbLB0fKVW0LNunHIcdr/WBmAcOMJjmf6UCJqGskGs/yZwg1OOtxEwmV5vXeR8OEmd
         rKUw==
X-Gm-Message-State: AOAM531tk6u9tnQGuxkwSiA83CflW3c9izIGTS2B4xUYNAIMOGw7aCJi
        xR/1aMzWaVEyhP31GW9papeGKA==
X-Google-Smtp-Source: ABdhPJx9kOTXcNXlezR4YjpjAD+a5IHKgfIIjKmxLmNN5lip7qfqrwcW9TlnGmosLVBDCC1PGQtAQA==
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr4600388ljm.328.1616056994099;
        Thu, 18 Mar 2021 01:43:14 -0700 (PDT)
Received: from localhost.localdomain (c-d7cb225c.014-348-6c756e10.bbcust.telenor.se. [92.34.203.215])
        by smtp.gmail.com with ESMTPSA id u11sm141982lfm.78.2021.03.18.01.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 01:43:13 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>
Cc:     linux-bluetooth@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] Bluetooth: btbcm: Add BCM4334 DT binding
Date:   Thu, 18 Mar 2021 09:43:08 +0100
Message-Id: <20210318084309.401951-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BCM4334 was missing from the binding.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml b/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml
index bdd6ca617e23..fbdc2083bec4 100644
--- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml
@@ -18,6 +18,7 @@ properties:
       - brcm,bcm20702a1
       - brcm,bcm4329-bt
       - brcm,bcm4330-bt
+      - brcm,bcm4334-bt
       - brcm,bcm43438-bt
       - brcm,bcm4345c5
       - brcm,bcm43540-bt
-- 
2.29.2

