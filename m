Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 069B2472A07
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 11:29:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239635AbhLMK3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 05:29:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344679AbhLMK1n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 05:27:43 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88963C01DF1B
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 02:01:32 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id w33-20020a17090a6ba400b001a722a06212so12253015pjj.0
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 02:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=W860UaRrJsw2Gobo/QW4yrvE/2SVc50lvblET7Jsnp4=;
        b=qP0BshOUlN/3iiQfIWavoPtTVodrDzrlK6ANQ/PbNwQsTRx1GeRhbz/r70UkTCZVB8
         GNrTgSloKnDmLS73Ab8u6sgDWavI+OWH1MEjeZvXZ0sic+8l6P3YRq6eCGIICvCaygRS
         A/iiPG+u+si9eWSeCgA7+9kTbrWlKSCLRqJTE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=W860UaRrJsw2Gobo/QW4yrvE/2SVc50lvblET7Jsnp4=;
        b=zElZdI70FvQYPh2kXhuDEgdJNpD+vgGzh3Nw0g9MNqu9NMo7DhNrfdlKq7T1JwfCyD
         9Yj8R8puqYlnJK93qfqhimP47Zl0fd+HZrrr6/ncmO3e5RnhPPqxoZd6V2CwZzKxQ2b5
         sx7UXAP6dBLOxkJfu4ZcEH3cJzYu+VME/TmHIUTRO4srjvqou1w3ByL3Zpk42m5J/3I/
         wdOGmYFG3oYhSvdc7qy5szYGJEBsvOV3qg1z2z7fn86U5EojKaGx9MwIOn5987E9aP0O
         XKCOhSMnD0GjIyFvkcYD0+ZFEzPp9wbuO2ZhbHO/7Hk5V20lXkYGtZBL2W4Fqof/gfeb
         v2iw==
X-Gm-Message-State: AOAM533ww+z4Z0Vn3HVB/WVEC4Q3F2JlSihSII63jCpxUe+aI3YzDUCf
        hN9xHrxjnr8j5u3LhnD3rdPALK2XegI4Nw==
X-Google-Smtp-Source: ABdhPJxszvLSWm3tqZ4LbukdjNkTUOWUchH9G8Sa+++bFJf5LlAhqXkStwc6cpKh6r/pftv9Oo3DUg==
X-Received: by 2002:a17:902:8e87:b0:143:759c:6a2d with SMTP id bg7-20020a1709028e8700b00143759c6a2dmr93012133plb.59.1639389691796;
        Mon, 13 Dec 2021 02:01:31 -0800 (PST)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id d185sm9953767pgc.58.2021.12.13.02.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 02:01:31 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 2/3] dt-bindings: arm: mstar: Add compatible for Miyoo Mini
Date:   Mon, 13 Dec 2021 19:01:11 +0900
Message-Id: <20211213100112.1791192-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213100112.1791192-1-daniel@0x0f.com>
References: <20211213100112.1791192-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Miyoo Mini is a SigmaStar SSD202D based retro emulation
device.

Add a compatible for it to the list of infinity2m devices.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
Link: http://linux-chenxing.org/infinity2/miyoomini/
---
 Documentation/devicetree/bindings/arm/mstar/mstar.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
index a316eef1b728..8e1a0e99a60b 100644
--- a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
+++ b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
@@ -25,6 +25,7 @@ properties:
           - enum:
               - honestar,ssd201htv2 # Honestar SSD201_HT_V2 devkit
               - m5stack,unitv2 # M5Stack UnitV2
+              - miyoo,miyoo-mini # Miyoo Mini
           - const: mstar,infinity2m
 
       - description: infinity3 boards
-- 
2.34.1

