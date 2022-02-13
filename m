Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B79EE4B3E37
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238658AbiBMW6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:10 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231864AbiBMW6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:09 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B25DB54BE0
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:03 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id b14so95705ede.9
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Jkh/ZThBVxR3iCrqSQ641kQC+DxWzCqRmSFjFdd592M=;
        b=KLPTt8yhHW7LK5Bz9+nth65FJde0niGbdiuZgNTkesIzbg9w/2D6Xio4Zvj+1yvlzP
         pr2UMTgNr4VzC7XtfhGBrQMtP8Wl+WXscQwZlqAbexPpgUREs2jHP0smWqz9KBonBTc7
         lf0y2t2vK1dbS0GPw7Hpqzt2LWPv6e++Mnoa0CGpL2K9P2RnJLVUGSL40XDG01Ykfbbw
         CIx2XV46XjobKeg+Tx82fFiFw5uyGBeWXY5P2HsuIpOwA5ToiWqznC6ucaYU6gNdsLEG
         2VB9RhuyHAmH7SvD1nWNmd5t4W8wlAyRMwpQUZ6nSkTtEZKLJsE9EbgFClQLKpikwePE
         N7oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Jkh/ZThBVxR3iCrqSQ641kQC+DxWzCqRmSFjFdd592M=;
        b=iC+HqJPkP8clL5ps+D3PeYosJ+m0OI91tiRpmPVquAdE3idB7XSVY1Lm3GKfneJpPx
         CfVxzKuORt9bPkqSc0VKmiIdIl3P3Fp1jN3I2FV+3zFb/zgNMy6q1alu1WI6shPhHKCL
         HNT+OirFDZsmsR6WU1eOxpkcfd/3UJa2cRIsib66wx0D0pEpzwpaN2NBkyLlgTkq302D
         uusV/0/kWC+gwpV7/79ZPUx4AXje0QGEZl3Vs5Z+EyCtgLijArVUG7Jhs9epbQg9xJ1x
         +4R+XOXod9W7vtSJxpeY64H2zhEY7ceZ1uR0Jv+6ZxKjAlvPm01+ENPdOuFpfqrW46bN
         V14w==
X-Gm-Message-State: AOAM530sLkC2l9C4gI/HLvWYBtCJ47BcCBF9KCA947XUI/SEqULjUBV+
        r8kRnjYLnkAwmf/gI06DZak=
X-Google-Smtp-Source: ABdhPJwD3CmtM9qOTOKVh2wft4puLi9UOAVBT0IZACYp8gl4G7AUK2brppfMcwdW4SJS2IYJp/qV9A==
X-Received: by 2002:aa7:c3cb:: with SMTP id l11mr4703839edr.427.1644793082291;
        Sun, 13 Feb 2022 14:58:02 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:01 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 03/15] dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
Date:   Sun, 13 Feb 2022 22:56:35 +0000
Message-Id: <20220213225646.67761-4-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Add a new compatible string for BCM2711 and the option to provide a
third reg property for the board's new RPiVid ASB.

In BCM2711 the new RPiVid ASB took over V3D, which is our only consumer
of this driver so far. The old ASB is still be present with ISP and H264
bits but no V3D.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v2:
 - Correct names s/argon/rpivid/

 .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml  | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
index 837963e9f219..0dd264f80fb3 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
@@ -19,19 +19,22 @@ allOf:
 properties:
   compatible:
     items:
-      - const: brcm,bcm2835-pm
+      - enum:
+          - brcm,bcm2835-pm
+          - brcm,bcm2711-pm
       - const: brcm,bcm2835-pm-wdt
 
   reg:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   reg-names:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
     items:
       - const: pm
       - const: asb
+      - const: rpivid_asb
 
   "#power-domain-cells":
     const: 1
@@ -74,7 +77,7 @@ examples:
         #reset-cells = <1>;
         reg = <0x7e100000 0x114>,
               <0x7e00a000 0x24>;
-        reg-names = "pm", "asb";
+        reg-names = "pm", "asb", "rpivid_asb";
         clocks = <&clocks BCM2835_CLOCK_V3D>,
         	 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
         	 <&clocks BCM2835_CLOCK_H264>,
-- 
2.35.1

