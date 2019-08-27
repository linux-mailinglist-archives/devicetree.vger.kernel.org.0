Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 21D499DBC7
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 04:55:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728733AbfH0CzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 22:55:13 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:44639 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728345AbfH0CzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 22:55:13 -0400
Received: by mail-pg1-f193.google.com with SMTP id i18so11757152pgl.11
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 19:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y3qi2zzHMk5Wx4T0VpqzCsoi+g0ChTEtNAjfI0RCyHs=;
        b=d9bP2dr4DUzCy0oD6c+0A6kCWj/mxlc0QpCS+/aWoCAsJ7/FR5zpBqchKLAHfxdlLK
         x2YgAjZtNXvk9CiZON8i3WoW/+B7LozfuztmXCBX6gUz43JvroAFIIrYhpCA1wolkBW1
         KUOStyE0yFic9S4dI+jrNwsE4hJl7vE5FNfdc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y3qi2zzHMk5Wx4T0VpqzCsoi+g0ChTEtNAjfI0RCyHs=;
        b=T5/m9O+n+KPtTSmdujV+qlM8jUOAu39oFLBWBkXaBzRDnV1S6ppcziZ58ybhS7X7AY
         +07acmKsYyiMaxq7dOVdlf9aXxgjNmkN6XBL0h+IZCyDwQZ8ozhSPHChzLBUpEBvqGax
         oy+Y4WmOo2YMXuUkRR8eGZF6N9XFPgtWVhrJrcvnM0wSSkG6QswpB/+OXQSr+b/sotDh
         katOMb8MWwiJMZ/bRgYFogULfKWz9ZhCGHn0UWcQqzYB3Jf1ApXDXR0RSOfBkakTuJjT
         Z4dUCHZTNXiWeHeRaLGflKGMI0fYDWoxqUnDfP9Fbkmga6rGtjv8QlQLlBOMuZXwEbNP
         WxRA==
X-Gm-Message-State: APjAAAW9mYA5tXq86wEJfBNFBfHdn6dPf+wYfJkDcf6WsOO/6ECW8LQf
        1403ILhEEYsHJVwiaZe6HoWT0A==
X-Google-Smtp-Source: APXvYqz7qcYmFntbKxwqe8W8CAyqaSHTVk0IhQXfW8fvfm7h+NJTRxohzDkI0zEpBuwjwgBx3kjshw==
X-Received: by 2002:a62:754a:: with SMTP id q71mr23227033pfc.15.1566874512591;
        Mon, 26 Aug 2019 19:55:12 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id o67sm22196757pfb.39.2019.08.26.19.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 19:55:12 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Alexandru M Stan <amstan@chromium.org>
Subject: [PATCH] dt-bindings: Clarify interrupts-extended usage
Date:   Mon, 26 Aug 2019 19:55:11 -0700
Message-Id: <20190827025511.22166-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reading the description about when to use interrupts-extended leads some
developers to think that it shouldn't be used unless a device has
interrupts from more than one interrupt controller. This isn't true. We
should encourage devicetree writers to use this property in situations
where it isn't the inherited interrupt-parent so that we have less
properties in a DT node by virtue of not having to specify an
interrupt-parent and an interrupts property.

Reported-by: Alexandru M Stan <amstan@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 .../bindings/interrupt-controller/interrupts.txt          | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/interrupts.txt b/Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
index 8a3c40829899..4a3ee253f7f0 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
@@ -22,10 +22,10 @@ controller node. This property is inherited, so it may be specified in an
 interrupt client node or in any of its parent nodes. Interrupts listed in the
 "interrupts" property are always in reference to the node's interrupt parent.
 
-The "interrupts-extended" property is a special form for use when a node needs
-to reference multiple interrupt parents. Each entry in this property contains
-both the parent phandle and the interrupt specifier. "interrupts-extended"
-should only be used when a device has multiple interrupt parents.
+The "interrupts-extended" property is a special form; useful when a node needs
+to reference multiple interrupt parents or a different interrupt parent than
+the inherited one. Each entry in this property contains both the parent phandle
+and the interrupt specifier.
 
   Example:
 	interrupts-extended = <&intc1 5 1>, <&intc2 1 0>;

base-commit: 609488bc979f99f805f34e9a32c1e3b71179d10b
-- 
Sent by a computer through tubes

