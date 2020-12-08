Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5B412D2405
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 08:04:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726061AbgLHHEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 02:04:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbgLHHEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 02:04:16 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25754C0613D6
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 23:03:36 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id w13so8938190lfd.5
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 23:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L+fVzDxV5VktJdct2hFtFIgfqHiEjelFr39RfcRtXA8=;
        b=h6M+5p1gRpPoEpcdN923mz+yGyCNz2cy3GfYs2XSIzWjpkhISfTGTaLLMQDUr8y0BS
         Fn1MpepQ4TYDxeLMqx1qM+P4lIksleYNxhKj2oVsLocvWHL+eMHQThM0sfwojhdAaKaj
         CE1etmKHbR/by1TntACRIJFxT9D09BIHP+mG3jteD3PxIvD7dgQYGWpxsNzK7SvjkQQz
         OL05WxSBi/Jmls/S2GS8yz9B2UsfcCkvHwNoyCdS8XYwaIaLQYZdSI3VdTxizaBQmq7H
         ktOL+ZAacAemRDSlm3YwXbEQRc9lNfqzKD7m5k0DvsmSfssx6l3ut0KNPNxqUavgo/jy
         2wGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L+fVzDxV5VktJdct2hFtFIgfqHiEjelFr39RfcRtXA8=;
        b=bqucn5tYvwzCqAn7R4mpQD4OrtbCnXvWshCig6b+9W8+FLrRTDHrTCbTDK3Hpvh9yV
         znttabFYitE0wPjLT1Pg0GUH5e2um3LErpOIfUf1htfyDJGOA+954TJdMFv7E0MeN2Ux
         LXwY1ASMz45smubqoY2AY6KkhpFA5Jt/gdupBuixHz81detp8fxgH+yyQsgDtG35ejOj
         qiKaFL1R636BBaM7nwELipvEPy1+ZGonq2+xrc/mP7VaSnAcCitXDPiWJDshJPaF8GFh
         BNnmI8NIxoW7/oeNUO+YcUTX/Xct8eJ6nbHn/wnjF99tTs+6lJLzxhEMoHh2e6Z1Q8Io
         AsSg==
X-Gm-Message-State: AOAM5307Ac9gGPCKL/WE3N+Bchhbto7NMNeOL+JhM75a1ALtrMy0DEFM
        VXP+aZKYvxja2uF/hv6cX7A=
X-Google-Smtp-Source: ABdhPJxoQ4nce4V42SuE6u8HQJDBJcxziQWyrs2aPpsDs+WGivDc6NftKBAW9K5zSXQNgmK51AdtlA==
X-Received: by 2002:a05:6512:304c:: with SMTP id b12mr4795055lfb.273.1607411013205;
        Mon, 07 Dec 2020 23:03:33 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id i11sm740884ljb.19.2020.12.07.23.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 23:03:31 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: arm: bcm: document Netgear R8000P binding
Date:   Tue,  8 Dec 2020 08:03:03 +0100
Message-Id: <20201208070304.12536-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It's a BCM4906 based device.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
index 5fec063d9a13..e55731f43c84 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4908.yaml
@@ -19,6 +19,8 @@ properties:
     oneOf:
       - description: BCM4906 based boards
         items:
+          - enum:
+              - netgear,r8000p
           - const: brcm,bcm4906
           - const: brcm,bcm4908
 
-- 
2.26.2

