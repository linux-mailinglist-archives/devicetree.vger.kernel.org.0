Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0919472A04
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 11:29:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240543AbhLMK3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 05:29:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344674AbhLMK1m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 05:27:42 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62298C01DF18
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 02:01:30 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id a23so9515081pgm.4
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 02:01:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4hdx+Te/XmI5bc5mOwwxL9XCAMb6wASrIlXfoeCkFC0=;
        b=tKo5kDitRYsQ9wT0r75YpK8hvACtSQNRe2o30RHwkvO9vO8QROiNmEr22zWyKATcAh
         0bulZr8hHseprX1NIYkD1PJAPlpn3jNnH559H/RMydutPhZRS9MpwNK+dEOdqrbX2sSJ
         PZl/EPdjnNdlI/SWAYxtcj+VcsqQ00LZJycAU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4hdx+Te/XmI5bc5mOwwxL9XCAMb6wASrIlXfoeCkFC0=;
        b=j5PLzPKGnd82y3G/sq89xyZdVBV2vlbnXI9ga9YAkv71g32dk+V/5Uf566ZB/JGd29
         edPJ1e3ie6IjgozjoWZTj9SJKtmb4U4cajQtZX7CHiy7e1IpPJ7ehmSHaiITh7wInzOU
         At2s9Uan9pcTXg70jwJRnGxy7DRGw9P8JHNwhVFJ8I7fpzHUNHU8gr2+m6fZ1Bjjtgcn
         QgCv/Alkatyg1WKyt3JkBu1pgSvnSuW+YNnulFX98EC890GdcemWatOEeIj++I1UTvG2
         cHQ4Z2VRiu1u4wb40SmHUF9JOP+p1/fVTJw/IfIyen98gXIOhXtN5OpZMVtgE8vGqmQw
         UkEg==
X-Gm-Message-State: AOAM532A5T95E14rSBWXbhii0MPvRfHPVAPc0Jb/HI648c+++PBMRCQy
        lcShL4mlDstrXflOT2PWpoWq4HWYq2VB3w==
X-Google-Smtp-Source: ABdhPJz4aaQSlp53NaGTwwHO3lHorMRx5ig3YVcXq6xQBQIk0YQ5Gr/bot+3JVE8Z5KQMJykxKsQhw==
X-Received: by 2002:a05:6a00:2444:b0:4a3:239f:d58a with SMTP id d4-20020a056a00244400b004a3239fd58amr31986868pfj.85.1639389689690;
        Mon, 13 Dec 2021 02:01:29 -0800 (PST)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id d185sm9953767pgc.58.2021.12.13.02.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 02:01:29 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for Miyoo
Date:   Mon, 13 Dec 2021 19:01:10 +0900
Message-Id: <20211213100112.1791192-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213100112.1791192-1-daniel@0x0f.com>
References: <20211213100112.1791192-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a prefix for "miyoo". The only details I can find about
the company is their aliexpress store "miyoo global store":
https://www.aliexpress.com/store/912663639

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 66d6432fd781..9f76061dcad7 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -757,6 +757,8 @@ patternProperties:
     description: MiraMEMS Sensing Technology Co., Ltd.
   "^mitsubishi,.*":
     description: Mitsubishi Electric Corporation
+  "^miyoo,.*:
+    description: Miyoo
   "^mntre,.*":
     description: MNT Research GmbH
   "^modtronix,.*":
-- 
2.34.1

