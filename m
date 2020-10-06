Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97AF628496E
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 11:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725981AbgJFJfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 05:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbgJFJfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 05:35:46 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76557C061755
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 02:35:46 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id c6so941529plr.9
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 02:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eA4h9JZo7r34EDkCVqDKqhGokDRWxdrNFzDIcJyr8Mg=;
        b=UFgdJvpaeMjdaN9SnwCqpa58OxKJuAR4Mjuv5L+V/oWOTTFCHgArONGubgpm4cbDqX
         a9/PjwBrEXSgXDE87cjmnTWKXtV2KChrngwFPsjxCOmJNbcoGoS8RctJF9q+MSUELn4Q
         R/ASTg77U2AZlk6QWGeIZfKplADrhi1uZ+6t9rut57ZtSKeRhtaxjwTHX9RnR1AbeV+9
         ylH8xw1WrJnIPbMsWF//yoiesexUgbw7WvAEU6lss2X9s4KLuZZLQRUCB1dgpTV2OMfa
         jDp2KrYdiq4rCWTPn7fWQxkUjvJLRj9/af8Bol+T8opOijyWQUuF5aOqn3175xIkULKj
         S0Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eA4h9JZo7r34EDkCVqDKqhGokDRWxdrNFzDIcJyr8Mg=;
        b=NKHfUquuHhz/HB9SN247RFnX9jId0C1CfAOa6tVqVlreMBLzoGfjwnfJ7CqWAbtw6A
         QRh/o6e1JddqpCg51SHkR0saj6KFGItNG5l2WdRXCruCILvJy/iolZdQf7++U21rEAUL
         8wGUdjc/nvmRR0+6N5+w3YWd8G3qdIBNLwFL/Rq3kvH+DPS2NMt2pAmtFQb5A3FZ/5ji
         qF5W/1vqyTqunuoSO2kkqwOnTLoXmQc8iJUYJ23hs1ElBBAKycgBX6bw0hJV9WgupP/t
         YuFFsARG/ouy25XzCEmNHn0k55pYkIwwiRCeaqgl8U5nIt+N+7fzeGtd5IZ7Z7oOWsBX
         j7Og==
X-Gm-Message-State: AOAM533UmY45jbZUoyAEPZKEqQLJwU4Yxludq2B+wSp4d6XMAY8Jc+HA
        NRswtKcJTfvPmWBz6sN7xBz36s9fQ97Onw==
X-Google-Smtp-Source: ABdhPJx07iwrEvht2LXfLFF6fb5ErvrNKINwdW6IuExMZ+UkoILb5URCx5q8WXU1PewRUeXrLmjLBg==
X-Received: by 2002:a17:90a:e015:: with SMTP id u21mr3410742pjy.33.1601976945786;
        Tue, 06 Oct 2020 02:35:45 -0700 (PDT)
Received: from marlonpc-debian (pa49-185-8-24.pa.vic.optusnet.com.au. [49.185.8.24])
        by smtp.gmail.com with ESMTPSA id mt2sm2190601pjb.17.2020.10.06.02.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 02:35:45 -0700 (PDT)
Date:   Tue, 6 Oct 2020 20:35:41 +1100
From:   Marlon Rac Cambasis <marlonrc08@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     trivial@kernel.org
Subject: [PATCH] Docs: Fixing Spelling errors in
 Documentation/devicetree/bindings/
Message-ID: <20201006093541.GA10261@marlonpc-debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixing three spelling errors within Documentation/devicetree/bindings.
"specfied" replaced with "specified" in all three files modified. This
should hopefully reduce any confusion that a reader might have.

Signed-off-by: Marlon Rac Cambasis <marlonrc08@gmail.com>
---
 Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt  | 2 +-
 Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt | 2 +-
 Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
index 70659c917bdc..372f473e80c4 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
@@ -75,7 +75,7 @@ Required Properties:
   The child node should contain a list of pin(s) on which a particular pin
   function selection or pin configuration (or both) have to applied. This
   list of pins is specified using the property name "samsung,pins". There
-  should be atleast one pin specfied for this property and there is no upper
+  should be atleast one pin specified for this property and there is no upper
   limit on the count of pins that can be specified. The pins are specified
   using pin names which are derived from the hardware manual of the SoC. As
   an example, the pins in GPA0 bank of the pin controller can be represented
diff --git a/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt b/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt
index 6e802703af60..17b7a6a43a29 100644
--- a/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt
+++ b/Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt
@@ -9,7 +9,7 @@ Optional property:
 - nuvoton,sw-reset-number - Contains the software reset number to restart the SoC.
   NPCM7xx contain four software reset that represent numbers 1 to 4.
 
-  If 'nuvoton,sw-reset-number' is not specfied software reset is disabled.
+  If 'nuvoton,sw-reset-number' is not specified software reset is disabled.
 
 Example:
 	rstc: rstc@f0801000 {
diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
index d78d4a8fb868..a8197632d6d2 100644
--- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
@@ -20,7 +20,7 @@ Optional properties:
    This is useful in situations where another watchdog engine on chip is
    to perform the reset.
 
-   If 'aspeed,reset-type=' is not specfied the default is to enable system
+   If 'aspeed,reset-type=' is not specified the default is to enable system
    reset.
 
    Reset types:
-- 
2.20.1

