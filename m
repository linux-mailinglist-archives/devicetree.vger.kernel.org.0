Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 513EE2CA424
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:47:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729798AbgLANoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:44:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727702AbgLANoa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:44:30 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15E43C061A47
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:43:44 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id o4so1238228pgj.0
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1Dt1UKiHvns/wxXXTVZSOMf0MQOF2uaj5QHuWAWvMyQ=;
        b=s+sQYh9u4PNPxijEivUJmC+SmfbhXD8FTmrOqhu9dToUrWo5DfciQQJdy4IbfxcQ8O
         AvhBgVMH/tidGkmkSpJtKl6wamNJiCATDJRvLEaPd6mdat4f0wIX9IBlLAlYf+iT6TbR
         9+uWSA6ucNTLiF3WfGTsnnNF3hWW8jRU5yLmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1Dt1UKiHvns/wxXXTVZSOMf0MQOF2uaj5QHuWAWvMyQ=;
        b=VxOu1h/0odNgULZ4MOKn84AN0UIEFWoEUxOqODKV+2CtmMct5YuNjVqlyh46jrsCUt
         /9D/kktTSaDPyNgiGQ24y3BYPA0uYFnhIOkX8AdBV0Zhjmkg6DQiel7FqocX8r1a6UsT
         cLX9Lz2RW+eyWKoaHNqyJZU0eK7XlaeAw8oQUk40UhrDKDDts6Z3hdoTR0P79iU+bqhB
         0wyYcPoqbxlWq6xDRYoGrql4D4hs7b5mHMRL/bts1L45ptAGleJmjdSAgvspnnoEzrlc
         oLkOvZFXpqSjnAhcIGIJZ9Ejy65scHSRzBmjLJPj21XoB3tTszbaUFNYywXdQ7LbG/Zu
         MLTg==
X-Gm-Message-State: AOAM531JHttKbsnyD12thsAaG6Y5EfyNuo+tAW8nWp6GwaBHpFMTbCH1
        wzKd38NFnUEIP2pTeEP3cMiyYkvBg927kQ==
X-Google-Smtp-Source: ABdhPJz6Fbr0orPaVYv9paiSOtvGm5Y86cBYdh70h4VRs2mpXlZ7xEcjl96/rs7H5GIcwZsfby+XCQ==
X-Received: by 2002:a65:620c:: with SMTP id d12mr706840pgv.220.1606830223429;
        Tue, 01 Dec 2020 05:43:43 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id g14sm2839248pji.32.2020.12.01.05.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 05:43:42 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        robh@kernel.org, w@1wt.eu, daniel@0x0f.com
Subject: [PATCH v2 02/10] dt-bindings: vendor-prefixes: Add honestar vendor prefix
Date:   Tue,  1 Dec 2020 22:43:22 +0900
Message-Id: <20201201134330.3037007-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201134330.3037007-1-daniel@0x0f.com>
References: <20201201134330.3037007-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add prefix for Honestar Technologies Co., Ltd.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2735be1a8470..a6cf2cef6f89 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -451,6 +451,8 @@ patternProperties:
     description: Holt Integrated Circuits, Inc.
   "^honeywell,.*":
     description: Honeywell
+  "^honestar,.*":
+    description: Honestar Technologies Co., Ltd.
   "^hoperun,.*":
     description: Jiangsu HopeRun Software Co., Ltd.
   "^hp,.*":
-- 
2.29.2

