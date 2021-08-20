Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58AB73F240D
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 02:12:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236952AbhHTAMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 20:12:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234058AbhHTAMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 20:12:51 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9815DC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 17:12:14 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id 14so9170877qkc.4
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 17:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dionne-riel-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=Dsm8P9uqafbnpubz+XEfQK1lnHm4sLJTInwAjTvR8S8=;
        b=QKFB8IeW09RVM5MMnpdfFmC8HvU/4kT+u0RWLvJ0bx/PHbBQ8PUfAm7Vqc4KamSG9n
         +2L6NVvfiQIc0okUXP1Njg2D1W5RsqQ3cYEpHL9k38lpCXl2IQDTjYqcYlDOB2f1itws
         arY5XZayNOCZUW/De/TuUuBziapwRc2yS4XhbfGHg0seZcCcU+se9UO/fYNz/eGEtuUl
         f4bZMj21UJBg8MqTDb55cHMmqPzv/F9+bEgVk62PNHesJcz69JWk+a1x9tvNMiU4035N
         aiKzizEceKW35Se0n4SoYJ2Fi30HfGQRoZkoweeoWRWWLvX8RrSyFeJv0TX7Hx/V5+qr
         k1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=Dsm8P9uqafbnpubz+XEfQK1lnHm4sLJTInwAjTvR8S8=;
        b=VlGCMh31ibGG6n5tU3m1pGDaVQSeB2j81la9jZVtnPwW4a6DM9WffaPsZkWmvS3E37
         AkXxcaT9WPFYXFdWvxmW40D0VbJgZkX9EAQWOV1wlxKs0Jr+8TemkHxfG22oHNLDoeg+
         PG467Av/c9v2ztqNP3yZdbLBe8XXG9RqPkTiTFOkRpohURfzes9f6j/Lhkcp0H0b10v2
         pFk6sc4xYt/LYtTrJZhrRh8KMt2Fi4fi/OLQpccaXhoNL0X1ofF6Cp7bPGNi8lfbAYu3
         HEJbfK4wbtvpBbCl0HYxvROxTSb+zYmmH4OkFJtUHQyfjJn4ia961oJoHKKWNYISwzpk
         7qVw==
X-Gm-Message-State: AOAM532D8b5ld8m/xRuDyeJ5AuukxMEQziJjLmBJIle83KETQaNUvUoP
        dkzunwXiFwlioNm/owWJP5qLtqyrL+MGAqfQ
X-Google-Smtp-Source: ABdhPJwVMD6pZl5usohZder94GeSfz3bsihMvc3GXg8hnHTulsVP7QoiV1hjkvMOXRdH2sgvhil+8g==
X-Received: by 2002:a05:620a:4404:: with SMTP id v4mr6348003qkp.344.1629418333760;
        Thu, 19 Aug 2021 17:12:13 -0700 (PDT)
Received: from DUFFMAN (135-23-195-85.cpe.pppoe.ca. [135.23.195.85])
        by smtp.gmail.com with ESMTPSA id q7sm2429137qkm.68.2021.08.19.17.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 17:12:13 -0700 (PDT)
Date:   Thu, 19 Aug 2021 20:12:12 -0400
From:   Samuel Dionne-Riel <samuel@dionne-riel.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH] docs: dt: fix initrd property names in /chosen
Message-ID: <20210819201212.372a61c5.samuel@dionne-riel.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Signed-off-by: Samuel Dionne-Riel <samuel@dionne-riel.com>
---
This issue was noticed while following the documentation when
implementing initrd support in a platform-specific bootloader.

It wouldn't work, even though the documentation was followed as written.

One can verify that there are no references of prefix-less /chosen
initrd-* properties in the whole codebase using these commands:

 $ grep -R 'initrd-\(start\|end\)' | grep -v 'linux,initrd-\(start\|end\)'

 Documentation/devicetree/usage-model.rst | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/usage-model.rst b/Documentation/devicetree/usage-model.rst
index b6a287955ee56..39d023cc69a8a 100644
--- a/Documentation/devicetree/usage-model.rst
+++ b/Documentation/devicetree/usage-model.rst
@@ -192,16 +192,16 @@ Linux it will look something like this::
 
 	chosen {
 		bootargs = "console=ttyS0,115200 loglevel=8";
-		initrd-start = <0xc8000000>;
-		initrd-end = <0xc8200000>;
+		linux,initrd-start = <0xc8000000>;
+		linux,initrd-end = <0xc8200000>;
 	};
 
 The bootargs property contains the kernel arguments, and the initrd-*
 properties define the address and size of an initrd blob.  Note that
-initrd-end is the first address after the initrd image, so this doesn't
-match the usual semantic of struct resource.  The chosen node may also
-optionally contain an arbitrary number of additional properties for
-platform-specific configuration data.
+linux,initrd-end is the first address after the initrd image, so this
+doesn't match the usual semantic of struct resource.  The chosen node
+may also optionally contain an arbitrary number of additional
+properties for platform-specific configuration data.
 
 During early boot, the architecture setup code calls of_scan_flat_dt()
 several times with different helper callbacks to parse device tree
-- 
2.32.0



-- 
Samuel Dionne-Riel
