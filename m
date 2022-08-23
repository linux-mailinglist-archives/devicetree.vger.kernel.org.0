Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D85E859D226
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 09:33:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241077AbiHWH2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 03:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241083AbiHWH2Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 03:28:16 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55F1763F2E
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 00:27:47 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id e20so15402663wri.13
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 00:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=hQh8Ka1syQsKSvmOQKR3o9DYOsDuzDyZAiwXNBYwiQE=;
        b=t5gIcaRntnlPJc1ZzW5PVzkebBdQWqWlTCogUshJLt6C/R+GAI56tyZxjMrjrJRn0U
         jGo581cWMkFCU/OlbNpITv+MbFokvU7c8tU/+DGgtMNJxA68JhVet97sX5iRL68uTII4
         IAjNo45uAN6753BQbXRt9cZqiV/oOh9Xl0aA6JDIrZBQ9RogJSQOdhYkG+iiJDB7UzgT
         +nlbPdoT3Wp/CS01cGE+b/2T3SIqvCo4WQ3+SgJjKT0klC2LzmZIl4qZsNKv57WC/N05
         uBV4OqJQif/irbfMLmdYP3JlddHsOLS7CfoAx3eQkCWlJ3MX+AxOrpLWuBAan2seKPwY
         Hr9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=hQh8Ka1syQsKSvmOQKR3o9DYOsDuzDyZAiwXNBYwiQE=;
        b=2rkeEqLf3z6A9dpMlOFIY1uIN3M8IDmZlqZOwCgMxIue5ThpyIBeoj5FVpbkzvuwDu
         H+uStYCZ0UYbijNGMyHnwQ99HsJIvoqoj9L/tjx7W05GxE2bczq4vRlE2LbX+WfssrWU
         anz348lAVpkhGDxB2XOcfWRqIL9KwvXuUKsc21Pn/rMb+rNUem53WP1CcXHmd79iehnc
         WrN0JCB5fdChFpg0XXTyIYTtEqTX/XY5tSd0CZRrklvVlBBe3Ix562rL1i7mC6IomqH+
         fKnUSf6fhI54ijkUZFSBU+p/7Ij9U9R0QIwMy6Rq7331kNlYqRy0NSPzmXVKowqhPBN4
         7XDQ==
X-Gm-Message-State: ACgBeo153V42JoN6h/Xe7KIjUYEE2f7HQVbEYD40msA5ZE5ScqrD+bo1
        bIj5PjMIOFtvF9IeGh1lnoAbiQ==
X-Google-Smtp-Source: AA6agR5qDROY0NYH+kbIjhCkLt4MlOgbY3hZrPauas8w4vidtcydsqFKsUZ8Htv/HCy6EEufUPDmiA==
X-Received: by 2002:adf:d1c4:0:b0:220:7a85:ad7c with SMTP id b4-20020adfd1c4000000b002207a85ad7cmr12045801wrd.128.1661239665843;
        Tue, 23 Aug 2022 00:27:45 -0700 (PDT)
Received: from P-NTS-Evian.home (2a01cb058f8a18001c97b8d1b477d53f.ipv6.abo.wanadoo.fr. [2a01:cb05:8f8a:1800:1c97:b8d1:b477:d53f])
        by smtp.gmail.com with ESMTPSA id k13-20020a7bc30d000000b003a5c75bd36fsm19999390wmj.10.2022.08.23.00.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 00:27:45 -0700 (PDT)
From:   Romain Naour <romain.naour@smile.fr>
To:     linux-omap@vger.kernel.org
Cc:     devicetree@vger.kernel.org, bcousson@baylibre.com,
        tony@atomide.com, Romain Naour <romain.naour@skf.com>,
        Romain Naour <romain.naour@smile.fr>,
        Roger Quadros <rogerq@kernel.org>
Subject: [PATCHv2] ARM: dts: am5748: keep usb4_tm disabled
Date:   Tue, 23 Aug 2022 09:27:42 +0200
Message-Id: <20220823072742.351368-1-romain.naour@smile.fr>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Romain Naour <romain.naour@skf.com>

Commit bcbb63b80284 ("ARM: dts: dra7: Separate AM57 dtsi files")
disabled usb4_tm for am5748 devices since USB4 IP is not present
in this SoC.

The commit log explained the difference between AM5 and DRA7 families:

AM5 and DRA7 SoC families have different set of modules in them so the
SoC sepecific dtsi files need to be separated.

e.g. Some of the major differences between AM576 and DRA76

		DRA76x	AM576x

USB3		x
USB4		x
ATL		x
VCP		x
MLB		x
ISS		x
PRU-ICSS1		x
PRU-ICSS2		x

Then commit 176f26bcd41a ("ARM: dts: Add support for dra762 abz
package") removed usb4_tm part from am5748.dtsi and introcuded new
ti-sysc errors in dmesg:

ti-sysc 48940000.target-module: clock get error for fck: -2
ti-sysc: probe of 48940000.target-module failed with error -2

Fixes: 176f26bcd41a ("ARM: dts: Add support for dra762 abz package")

Signed-off-by: Romain Naour <romain.naour@skf.com>
Signed-off-by: Romain Naour <romain.naour@smile.fr>
Cc: Roger Quadros <rogerq@kernel.org>
---
Issue reproduced on a AM5749 CPU using a 5.10 kernel from ti-linux-kernel:
https://git.ti.com/cgit/ti-linux-kernel/ti-linux-kernel/commit/?h=linux-5.10.y

v2: improved commit log to ease patch backport
---
 arch/arm/boot/dts/am5748.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/am5748.dtsi b/arch/arm/boot/dts/am5748.dtsi
index c260aa1a85bd..a1f029e9d1f3 100644
--- a/arch/arm/boot/dts/am5748.dtsi
+++ b/arch/arm/boot/dts/am5748.dtsi
@@ -25,6 +25,10 @@ &usb3_tm {
 	status = "disabled";
 };
 
+&usb4_tm {
+	status = "disabled";
+};
+
 &atl_tm {
 	status = "disabled";
 };
-- 
2.34.3

