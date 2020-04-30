Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E6811BF432
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2020 11:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726565AbgD3Jbd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Apr 2020 05:31:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726428AbgD3Jbb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Apr 2020 05:31:31 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56C89C035494
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2020 02:31:31 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x18so6009002wrq.2
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2020 02:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JROjM52upfSN5TMvhJNz/+Rqg0p9AY4cohL9qzJLlpA=;
        b=DZis8xfVlXBziBr+P9Tnhicd37q8C/hUftvt3qILB4slhpcZ6QXL5hmG8NSRr9irEN
         5EM8NUtPUX9hh08v9tOvRMmkjfY1BMNb4LBRpIS5c+SALdY6RNfN4+++QJrhJ/pJrlZu
         Uc2QOrYPvFb3YxXdNuHUcgN+rRh7ERmeVZuTBEMFRF79M19Dr/0ThJcRCDcAC+/2puRN
         g/jylJdTSAw6YOFjoWf8x7A5i5NBRz3JHdF6N8J5O3+ROWrFhttYFEYiYOW0VouCTs6a
         NKPZKxIYqRicAuhlUxd3X9DbQjW8+ptWE0Sa0w5X7QINCgPpIK/dqKoKNbCp9VPtMIfH
         i4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=JROjM52upfSN5TMvhJNz/+Rqg0p9AY4cohL9qzJLlpA=;
        b=AF/2YO27by+pbFkqTkkBZODOVp5z6gnw8CdwFquXGGNNFhE3d35ygOExXfchGzPRaA
         gpgnH+OSje9Nk6FxCkAu1hYxwI2OwXv24yjgL2+PKbvnVCHXnBy0+sjpxxlye3klb12i
         mMh6ECLjGiot6Ak3BaB99mUAzUCYggR2GefG7UdmJ8LPZfOblMzfZ3fhHOP0jMwSXdSO
         2iON4bfov39OIxpRVsBObswX3hEI0p5Mx2hxjA0u2aDVrafPj9tYYkH+BPRWMUEmStCb
         Oe9HxjbRyZuGKEEzhmoOTd/S+C9qiPoHhX4zyM8RVRL/t2NfcTfKsw4z0CcaAQpqB11Q
         pbUA==
X-Gm-Message-State: AGi0PuYY3ZdAJRI8b6iHwosqEch0egPbPOX7v8uFI16gnBMJBuf9bMIQ
        qWqW6CiwvE0WILl7AatXX6RtbA==
X-Google-Smtp-Source: APiQypKAO0dYrrr6uRoO9RhjGOngejy1JjV9L20veTAAgAQ5EvddBGSNIX28H761oemDkK86JSyD6g==
X-Received: by 2002:a5d:6584:: with SMTP id q4mr3005745wru.403.1588239090050;
        Thu, 30 Apr 2020 02:31:30 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id d133sm12851921wmc.27.2020.04.30.02.31.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 Apr 2020 02:31:29 -0700 (PDT)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com, u-boot@lists.denx.de,
        Tom Rini <trini@konsulko.com>
Cc:     Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: vendor-prefixes: Add U-Boot bootloader prefix
Date:   Thu, 30 Apr 2020 11:31:27 +0200
Message-Id: <85b8dc9e6288270bbfdf55f1c156dba160293f01.1588239081.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

List U-Boot project in vendor prefixes.

For more information take a look at:
https://en.wikipedia.org/wiki/Das_U-Boot
Source code is available here:
https://gitlab.denx.de/u-boot/u-boot

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

The patch was created based on discussion with Rob
https://lore.kernel.org/linux-devicetree/CAL_Jsq+ehJSK7sjqmKtWOVjr-QZ3LDB+ywCO85uF8WJ+cB=AAw@mail.gmail.com/
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index d3891386d671..2becc5ced47c 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1045,6 +1045,8 @@ patternProperties:
     description: Tyan Computer Corporation
   "^u-blox,.*":
     description: u-blox
+  "^u-boot,.*":
+    description: U-Boot bootloader
   "^ucrobotics,.*":
     description: uCRobotics
   "^ubnt,.*":
-- 
2.26.2

