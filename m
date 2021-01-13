Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BDB52F57EA
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 04:01:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730065AbhANCLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 21:11:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729269AbhAMWP7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 17:15:59 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D115CC061786
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:15:07 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id j13so2056139pjz.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ywqlXS0DMFG48gu1pC9iNZc0yRyZGXmZHZluYtDfIDk=;
        b=JF2n2/kFR1I4vQ/3jfDshz9Iy2j2pfeShNSXOby6ltPbc1M+aRIuKML9KuG/K0sMMR
         83CndVVFkxgLsxwx7WmmwBZ4IsSiDiHAAcrZroy95nWIeOuTnreMnX3ciO0Rfa6KjcsE
         Bu6yOBtWXa9sMh5MhqvlYo2/A8vyKdaSa5yh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ywqlXS0DMFG48gu1pC9iNZc0yRyZGXmZHZluYtDfIDk=;
        b=CXNLYXU1OKDLquXc9y5I+zYkoOqsHlJyxY8niNAvDgQblnIapeR0X09HCuJt8843Lh
         XKqxi+o0Dx7xbwjdLtPdc5PYtVUuVkh3yJY7Di7D40IBsO1EsFjZOFkM1oqTVoXJZGWk
         hKm+3WHHIZluA+7/CSSx61KZdmCbgNpRkPA0H3CPxL+hsRNFGTYEcLgcKIuDFDhYpN5Q
         Jud8x3zN1TnRK3eV57aOzSRuZsTejR6B1zOQv1P+IQWO7clr08tIguhzAlLxcm2tO4ER
         Iv3QB3BX6iQx8mOakOLGqLWNCYTe9wmzb1VZoSmkpxV0Af14wBvHQc8S/JlUyYXbc3qW
         579A==
X-Gm-Message-State: AOAM533In+17Pl3I4/GGPQjwmTtHhYZMaY1gJYiZjrHRba/4Lmj5Uk2a
        /Ou5bkC8Ir/sQyF2g6FUWDRVxQ==
X-Google-Smtp-Source: ABdhPJwFz6YCHswDPqBzEjeVpxIIZk55eDUvkFbc6iMpgd327hKVjJ/8csvSBpdg178i+bv0BTVytw==
X-Received: by 2002:a17:902:7c0a:b029:da:62c8:90cb with SMTP id x10-20020a1709027c0ab02900da62c890cbmr4456228pll.59.1610576107403;
        Wed, 13 Jan 2021 14:15:07 -0800 (PST)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:a6ae:11ff:fe11:fd59])
        by smtp.gmail.com with ESMTPSA id o190sm3538477pga.2.2021.01.13.14.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 14:15:06 -0800 (PST)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>, dmitry.torokhov@gmail.com
Cc:     swboyd@chromium.org, dianders@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: input: Create macros for cros-ec keymap
Date:   Wed, 13 Jan 2021 14:15:01 -0800
Message-Id: <20210113141426.v5.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In Chrome OS, the keyboard matrix can be split to two groups:

The keymap for the top row keys can be customized based on OEM
preference, while the keymap for the other keys is generic/fixed
across boards.

This patch creates marcos for the keymaps of these two groups, making
it easier to reuse the generic portion of keymap when we override the
keymap in the board-specific dts for custom top row design.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

(no changes since v2)

Changes in v2:
- Rename CROS_STD_NON_TOP_ROW_KEYMAP to CROS_STD_MAIN_KEYMAP

 include/dt-bindings/input/cros-ec-keyboard.h | 103 +++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 include/dt-bindings/input/cros-ec-keyboard.h

