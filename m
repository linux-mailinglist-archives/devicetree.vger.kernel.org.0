Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D3AA28593C
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 09:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727776AbgJGHRP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 03:17:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726771AbgJGHRN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 03:17:13 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 456FDC061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 00:17:13 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id q123so839402pfb.0
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 00:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qxVSwk6ydPCR1nMYSIXzPwjq3kxIDCy/oMJrKvRwEjI=;
        b=XxStyq4+n4JT11rtwEdmaB88iGOmQjBtCyORiPv6XCaSCyBIeKHzjjAAEXq9RLPjwS
         SGzwoqHeQMkGN+1V5JrD6b12qvhkfdIWEAEoZnvW7yK+m0eh1FIj4g2+EkA+QGRlRROl
         MWawUI9kUEVNdMLgR7/ncPcD5wK2Yt8zSq6He/XPD03sgGuTzwNrBJiM4go9fimuaODT
         WdWfUz0yz4Y4TjMXB9MawDvvNJsJBmnHGL2GgNmyx2gV7wcKQkVtcIH2Rl8gjiphbLZM
         6N9VzZcota89Cssxg8v3eT7EtcLWai532Zn7LPHhZ4i4agtSVbta90WBMVFTxOzsQzFk
         kt6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qxVSwk6ydPCR1nMYSIXzPwjq3kxIDCy/oMJrKvRwEjI=;
        b=OHDMvxDiV91MjmdDA41/pqUDhGBNQ2OWYPANWgQWcZ638AKS2hUIurl7+1cf90RCK8
         yiRnQJePDZFhM7MLaeuv5hcSvJJwCrzmu2PgIwfTrCLjxh82ZK3uGBW6GzphEPj1A6X4
         J/tPbHOsojD9ioMhmDVMzYYjqFsq4d5FDP6rMZmHjTHL+PimfGxIn6CzqUFfuonR4JLK
         u+HlDPkSKLveM3MS+8BV8kZqanJx5G4pF0a32GkxSJTg5g8vrG3UiUgZRH5oG6os17CW
         EX218A9c8Xqp1eLRwbUAMf58y38UpqdYlXKEm2Hahv3t3bgQNVqSkFCIptWZb8z0ueUu
         lDyw==
X-Gm-Message-State: AOAM532PhlUkaPWHf3c46mqTHNq/PWG8yfI+aw6Cnk7QetrJAtnxeelt
        YwO28cCA4L4JA0uklUEb0kqSaLOmSfdTiA==
X-Google-Smtp-Source: ABdhPJxJpZLLEjQhkWDMRa8mkD4/qTYli0+FQwOeOuoHRQUdlOOX8Wx7QL6aw0/TfIwDJt6X7MtxEg==
X-Received: by 2002:a63:d117:: with SMTP id k23mr1837609pgg.176.1602055032481;
        Wed, 07 Oct 2020 00:17:12 -0700 (PDT)
Received: from marlonpc-debian (pa49-185-8-24.pa.vic.optusnet.com.au. [49.185.8.24])
        by smtp.gmail.com with ESMTPSA id q8sm1675506pfl.100.2020.10.07.00.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 00:17:12 -0700 (PDT)
Date:   Wed, 7 Oct 2020 18:17:05 +1100
From:   Marlon Rac Cambasis <marlonrc08@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     trivial@kernel.org, robh@kernel.org
Subject: [PATCH] Docs: Fixing spelling errors in
 Documentation/devicetree/bindings/
Message-ID: <20201007071705.GA11381@marlonpc-debian>
References: <20201006222956.GA2970299@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201006222956.GA2970299@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Revised patch fixing six spelling errors within
Documentation/devicetree/bindings/. "specfied" replaced with "specified"
in all three files modified. "atleast" seperated into "at least" three
times in samsung-pinctrl.txt. This should remove any confusion that a
reader might have.

Signed-off-by: Marlon Rac Cambasis <marlonrc08@gmail.com>
---
 .../devicetree/bindings/pinctrl/samsung-pinctrl.txt         | 6 +++---
 .../devicetree/bindings/reset/nuvoton,npcm-reset.txt        | 2 +-
 Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt   | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
index 70659c917bdc..7734ab6fec44 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
@@ -65,7 +65,7 @@ Required Properties:
 
 - Pin mux/config groups as child nodes: The pin mux (selecting pin function
   mode) and pin config (pull up/down, driver strength) settings are represented
-  as child nodes of the pin-controller node. There should be atleast one
+  as child nodes of the pin-controller node. There should be at least one
   child node and there is no limit on the count of these child nodes. It is
   also possible for a child node to consist of several further child nodes
   to allow grouping multiple pinctrl groups into one. The format of second
@@ -75,7 +75,7 @@ Required Properties:
   The child node should contain a list of pin(s) on which a particular pin
   function selection or pin configuration (or both) have to applied. This
   list of pins is specified using the property name "samsung,pins". There
-  should be atleast one pin specfied for this property and there is no upper
+  should be at least one pin specified for this property and there is no upper
   limit on the count of pins that can be specified. The pins are specified
   using pin names which are derived from the hardware manual of the SoC. As
   an example, the pins in GPA0 bank of the pin controller can be represented
@@ -107,7 +107,7 @@ Required Properties:
   hardware manual and these values are programmed as-is into the pin
   pull up/down and driver strength register of the pin-controller.
 
-  Note: A child should include atleast a pin function selection property or
+  Note: A child should include at least a pin function selection property or
   pin configuration property (one or more) or both.
 
   The client nodes that require a particular pin function selection and/or
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

