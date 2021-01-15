Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 990482F8884
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:37:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726891AbhAOWhH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:37:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726584AbhAOWhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:37:07 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49CD1C061795
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:36:27 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id b3so6406162pft.3
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:36:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A3QHeBv0dD4s5gNfnmON1tlU9NgzLsj2NG7ehBQ00dQ=;
        b=mtSWsJyyn/E3m/bOxirC2eQylWPD/zEdB3jMcJo97C2FkFN1wnTVnPymt6cD365E/4
         rhccHDZS8Lmfxz6a16Hi+8LK8UYEspZfbQ3WwtjfaxRhQuKrY9z9Rl38ZoI7089PQ9Ub
         vVkqjTndk4IToHXeSSwzXQBuXXkSfBTkczRuc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A3QHeBv0dD4s5gNfnmON1tlU9NgzLsj2NG7ehBQ00dQ=;
        b=bT3nm1VJP3vWpnVAVQ+NE014Dn4sHrt3rvkf2AxIxPTN6hzLU3c1g+7mlJLhaHIfZF
         Xqw0xCx31odOSf297ygDH2ZgepLs6rtWYpn6g8pk80hJxKopyNrFNtS5tHEAQHmX/Ok7
         iMojU3cgdzhgyzaNqk6wpVKV5t8d3/AH8sztgaM0cqzmlI5bp5/Iqy61g/L89SfWDcdl
         GUhCLQqnGRe7A2/glT+gX9TJn87ffEmrj71ZSiIjlLqjx/BH8oeZdLREKLJHFRDHgAPe
         ZxeaFIrDYWNxDpdtUsnMfgMkC8Fphm1nbkj3W86hNnwHRQ05pFjjYsVx9wljeg09KmV+
         1hXw==
X-Gm-Message-State: AOAM5314UXghR+5CQVHQkeiP9DagPsxeYhToEYReONr2yhe1HeDCwhQa
        eYkCPpVu5+sj6GpOmlYyC0ygng==
X-Google-Smtp-Source: ABdhPJwlwsNQq32Qc8tMrciESRZ9K2Hi+zYf71D6e1b++O6SYLlXBMaa2smWgYVhaUvtUoylYX21kg==
X-Received: by 2002:a63:b05:: with SMTP id 5mr15071946pgl.163.1610750186891;
        Fri, 15 Jan 2021 14:36:26 -0800 (PST)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:a6ae:11ff:fe11:fd59])
        by smtp.gmail.com with ESMTPSA id l3sm5208670pjz.27.2021.01.15.14.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 14:36:26 -0800 (PST)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>, dmitry.torokhov@gmail.com
Cc:     swboyd@chromium.org, dianders@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v6 3/3] dt-bindings: input: Fix the keymap for LOCK key
Date:   Fri, 15 Jan 2021 14:36:17 -0800
Message-Id: <20210115143555.v6.3.I96134907488f41f358d03f3c1b08194f9547e670@changeid>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210115143555.v6.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
References: <20210115143555.v6.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Decouple LOCK from F13 and directly map the LOCK key (KSI3/KSO9) to
KEY_SLEEP action key code.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

Changes in v6:
- New patch in v6

 include/dt-bindings/input/cros-ec-keyboard.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/dt-bindings/input/cros-ec-keyboard.h b/include/dt-bindings/input/cros-ec-keyboard.h
index a37a8c5701219..f0ae03634a966 100644
--- a/include/dt-bindings/input/cros-ec-keyboard.h
+++ b/include/dt-bindings/input/cros-ec-keyboard.h
@@ -19,8 +19,7 @@
 	MATRIX_KEY(0x01, 0x04, KEY_F7)	\
 	MATRIX_KEY(0x02, 0x09, KEY_F8)	\
 	MATRIX_KEY(0x01, 0x09, KEY_F9)	\
-	MATRIX_KEY(0x00, 0x04, KEY_F10)	\
-	MATRIX_KEY(0x03, 0x09, KEY_F13)
+	MATRIX_KEY(0x00, 0x04, KEY_F10)
 
 #define CROS_STD_MAIN_KEYMAP	\
 	MATRIX_KEY(0x00, 0x01, KEY_LEFTMETA)	\
@@ -50,6 +49,7 @@
 	MATRIX_KEY(0x03, 0x03, KEY_5)		\
 	MATRIX_KEY(0x03, 0x06, KEY_6)		\
 	MATRIX_KEY(0x03, 0x08, KEY_MINUS)	\
+	MATRIX_KEY(0x03, 0x09, KEY_SLEEP)	\
 	MATRIX_KEY(0x03, 0x0b, KEY_BACKSLASH)	\
 	MATRIX_KEY(0x03, 0x0c, KEY_MUHENKAN)	\
 						\
-- 
2.26.2