diff --git a/include/dt-bindings/input/cros-ec-keyboard.h b/include/dt-bindings/input/cros-ec-keyboard.h
new file mode 100644
index 0000000000000..a37a8c5701219
--- /dev/null
+++ b/include/dt-bindings/input/cros-ec-keyboard.h
@@ -0,0 +1,103 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This header provides the constants of the standard Chrome OS key matrix
+ * for cros-ec keyboard-controller bindings.
+ *
+ * Copyright (c) 2021 Google, Inc
+ */
+
+#ifndef _CROS_EC_KEYBOARD_H
+#define _CROS_EC_KEYBOARD_H
+
+#define CROS_STD_TOP_ROW_KEYMAP	\
+	MATRIX_KEY(0x00, 0x02, KEY_F1)	\
+	MATRIX_KEY(0x03, 0x02, KEY_F2)	\
+	MATRIX_KEY(0x02, 0x02, KEY_F3)	\
+	MATRIX_KEY(0x01, 0x02, KEY_F4)	\
+	MATRIX_KEY(0x03, 0x04, KEY_F5)	\
+	MATRIX_KEY(0x02, 0x04, KEY_F6)	\
+	MATRIX_KEY(0x01, 0x04, KEY_F7)	\
+	MATRIX_KEY(0x02, 0x09, KEY_F8)	\
+	MATRIX_KEY(0x01, 0x09, KEY_F9)	\
+	MATRIX_KEY(0x00, 0x04, KEY_F10)	\
+	MATRIX_KEY(0x03, 0x09, KEY_F13)
+
+#define CROS_STD_MAIN_KEYMAP	\
+	MATRIX_KEY(0x00, 0x01, KEY_LEFTMETA)	\
+	MATRIX_KEY(0x00, 0x03, KEY_B)		\
+	MATRIX_KEY(0x00, 0x05, KEY_RO)		\
+	MATRIX_KEY(0x00, 0x06, KEY_N)		\
+	MATRIX_KEY(0x00, 0x08, KEY_EQUAL)	\
+	MATRIX_KEY(0x00, 0x0a, KEY_RIGHTALT)	\
+	MATRIX_KEY(0x01, 0x01, KEY_ESC)		\
+	MATRIX_KEY(0x01, 0x03, KEY_G)		\
+	MATRIX_KEY(0x01, 0x06, KEY_H)		\
+	MATRIX_KEY(0x01, 0x08, KEY_APOSTROPHE)	\
+	MATRIX_KEY(0x01, 0x0b, KEY_BACKSPACE)	\
+	MATRIX_KEY(0x01, 0x0c, KEY_HENKAN)	\
+						\
+	MATRIX_KEY(0x02, 0x00, KEY_LEFTCTRL)	\
+	MATRIX_KEY(0x02, 0x01, KEY_TAB)		\
+	MATRIX_KEY(0x02, 0x03, KEY_T)		\
+	MATRIX_KEY(0x02, 0x05, KEY_RIGHTBRACE)	\
+	MATRIX_KEY(0x02, 0x06, KEY_Y)		\
+	MATRIX_KEY(0x02, 0x07, KEY_102ND)	\
+	MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)	\
+	MATRIX_KEY(0x02, 0x0a, KEY_YEN)		\
+						\
+	MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)	\
+	MATRIX_KEY(0x03, 0x01, KEY_GRAVE)	\
+	MATRIX_KEY(0x03, 0x03, KEY_5)		\
+	MATRIX_KEY(0x03, 0x06, KEY_6)		\
+	MATRIX_KEY(0x03, 0x08, KEY_MINUS)	\
+	MATRIX_KEY(0x03, 0x0b, KEY_BACKSLASH)	\
+	MATRIX_KEY(0x03, 0x0c, KEY_MUHENKAN)	\
+						\
+	MATRIX_KEY(0x04, 0x00, KEY_RIGHTCTRL)	\
+	MATRIX_KEY(0x04, 0x01, KEY_A)		\
+	MATRIX_KEY(0x04, 0x02, KEY_D)		\
+	MATRIX_KEY(0x04, 0x03, KEY_F)		\
+	MATRIX_KEY(0x04, 0x04, KEY_S)		\
+	MATRIX_KEY(0x04, 0x05, KEY_K)		\
+	MATRIX_KEY(0x04, 0x06, KEY_J)		\
+	MATRIX_KEY(0x04, 0x08, KEY_SEMICOLON)	\
+	MATRIX_KEY(0x04, 0x09, KEY_L)		\
+	MATRIX_KEY(0x04, 0x0a, KEY_BACKSLASH)	\
+	MATRIX_KEY(0x04, 0x0b, KEY_ENTER)	\
+						\
+	MATRIX_KEY(0x05, 0x01, KEY_Z)		\
+	MATRIX_KEY(0x05, 0x02, KEY_C)		\
+	MATRIX_KEY(0x05, 0x03, KEY_V)		\
+	MATRIX_KEY(0x05, 0x04, KEY_X)		\
+	MATRIX_KEY(0x05, 0x05, KEY_COMMA)	\
+	MATRIX_KEY(0x05, 0x06, KEY_M)		\
+	MATRIX_KEY(0x05, 0x07, KEY_LEFTSHIFT)	\
+	MATRIX_KEY(0x05, 0x08, KEY_SLASH)	\
+	MATRIX_KEY(0x05, 0x09, KEY_DOT)		\
+	MATRIX_KEY(0x05, 0x0b, KEY_SPACE)	\
+						\
+	MATRIX_KEY(0x06, 0x01, KEY_1)		\
+	MATRIX_KEY(0x06, 0x02, KEY_3)		\
+	MATRIX_KEY(0x06, 0x03, KEY_4)		\
+	MATRIX_KEY(0x06, 0x04, KEY_2)		\
+	MATRIX_KEY(0x06, 0x05, KEY_8)		\
+	MATRIX_KEY(0x06, 0x06, KEY_7)		\
+	MATRIX_KEY(0x06, 0x08, KEY_0)		\
+	MATRIX_KEY(0x06, 0x09, KEY_9)		\
+	MATRIX_KEY(0x06, 0x0a, KEY_LEFTALT)	\
+	MATRIX_KEY(0x06, 0x0b, KEY_DOWN)	\
+	MATRIX_KEY(0x06, 0x0c, KEY_RIGHT)	\
+						\
+	MATRIX_KEY(0x07, 0x01, KEY_Q)		\
+	MATRIX_KEY(0x07, 0x02, KEY_E)		\
+	MATRIX_KEY(0x07, 0x03, KEY_R)		\
+	MATRIX_KEY(0x07, 0x04, KEY_W)		\
+	MATRIX_KEY(0x07, 0x05, KEY_I)		\
+	MATRIX_KEY(0x07, 0x06, KEY_U)		\
+	MATRIX_KEY(0x07, 0x07, KEY_RIGHTSHIFT)	\
+	MATRIX_KEY(0x07, 0x08, KEY_P)		\
+	MATRIX_KEY(0x07, 0x09, KEY_O)		\
+	MATRIX_KEY(0x07, 0x0b, KEY_UP)		\
+	MATRIX_KEY(0x07, 0x0c, KEY_LEFT)
+
+#endif /* _CROS_EC_KEYBOARD_H */
-- 
2.26.2

