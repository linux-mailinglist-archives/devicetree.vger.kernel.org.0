Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E2924787CC
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 10:35:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231778AbhLQJfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 04:35:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232957AbhLQJff (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 04:35:35 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A05B1C06173E
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 01:35:35 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id n16so623877plc.2
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 01:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tRXGW/amIFoMeO9Hmp2aPYcTAm/VwGo6IbA1+ruwk4s=;
        b=ZoBjskmxyV3ORj3CJZy9HrkO54Nw9+cIJAbXSGpBztVCjtYp3SG0dXX4m8Btt1xHbf
         Fzr+OzhfAyqo3aY58rZo8yRELG1/TAiEVSrAN8JF/WMJ2bQrAy5Qw+GE8MXTpsXxtk3z
         r5SuY7Rj0mh5gbxgZfMPhhTWA2opo6mmth8cw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tRXGW/amIFoMeO9Hmp2aPYcTAm/VwGo6IbA1+ruwk4s=;
        b=wjBZ1VNN2Lci67EavqFHsCIjQKX7ddWqOZLxGhHEjvGTRbX0KbzJPsiIFytJUF3T+O
         1+DGUFbb5l66CbdZgvnNKgHM4Ww7DPWHsIHDfwefUp4Imzp1PRTWUkGLQW8/43prgFgJ
         OwzPW+rBQAvM3QHV1/JmApQPpHdPBv4rSddbh/ezqMavFdhk9a7zqLMyIF0xKYidmseB
         kabGhP9CIbYUkAI4OOKonLGV2kq47VUKMVAtshNGdFb7voqRdm4ixy78E1BquZBzMoVY
         AJfJlYPAvroxv+ZSG7Gr7lfMUqeImh84bjn2fmB+537czBzHPAK7q2tG/Aq+Q8F/0XQg
         9QYQ==
X-Gm-Message-State: AOAM533YCePzQYXpDC7hxIqyQbBXLM24cWVwj+V6DiFrYqCda/K+OMl9
        8mrQ5ZVXd4XnnJaqU+ZEDJbqxS17AlJDyA==
X-Google-Smtp-Source: ABdhPJx4exFmZj/8lFkaKx4YXK6ECrpm8b2ZS0J1c2OmTDwEEQjHd9p81sRYpIkDyoiWmrgXzy1VTQ==
X-Received: by 2002:a17:902:9a43:b0:148:9d8b:bead with SMTP id x3-20020a1709029a4300b001489d8bbeadmr2188693plv.76.1639733735053;
        Fri, 17 Dec 2021 01:35:35 -0800 (PST)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id o9sm7650143pgs.65.2021.12.17.01.35.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 01:35:34 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, romain.perier@gmail.com, livelwh@outlook.com
Cc:     linux-kernel@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 2/3] dt-bindings: arm: mstar: Add compatible for 100ask DongShanPiOne
Date:   Fri, 17 Dec 2021 18:35:09 +0900
Message-Id: <20211217093510.3674590-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217093510.3674590-1-daniel@0x0f.com>
References: <20211217093510.3674590-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DongShanPiOne is a SigmaStar SSD202D based module.
Add a compatible for it to the list of infinity2m boards.

Link: http://linux-chenxing.org/infinity2/dongshanpione/
Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/arm/mstar/mstar.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
index a316eef1b728..371267b63a88 100644
--- a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
+++ b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
@@ -23,6 +23,7 @@ properties:
       - description: infinity2m boards
         items:
           - enum:
+              - 100ask,dongshanpione # 100ask DongShanPiOne
               - honestar,ssd201htv2 # Honestar SSD201_HT_V2 devkit
               - m5stack,unitv2 # M5Stack UnitV2
           - const: mstar,infinity2m
-- 
2.34.1

