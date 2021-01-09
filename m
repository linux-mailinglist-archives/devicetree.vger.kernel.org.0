Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2477B2EFC9F
	for <lists+devicetree@lfdr.de>; Sat,  9 Jan 2021 02:12:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726476AbhAIBMp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 20:12:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726402AbhAIBMp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 20:12:45 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF8FAC0613C1
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 17:12:04 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id lj6so4588777pjb.0
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 17:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nW0h59lWpfHSWq3JBLawBO9x16a6xUx2IiyBsUXoGco=;
        b=AUKiToRO2R3koqVkYRluHgMHF0sN1TtFRySJfHxtfWU3JcBEiijmDxXcsT3mEOX8aX
         OLSvp3UHy/aOwSzJ7fzlzEuMEYcojraUeKWlfuHroqRLyhFpWI+jssa2AcRaUWIHXLub
         j4luSeiT8YTu3nzpE8Qh3yG2eONUcieo5aWSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nW0h59lWpfHSWq3JBLawBO9x16a6xUx2IiyBsUXoGco=;
        b=lkKKqxdT0nrsY++iTZ5X7j6U8NpBz5HP5+YkW/FDzsgRpuYiX/CvfTiBCUS5fd/PTa
         Z55v37PaO4jDuJJ7vP4+fsRxWxJ9o1qMXHe/8dkS6/qU37YwmUT3bAWb/4PIYXeEesLf
         8S3+3Kpl+1QQsJHo/KP1AMTlcsIOl5PzJKzT2zuN1Yy0wbdMS1MwzZWLHrLCEtY1gsIh
         sVxsNwf7p2ljrMVgkCGH4rvEA4hOSMGexzAcnnEjS3cEtBiK/RjomW7JcAD5LC1rW69l
         nVNKFsprCWMKzPnuf1PlklszE0E23hzJKfCyq648tnRuzzrJm7Nhsd0CcSutvzPtP9r/
         L9ug==
X-Gm-Message-State: AOAM530FPPe30F1v7T2A2Wrwt4Wwu+QhByigPkMxo6SjJcyHmzsLRacz
        4EKQV68dVh8tJPcxY1U2Zd6mAQ==
X-Google-Smtp-Source: ABdhPJypxd8ikcYnQIxh4dMLbn2LCQZw4dE6iNr1XQ52PR1dD3AbynM0E9ri1omYuEkpHFAoaU6t9g==
X-Received: by 2002:a17:903:2284:b029:dd:7fe4:fad1 with SMTP id b4-20020a1709032284b02900dd7fe4fad1mr6425669plh.57.1610154724443;
        Fri, 08 Jan 2021 17:12:04 -0800 (PST)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:a6ae:11ff:fe11:fd59])
        by smtp.gmail.com with ESMTPSA id 82sm10329606pfv.117.2021.01.08.17.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 17:12:04 -0800 (PST)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>, dmitry.torokhov@gmail.com
Cc:     dianders@chromium.org, swboyd@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v3 2/2] ARM: dts: cros-ec-keyboard: Use keymap marcos
Date:   Fri,  8 Jan 2021 17:11:51 -0800
Message-Id: <20210108171140.v3.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210108171140.v3.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
References: <20210108171140.v3.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The common cros-ec keymap has been defined as macros. This patch uses
the macros to simply linux,keymap in cros-ec-keyboard.dtsi file.

This patch also creates an alias for keyboard-controller to make it
easier to override the keymap in board-specific dts later.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

Changes in v3:
- Create an alias for keyboard-controller

Changes in v2:
- Replace CROS_STD_NON_TOP_ROW_KEYMAP with CROS_STD_MAIN_KEYMAP

 arch/arm/boot/dts/cros-ec-keyboard.dtsi | 93 ++-----------------------
 1 file changed, 4 insertions(+), 89 deletions(-)

