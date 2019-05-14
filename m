Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC9AE1D0C4
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 22:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726362AbfENUlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 16:41:20 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:40544 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726338AbfENUk4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 16:40:56 -0400
Received: by mail-pg1-f195.google.com with SMTP id d31so142696pgl.7
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 13:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TNtuY5Z+cYvoyqselos2LWUUlqGVhq3oEuLlC6NFZj4=;
        b=RnM/VQ6mE0T6Xe8fFsgAvxrMJCHhOpkmsjc03a2XttI/CGU4if1QQOm7wM771FpRhO
         0XooNeg9dFS5j+n21e4CEPdUNxw/VK/0lFAwv6bG1z2ez2tVm1+QMK640BiCq4PbsinQ
         vj4kU2bBm7sydIOtsDcnzq3V25Kt/Ep4RXiTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TNtuY5Z+cYvoyqselos2LWUUlqGVhq3oEuLlC6NFZj4=;
        b=Ucewaly9Lud5Tn6LWNCKYVQ8myIcF/8/7CtB+whhRlPqJ8rPEjKWtB7zfUub6fpy87
         DmHz3BNbxsKRCkUqe+xj3Dyfq+W8qIm/vCqshCFdQq+2Bwp2FLC0yuyw+BeTFq4ftoaT
         EMxaAJBoXR9SQFdLho6Xv66JIC79y6kebZtblyy1UOVte4yEUBB86TooLFChbmKwFw8+
         AL30Y5GTNCOjwvvJsVUv3CbsPGL9ENTdJQXyEo+LUecuJZdJA3P8DxYAxtjbin/z9WHw
         /5RqeVOfKV57sPUkP1RCalyiu/LysuVxIEOeDr3nAp7mnxPmyRcn/1W4tiXs8u5MJkEt
         Hysw==
X-Gm-Message-State: APjAAAXfGw1/KH+6pDtv7exg6WI7z5wyM4CYa+I0eKIrlIgSpZrnPfOi
        VKiVryIL3F8vo5kLbUfRp/IhTA==
X-Google-Smtp-Source: APXvYqz9c4Fas9ZYbM03192T2GnA0wnnUJXeGMcnMrr0nbuGVkx1q0hKUyWdEvtj5DHHEeXpQZ4s4g==
X-Received: by 2002:a63:314a:: with SMTP id x71mr40085284pgx.385.1557866455694;
        Tue, 14 May 2019 13:40:55 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id p2sm2137pfi.73.2019.05.14.13.40.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 May 2019 13:40:55 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Hsin-Yi Wang <hsinyi@chromium.org>
Subject: [PATCH v2 1/3] dt-bindings: Remove Linuxisms from common-properties binding
Date:   Tue, 14 May 2019 13:40:51 -0700
Message-Id: <20190514204053.124122-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190514204053.124122-1-swboyd@chromium.org>
References: <20190514204053.124122-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We shouldn't reference Linux kernel functions or Linux itself in proper
bindings. It's OK to reference functions in the kernel when explaining
examples, but otherwise we shouldn't reference functions to describe
what the binding means.

Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../devicetree/bindings/common-properties.txt   | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/common-properties.txt b/Documentation/devicetree/bindings/common-properties.txt
index a3448bfa1c82..98a28130e100 100644
--- a/Documentation/devicetree/bindings/common-properties.txt
+++ b/Documentation/devicetree/bindings/common-properties.txt
@@ -5,30 +5,29 @@ Endianness
 ----------
 
 The Devicetree Specification does not define any properties related to hardware
-byteswapping, but endianness issues show up frequently in porting Linux to
+byte swapping, but endianness issues show up frequently in porting drivers to
 different machine types.  This document attempts to provide a consistent
-way of handling byteswapping across drivers.
+way of handling byte swapping across drivers.
 
 Optional properties:
  - big-endian: Boolean; force big endian register accesses
    unconditionally (e.g. ioread32be/iowrite32be).  Use this if you
-   know the peripheral always needs to be accessed in BE mode.
+   know the peripheral always needs to be accessed in big endian (BE) mode.
  - little-endian: Boolean; force little endian register accesses
    unconditionally (e.g. readl/writel).  Use this if you know the
-   peripheral always needs to be accessed in LE mode.
+   peripheral always needs to be accessed in little endian (LE) mode.
  - native-endian: Boolean; always use register accesses matched to the
    endianness of the kernel binary (e.g. LE vmlinux -> readl/writel,
-   BE vmlinux -> ioread32be/iowrite32be).  In this case no byteswaps
+   BE vmlinux -> ioread32be/iowrite32be).  In this case no byte swaps
    will ever be performed.  Use this if the hardware "self-adjusts"
    register endianness based on the CPU's configured endianness.
 
 If a binding supports these properties, then the binding should also
 specify the default behavior if none of these properties are present.
 In such cases, little-endian is the preferred default, but it is not
-a requirement.  The of_device_is_big_endian() and of_fdt_is_big_endian()
-helper functions do assume that little-endian is the default, because
-most existing (PCI-based) drivers implicitly default to LE by using
-readl/writel for MMIO accesses.
+a requirement.  Some implementations assume that little-endian is
+the default, because most existing (PCI-based) drivers implicitly
+default to LE for their MMIO accesses.
 
 Examples:
 Scenario 1 : CPU in LE mode & device in LE mode.
-- 
Sent by a computer through tubes

