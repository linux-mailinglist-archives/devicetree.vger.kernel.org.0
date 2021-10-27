Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 358F543C42F
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 09:42:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240586AbhJ0Ho6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 03:44:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240579AbhJ0Ho5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Oct 2021 03:44:57 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59D77C061243
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 00:42:32 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id h193so2140034pgc.1
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 00:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nathanrossi.com; s=google;
        h=date:message-id:in-reply-to:references:from:to:cc:subject
         :content-transfer-encoding:mime-version;
        bh=ddY1h2eGYLfbs2x7Sg+P0Vwdzd/3/Mm7kKddSfpI7pQ=;
        b=jxweswx88EQ1DT2GDlWY0j2UWB2n5otSg6v2CVatqOX3mOdiaTpojzwmFuZybKQmy5
         EepJy9h+5IwGUniPo9BNtky+SCnSE8rAF/Q6+JTN64OWI+W+Gpcyfe6MtWflobIW0yNe
         Ue8zoGGh4Yh0OIasiGCA9hZGyQa0rfmNgAdeuLRRuXW6Ve9znbngSP/UybjqNH13GhMG
         d7r/ngNfVNsXLjc9SEAgwgSc0FCmGWT9aQhttLg0B8+Wpz7lWKQMISYZ6cMU2sYMAlU1
         p5WaSF0Ce7CaWrAFzwptE987o+6zQ5qW0nXtmEh0GPImU+vLmiNyuClZmpbxW17gnMGW
         AxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
         :cc:subject:content-transfer-encoding:mime-version;
        bh=ddY1h2eGYLfbs2x7Sg+P0Vwdzd/3/Mm7kKddSfpI7pQ=;
        b=jhlRjouQkd4SsG9uOZ1jiMHJHjLBQJwcmeCdDBvxxJo9BkHUZRl1cCdOY9g9SKZksv
         cKkZKZL/2b1U0SQ/bbcwnBe7a33yhhjhZ6LowvHbmPWoq6ln4kvsCSPN6wcQrKfDqxNZ
         ZxJx5JGF729ulj6FIV9cTlXaUXCysZRFjT+boVn7M+HPPBX23gVQVezHFOXI4GPTrBOo
         81cY6SG58Ulax2BIA8C7UsvKwYlARD3LoO2STcqhyFT+rhd6oj2sbORLaWUeZ90PyyEj
         80bLwbrGT7NrXj5pjoHqBRNnzkvLeqLJWuiVTZ+JBd40TrdJ5I3rUfROX4SP0kKjgx4z
         EcAA==
X-Gm-Message-State: AOAM530+RRSXM+nz5gsrfW+w/7ZVdkXmXkjFgEI5k2ml3q7SZ6lSmbRO
        uVf9WoEMH+0qf5prxLHHcLF2iHiEaQVTBfla
X-Google-Smtp-Source: ABdhPJxAJxlOUcK4LXqjoeR5Jr9lGORsfI5EfW1/8kX7JxSL02ICs1SuCB2dkq0Z6axA7BIs3ICulg==
X-Received: by 2002:a63:3d0f:: with SMTP id k15mr22720996pga.269.1635320551887;
        Wed, 27 Oct 2021 00:42:31 -0700 (PDT)
Received: from [127.0.1.1] (117-20-69-24.751445.bne.nbn.aussiebb.net. [117.20.69.24])
        by smtp.gmail.com with UTF8SMTPSA id e24sm24272826pfn.8.2021.10.27.00.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 00:42:31 -0700 (PDT)
Date:   Wed, 27 Oct 2021 07:42:12 +0000
Message-Id: <20211027074212.690611-1-nathan@nathanrossi.com>
In-Reply-To: <20211027074212.690611-0-nathan@nathanrossi.com>
References: <20211027074212.690611-0-nathan@nathanrossi.com>
From:   Nathan Rossi <nathan@nathanrossi.com>
To:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Nathan Rossi <nathan@nathanrossi.com>,
        Nathan Rossi <nathan.rossi@digi.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: hwmon: ti,ina2xx: Document ti,ina238
 compatible string
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nathan Rossi <nathan.rossi@digi.com>

Document the compatible string for the Texas Instruments INA238, this
device is a variant of the existing INA2xx devices and has the same
device tree bindings (shunt resistor).

Signed-off-by: Nathan Rossi <nathan.rossi@digi.com>
---
 Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
index 6f0443322a..180573f26c 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
@@ -26,6 +26,7 @@ properties:
       - ti,ina226
       - ti,ina230
       - ti,ina231
+      - ti,ina238
 
   reg:
     maxItems: 1
---
2.33.0
