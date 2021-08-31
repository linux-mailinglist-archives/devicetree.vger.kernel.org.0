Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9524A3FC7BC
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 14:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233654AbhHaM75 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 08:59:57 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:21472 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232209AbhHaM74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 31 Aug 2021 08:59:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1630414741;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=5Eh4ChN6tmGYrP4RUJdmpaQmwKMLLITK4RWlYVVT5MA=;
        b=d6eT48BJlmB1fLDRBKDIDlJJxZmVs8kejcUmGx87qE3FL0VcuWhTfSiRc6tUZjoDrjOZxh
        efBaik1fuBgf6K8tOFMetts2kLcK4EJKbRYf+3t8s6OerI3T/2hpmIkQ7MRgoIuG7pOVfi
        bv3rcmK8GIUvB3fP1Yg6Qr+r0EAQ2yM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-384-wb4LI_x_PBKkZ7VQVNQFnQ-1; Tue, 31 Aug 2021 08:59:00 -0400
X-MC-Unique: wb4LI_x_PBKkZ7VQVNQFnQ-1
Received: by mail-wm1-f71.google.com with SMTP id f128-20020a1c3886000000b002e887c95e07so1296843wma.1
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 05:58:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5Eh4ChN6tmGYrP4RUJdmpaQmwKMLLITK4RWlYVVT5MA=;
        b=N8E7TFftqbm9UR6dVp58UbyZ2ejsXWzqAcX3dHwbUWHBXTLn+qDO1P4VR9feuVqd6B
         u0M0zkrESGvkmAPMkxXbUGPOhHH+exXY8XZO+1d65wiGn68V2iim57NP/T0grcmEWac7
         Qo5MyC1aWaA6FW35TeyFLBEb/nwZk1669X4tN81L2Qwm/TubQVX+jqMpOEv8pu/fgZdv
         VWZ1nkz6QiD2MiAva6XTKtga2fGUobnN0tX6nPi2GUiWUwqjYpgRbhoNzhCQx4IRgJej
         MvUmGKci8cjlmjmZ6rz9AFgYj6jCLmzlOMUb/zrKvXMXyBHz16cFwZteAIjtoEjGEKTf
         IDOw==
X-Gm-Message-State: AOAM532mPIN4+qf8/U+6eD4oM64O+q2h+/c44oAsvSG3fEtluUb4nGMx
        EcH3uZJ9y8FTdV2KVneNeN3/wITGk/TSlnoafUv9OdG7IiN0rsf1wNsyOKhA5Q8jf+DrExcU5WH
        Pk9Yy2XOXph5LlzG+X9R5jQ==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr31432625wro.46.1630414738795;
        Tue, 31 Aug 2021 05:58:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwtdWfILjxTRF4gocoS3gkh8TxcThwh4B/N0Ob5/z0qlXKtnOx8p568wFUOeGBfgSnQWogYTg==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr31432600wro.46.1630414738590;
        Tue, 31 Aug 2021 05:58:58 -0700 (PDT)
Received: from vian.redhat.com ([2a0c:5a80:3c08:b500:afb2:5ebc:3fd2:26de])
        by smtp.gmail.com with ESMTPSA id a133sm2553199wme.5.2021.08.31.05.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 05:58:58 -0700 (PDT)
From:   Nicolas Saenz Julienne <nsaenzju@redhat.com>
To:     robh+dt@kernel.org, nsaenz@kernel.org, f.fainelli@gmail.com
Cc:     gregkh@linuxfoundation.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        stefan.wahren@i2se.com,
        Nicolas Saenz Julienne <nsaenzju@redhat.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/2] ARM: dts: bcm2711-rpi-4-b: Fix pcie0's unit address formatting
Date:   Tue, 31 Aug 2021 14:58:42 +0200
Message-Id: <20210831125843.1233488-1-nsaenzju@redhat.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dtbs_check currently complains that:

arch/arm/boot/dts/bcm2711-rpi-4-b.dts:220.10-231.4: Warning
(pci_device_reg): /scb/pcie@7d500000/pci@1,0: PCI unit address format
error, expected "0,0"

Unsurprisingly pci@0,0 is the right address, as illustrated by its reg
property:

    &pcie0 {
	    pci@0,0 {
		    /*
		     * As defined in the IEEE Std 1275-1994 document,
		     * reg is a five-cell address encoded as (phys.hi
		     * phys.mid phys.lo size.hi size.lo). phys.hi
		     * should contain the device's BDF as 0b00000000
		     * bbbbbbbb dddddfff 00000000. The other cells
		     * should be zero.
		     */
		    reg = <0 0 0 0 0>;
	    };
    };

The device is clearly 0. So fix it.

Also add a missing 'device_type = "pci"'.

Fixes: 258f92d2f840 ("ARM: dts: bcm2711: Add reset controller to xHCI node")
Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzju@redhat.com>
---

Changes since v1:
 - s/bus/device/ when talking about unit addresses
 - Add device_type
 - Add Suggested-by 

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index f24bdd0870a5..8377dc14b7b5 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -217,7 +217,8 @@ phy1: ethernet-phy@1 {
 };
 
 &pcie0 {
-	pci@1,0 {
+	pci@0,0 {
+		device_type = "pci";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
-- 
2.31.1

