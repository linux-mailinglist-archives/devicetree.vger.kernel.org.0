Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E4863132262
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2020 10:30:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727689AbgAGJaP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jan 2020 04:30:15 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:34214 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727779AbgAGJaB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jan 2020 04:30:01 -0500
Received: by mail-wr1-f67.google.com with SMTP id t2so53080085wrr.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2020 01:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RhSUzitd9bqzSRucMHlRHZmPMmbVRjLi7QePW978DUg=;
        b=q3rFUrsPxKvzS9fnNPOWZxD91BiuFAhEHEFHG+dRcbp6+hXEW6+3w7EDRTZuJ3LJNp
         96TUPQZR6QmjJX9OOFgIox+mQSnztYY8TpiBAHfJjPlu+ZtBh5FYh5lLKQloX9KsZYQL
         6szNdxzqXeUNEvghT2h53EOBmGaWQ6pT/XEZ9Jtw6s+wZmmQoh183XqYpBdCQhXQSEib
         M1PV8MgPzpmFKxw8KqLmecrxYqePYAssN+y+zTfzHc0IIGPOBrIO6JQKtM+OD/U+F2JM
         ROBJHtn5AVHa7bVOHit7hHZ07zWoiT/MWdQ4o2nfOnh9NqFQRQYeV56Rfk9QnWzk7DWS
         eo5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RhSUzitd9bqzSRucMHlRHZmPMmbVRjLi7QePW978DUg=;
        b=ReCNpgFTa5UdnEVvGZPNDLf9XnxB5uX4F7g0vcOz8Xa2itaDSmAKk062ZltIfu6z9v
         Ytu7Na4uXftNl1YBiILPX/tz8wufxEmRdkU/HCG2vcPa1Vmfqk4J0Ry+19/HVJHc/Tgh
         dNCM3948reAbQ/j2A9FR2wZ/sPUI+q1CfIJhRXCfUHGA9jrbxd39g/cH3XTxmbrgaIZZ
         89erfcs+dNLdRJdGC44bJQC0ZYauY/2r0O0xjLIM/xT1sUDvZEZ8TCtW+179cZV9zfCn
         RxjDdm+wwOXY8QGJLUySdHjXNf9s6edgF9q4VmU5kTRW2umiPkd0IitKUYrfgSIzf1zE
         8hcQ==
X-Gm-Message-State: APjAAAVG+jnpouWrU2xbgf95QYZSSHwP34QEuMN2O8G+ZqhsxMspjUWH
        GedsMFrluM0RwtjjhsQxeboHOg==
X-Google-Smtp-Source: APXvYqwu0MkMjm8FlO7vFLCAxOjtj6KrF4+fPatyYrpwmul+GvzYn2YLQwfY6aHpplsZtGXjPCZJyg==
X-Received: by 2002:a5d:4b45:: with SMTP id w5mr113314127wrs.224.1578389399042;
        Tue, 07 Jan 2020 01:29:59 -0800 (PST)
Received: from localhost.localdomain (i16-les01-ntr-213-44-229-207.sfr.lns.abo.bbox.fr. [213.44.229.207])
        by smtp.googlemail.com with ESMTPSA id x14sm25959969wmj.42.2020.01.07.01.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 01:29:58 -0800 (PST)
From:   Khouloud Touil <ktouil@baylibre.com>
To:     bgolaszewski@baylibre.com, robh+dt@kernel.org,
        mark.rutland@arm.com, srinivas.kandagatla@linaro.org,
        baylibre-upstreaming@groups.io
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-i2c@vger.kernel.org, linus.walleij@linaro.org,
        Khouloud Touil <ktouil@baylibre.com>
Subject: [PATCH v4 3/5] dt-bindings: at24: make wp-gpios a reference to the property defined by nvmem
Date:   Tue,  7 Jan 2020 10:29:20 +0100
Message-Id: <20200107092922.18408-4-ktouil@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200107092922.18408-1-ktouil@baylibre.com>
References: <20200107092922.18408-1-ktouil@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

NVMEM framework is an interface for the at24 EEPROMs as well as for
other drivers, instead of passing the wp-gpios over the different
drivers each time, it would be better to pass it over the NVMEM
subsystem once and for all.

Making wp-gpios a reference to the property defined by nvmem.

Signed-off-by: Khouloud Touil <ktouil@baylibre.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index e8778560d966..767959941399 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -145,10 +145,7 @@ properties:
       over reads to the next slave address. Please consult the manual of
       your device.
 
-  wp-gpios:
-    description:
-      GPIO to which the write-protect pin of the chip is connected.
-    maxItems: 1
+  wp-gpios: true
 
   address-width:
     allOf:
-- 
2.17.1