diff --git a/arch/arm/boot/dts/cros-ec-keyboard.dtsi b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
index 165c5bcd510e5..dae2727cec4c8 100644
--- a/arch/arm/boot/dts/cros-ec-keyboard.dtsi
+++ b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
@@ -6,103 +6,18 @@
 */
 
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/input/cros-ec-keyboard.h>
 
 &cros_ec {
-	keyboard-controller {
+	kkeyboard_controller: keyboard-controller {
 		compatible = "google,cros-ec-keyb";
 		keypad,num-rows = <8>;
 		keypad,num-columns = <13>;
 		google,needs-ghost-filter;
 
 		linux,keymap = <
-			MATRIX_KEY(0x00, 0x01, KEY_LEFTMETA)
-			MATRIX_KEY(0x00, 0x02, KEY_F1)
-			MATRIX_KEY(0x00, 0x03, KEY_B)
-			MATRIX_KEY(0x00, 0x04, KEY_F10)
-			MATRIX_KEY(0x00, 0x05, KEY_RO)
-			MATRIX_KEY(0x00, 0x06, KEY_N)
-			MATRIX_KEY(0x00, 0x08, KEY_EQUAL)
-			MATRIX_KEY(0x00, 0x0a, KEY_RIGHTALT)
-
-			MATRIX_KEY(0x01, 0x01, KEY_ESC)
-			MATRIX_KEY(0x01, 0x02, KEY_F4)
-			MATRIX_KEY(0x01, 0x03, KEY_G)
-			MATRIX_KEY(0x01, 0x04, KEY_F7)
-			MATRIX_KEY(0x01, 0x06, KEY_H)
-			MATRIX_KEY(0x01, 0x08, KEY_APOSTROPHE)
-			MATRIX_KEY(0x01, 0x09, KEY_F9)
-			MATRIX_KEY(0x01, 0x0b, KEY_BACKSPACE)
-			MATRIX_KEY(0x01, 0x0c, KEY_HENKAN)
-
-			MATRIX_KEY(0x02, 0x00, KEY_LEFTCTRL)
-			MATRIX_KEY(0x02, 0x01, KEY_TAB)
-			MATRIX_KEY(0x02, 0x02, KEY_F3)
-			MATRIX_KEY(0x02, 0x03, KEY_T)
-			MATRIX_KEY(0x02, 0x04, KEY_F6)
-			MATRIX_KEY(0x02, 0x05, KEY_RIGHTBRACE)
-			MATRIX_KEY(0x02, 0x06, KEY_Y)
-			MATRIX_KEY(0x02, 0x07, KEY_102ND)
-			MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)
-			MATRIX_KEY(0x02, 0x09, KEY_F8)
-			MATRIX_KEY(0x02, 0x0a, KEY_YEN)
-
-			MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)
-			MATRIX_KEY(0x03, 0x01, KEY_GRAVE)
-			MATRIX_KEY(0x03, 0x02, KEY_F2)
-			MATRIX_KEY(0x03, 0x03, KEY_5)
-			MATRIX_KEY(0x03, 0x04, KEY_F5)
-			MATRIX_KEY(0x03, 0x06, KEY_6)
-			MATRIX_KEY(0x03, 0x08, KEY_MINUS)
-			MATRIX_KEY(0x03, 0x09, KEY_F13)
-			MATRIX_KEY(0x03, 0x0b, KEY_BACKSLASH)
-			MATRIX_KEY(0x03, 0x0c, KEY_MUHENKAN)
-
-			MATRIX_KEY(0x04, 0x00, KEY_RIGHTCTRL)
-			MATRIX_KEY(0x04, 0x01, KEY_A)
-			MATRIX_KEY(0x04, 0x02, KEY_D)
-			MATRIX_KEY(0x04, 0x03, KEY_F)
-			MATRIX_KEY(0x04, 0x04, KEY_S)
-			MATRIX_KEY(0x04, 0x05, KEY_K)
-			MATRIX_KEY(0x04, 0x06, KEY_J)
-			MATRIX_KEY(0x04, 0x08, KEY_SEMICOLON)
-			MATRIX_KEY(0x04, 0x09, KEY_L)
-			MATRIX_KEY(0x04, 0x0a, KEY_BACKSLASH)
-			MATRIX_KEY(0x04, 0x0b, KEY_ENTER)
-
-			MATRIX_KEY(0x05, 0x01, KEY_Z)
-			MATRIX_KEY(0x05, 0x02, KEY_C)
-			MATRIX_KEY(0x05, 0x03, KEY_V)
-			MATRIX_KEY(0x05, 0x04, KEY_X)
-			MATRIX_KEY(0x05, 0x05, KEY_COMMA)
-			MATRIX_KEY(0x05, 0x06, KEY_M)
-			MATRIX_KEY(0x05, 0x07, KEY_LEFTSHIFT)
-			MATRIX_KEY(0x05, 0x08, KEY_SLASH)
-			MATRIX_KEY(0x05, 0x09, KEY_DOT)
-			MATRIX_KEY(0x05, 0x0b, KEY_SPACE)
-
-			MATRIX_KEY(0x06, 0x01, KEY_1)
-			MATRIX_KEY(0x06, 0x02, KEY_3)
-			MATRIX_KEY(0x06, 0x03, KEY_4)
-			MATRIX_KEY(0x06, 0x04, KEY_2)
-			MATRIX_KEY(0x06, 0x05, KEY_8)
-			MATRIX_KEY(0x06, 0x06, KEY_7)
-			MATRIX_KEY(0x06, 0x08, KEY_0)
-			MATRIX_KEY(0x06, 0x09, KEY_9)
-			MATRIX_KEY(0x06, 0x0a, KEY_LEFTALT)
-			MATRIX_KEY(0x06, 0x0b, KEY_DOWN)
-			MATRIX_KEY(0x06, 0x0c, KEY_RIGHT)
-
-			MATRIX_KEY(0x07, 0x01, KEY_Q)
-			MATRIX_KEY(0x07, 0x02, KEY_E)
-			MATRIX_KEY(0x07, 0x03, KEY_R)
-			MATRIX_KEY(0x07, 0x04, KEY_W)
-			MATRIX_KEY(0x07, 0x05, KEY_I)
-			MATRIX_KEY(0x07, 0x06, KEY_U)
-			MATRIX_KEY(0x07, 0x07, KEY_RIGHTSHIFT)
-			MATRIX_KEY(0x07, 0x08, KEY_P)
-			MATRIX_KEY(0x07, 0x09, KEY_O)
-			MATRIX_KEY(0x07, 0x0b, KEY_UP)
-			MATRIX_KEY(0x07, 0x0c, KEY_LEFT)
+			CROS_STD_TOP_ROW_KEYMAP
+			CROS_STD_MAIN_KEYMAP
 		>;
 	};
 };
-- 
2.26.2

