Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54EA6457A5F
	for <lists+devicetree@lfdr.de>; Sat, 20 Nov 2021 02:16:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234459AbhKTBTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 20:19:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234335AbhKTBTb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 20:19:31 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83CA1C061574
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 17:16:26 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id f18so51143846lfv.6
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 17:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CfNL1m1CLPfpevL/yilfuuoESUnF/c6kj518C8lay0o=;
        b=ckzmd2K6lpwIL+o1cbtwd+XLDq007guvpKJFLuT/e/TncNkmS2j9stWk4gf8+ryxtz
         zw8aW03/DoGXCG885ITx4EbPabf+1YO2jE9MFu7I3cSnqHximbyrbB0kz/VDU3diVFAH
         i3dVm/fY+IO/CncSQiGs5Z5eillPziSsS3GFKjCXmK+5uW+CNyR/9OxJC9+lPsV8Ega1
         l6RCxmW8RsTTW8mlNJgL4IxXMRIEkvfw7XrJ6bW4MCYj2pZfP1X79iRxTDpw6egju5yr
         PfusR1JXrnq++qfnEnyb/CRnEloaW8eiZPGIVfj1caREZuaIj5TWb+/f3MAFlX2q4A8J
         2UKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CfNL1m1CLPfpevL/yilfuuoESUnF/c6kj518C8lay0o=;
        b=64Hx6M19mw8MBehfKyPMthsMTOV8/texhsgf53Ezfp3S0FCTroREhc1gLc2hiG0rod
         1iggsrxZhkVrZAFdDXKVb+U7l363kPeERH3aZIQJEl/c15eGwaCkKmtMS/7DwormE8d/
         Bp/pN651CGadSziJIiQzFxRfqPgjbRywJey5uCJT2gh0F6EOBueeEmDpMQLuv0NmCOSM
         BKxL2d41sG8eEnCBy2yrLRVJ/kd9mmLL6bu7sSdEbvathqflx/eMlZFYiY3MtXoL8qEL
         pW9BWnMSTgFPeLeymgMCpAcG4cTEbzB0D7pES4u6tMdRIlT5ZUTRbSqUvHnJyKJO/aYj
         TX2g==
X-Gm-Message-State: AOAM532jMZ3mQ1Q+r1MjKV75d2JxKQOaGUG03/ClUULAQxxkVyat0StX
        DnFneSR+JLsvfeqerFgktBqZk45XEGquhw==
X-Google-Smtp-Source: ABdhPJzq2lm9mo1ugsiCxGdish0u5kuQxXZTMPX+xFE1sXE9G0HeXkUGyb8Ioe8n6Z87PmXuFo1XMQ==
X-Received: by 2002:a19:f10a:: with SMTP id p10mr36273378lfh.487.1637370984874;
        Fri, 19 Nov 2021 17:16:24 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id w36sm151392lfu.81.2021.11.19.17.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Nov 2021 17:16:24 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-serial@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: Add resets to the PL011 bindings
Date:   Sat, 20 Nov 2021 02:14:18 +0100
Message-Id: <20211120011418.2630449-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some PL011 implementations provide a reset line to the silicon
IP block, add a device tree property for this.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Probably it's easiest to apply this to the DT tree.
---
 Documentation/devicetree/bindings/serial/pl011.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/pl011.yaml b/Documentation/devicetree/bindings/serial/pl011.yaml
index 5ea00f8a283d..d8aed84abcd3 100644
--- a/Documentation/devicetree/bindings/serial/pl011.yaml
+++ b/Documentation/devicetree/bindings/serial/pl011.yaml
@@ -91,6 +91,9 @@ properties:
       3000ms.
     default: 3000
 
+  resets:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.31.1

