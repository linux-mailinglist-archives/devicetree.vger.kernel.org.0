Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CA7C2E6A4B
	for <lists+devicetree@lfdr.de>; Mon, 28 Dec 2020 20:13:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729007AbgL1TMd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Dec 2020 14:12:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729003AbgL1TMd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Dec 2020 14:12:33 -0500
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E77D0C0613D6
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 11:11:52 -0800 (PST)
Received: by mail-qv1-xf30.google.com with SMTP id p5so5378971qvs.7
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 11:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=WE59etTQVmQBiRWixWVU3ybmOwgLeTs8mnXISggMd8c=;
        b=LH4WED/EH6frYpEUJr24xmKjEM8U1jVRPQ4O+dzcHKVvVX0RqJfI5oLosQWBDjUIEC
         aDmtEQkprGPBbxeONNbkqPi1dtDZQsxYTCTU06FrYx6fc+MLTzcpFEjMLcuWzX0o4CkZ
         KJNLm80PKQ8ZWQDcGYp/c3HnSrTnqIYmCCh7as6ymW1u79b04y04odJJEBRU/0m9GaBN
         HgbPz+C8XuuQ81DOw6Qt6ZS0QXNWzYnC3vBcztccD6Pr6AyBjfVGOgywXNT2kU70X0BC
         nVp4PmP53M0f5ctFtgCs65fn/ECW43d/0olIS+ICMUhQbSlJW4Pykw13HYK+EACiu3Y9
         9r2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=WE59etTQVmQBiRWixWVU3ybmOwgLeTs8mnXISggMd8c=;
        b=t1Qom6JEKGyTWMqoROl5GHwps5CnebFHT+ktBBgxhVb5TlO1PWpYQ2vzbDQ3MmZFCS
         pc6I14z0xr+xFQFZ1wzXtNNYmKCQYX2ZsAwJMFaKlFU6+4/R3U5GBEltQvAHW0wpebhF
         r/Tq7aZq1hiq9zyEVyGUNb+pduO9KFF26wh5os6dj1phsS4k5829BKdvf+qF4eoXBMdC
         WIgwA/DRzcPBwbsQvBQVdgEstffqTUGZjSvxPDpcp5TtOK9oT0YpZyOoSJVmp9r8FokY
         GTBYIXKlfMpF08yPJ9iCsnnQJuJJyXDuyfdYKas1n6U6OtkHyRvpgWQmEZjxuqGT+h65
         Mf3g==
X-Gm-Message-State: AOAM531C2HxgKBJD2cpo6MnXWIYwpJi8sHaf/WLT7l1MMds+5VvLAOfL
        ogqzD0hgHzhe34puOA4QX9nzlJQMUEoHi7x6
X-Google-Smtp-Source: ABdhPJzG/Y9Pbq+ehp6ZDN1Er2gkhbTVjOo2DVCuXSOUMq1q3Ut41WurWCXv07hOsyi7KSIfm1R2zg==
X-Received: by 2002:a0c:f185:: with SMTP id m5mr48841027qvl.19.1609182712167;
        Mon, 28 Dec 2020 11:11:52 -0800 (PST)
Received: from marty-x570 ([172.58.230.134])
        by smtp.gmail.com with ESMTPSA id z40sm19844216qtz.81.2020.12.28.11.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Dec 2020 11:11:51 -0800 (PST)
Date:   Mon, 28 Dec 2020 14:11:50 -0500
From:   Marty Jones <mj8263788@gmail.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3
Message-ID: <20201228141150.2ccc4f30@marty-x570>
X-Mailer: Claws Mail 3.17.7 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=46rom 4979bc740c982a15f36002fbb97979cba5d99739 Mon Sep 17 00:00:00 2001
From: Marty Jones <mj8263788@gmail.com>
Date: Mon, 28 Dec 2020 13:16:53 -0500
Subject: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3

Add devicetree binding documentation for the FriendlyARM NanoPi NEO3

Signed-off-by: Marty Jones <mj8263788@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Document=
ation/devicetree/bindings/arm/rockchip.yaml
index ef4544ad6f82..a0aaae08c97b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -122,6 +122,11 @@ properties:
               - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399
=20
+      - description: FriendlyElec NanoPi NEO3
+        items:
+          - const: friendlyarm,nanopi-neo3
+          - const: rockchip,rk3328
+
       - description: FriendlyElec NanoPi R2S
         items:
           - const: friendlyarm,nanopi-r2s
--=20
2.27.0

