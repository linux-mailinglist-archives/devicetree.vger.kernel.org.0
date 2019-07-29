Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C212F79335
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 20:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388183AbfG2Sk3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 14:40:29 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:55687 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388181AbfG2Sk3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 14:40:29 -0400
Received: by mail-wm1-f67.google.com with SMTP id a15so54777852wmj.5
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 11:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NL/5zTQnhohIGaIYxAmHMipqwG7WMic3sqIDS1WvWAs=;
        b=Ljx2SdXOenWk9HylJB0m7+GqCQWJ8bOa7rynX0A+nTLES1zIBX6aYXSnDNk6NU88HP
         itdZ60+0KuP8W8UE4ccMSxtZAaJQYznz+WZHwkdvmxOS6FYBoK7tVBBxlqHPadxw7Mfe
         sGs56zxmzg7avXy+SUU6EMm+nymDm5iY3o91KrfMIhPpG/0GTGbuACRflDKgjB20U+V4
         +QRsX/ob4CoDHyWAs/FJlWN/2JkLP9HI+6H4LWOlroC6dCaHuNlqTTiUlcTHcVNJ/vtn
         w947f/pBV8rHgLFWcRO/lY9rniZisw6PS1b6RKp3gwuSu3Jpx6b/8AWRuAphDf6ZGXN5
         7kJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NL/5zTQnhohIGaIYxAmHMipqwG7WMic3sqIDS1WvWAs=;
        b=aBXci/yoE4/STNgDZrzY4ZdEi17SgRPAuTe0Q1IZimC/Z/AWF9Xm9Ov9kzgpmSaWS5
         2tdWmnGKR7GRv2wA3W1lGiOGfI2XBWuHJJDJXyZb3myX26FAwhslNh8EHZh9PDpyaRMX
         MIdk2joRa8pLSXkumegEWDCK+NLNtWlFC+qRt7QKxObVop3aG7tk/TJYN1aBw/LMHGTc
         tMqYjeTlWokMsSsaXxXhK7tg2T6Ohxh/Zhd7npN1r0ZImRKH/Zv4K7VMiwcYChsyHLt5
         QSop+Be0kvzaE4ulYXzOPvnzcz/Vz3/3fKGv1EwD8uVKBAD0t415ubnZqaeGSPP8Y7eR
         Be9Q==
X-Gm-Message-State: APjAAAXzVVIG2aA+8uWtE7Za0WuP/UNAewRbwfSadXJ/fx+CWHrwVNNo
        7cbkLP4HdLxpDi5e6k8sJr8aFA==
X-Google-Smtp-Source: APXvYqzO8CDDHffNjKGGHAThG+qAQeZSgvJNfczqVERJbnhJ/UQrCuabRFPykRcFcXO0leXZ4ffb5g==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr25140377wmc.33.1564425627289;
        Mon, 29 Jul 2019 11:40:27 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:f78c:d00:1570:f96d:dab8:76ae])
        by smtp.gmail.com with ESMTPSA id g8sm60735790wmf.17.2019.07.29.11.40.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 29 Jul 2019 11:40:26 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH 2/5] firmware: meson_sm: Mark chip struct as static const
Date:   Mon, 29 Jul 2019 19:39:38 +0100
Message-Id: <20190729183941.18164-3-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729183941.18164-1-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No need to be a global struct.

Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 drivers/firmware/meson/meson_sm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 8d908a8e0d20..772ca6726e7b 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -35,7 +35,7 @@ struct meson_sm_chip {
 	struct meson_sm_cmd cmd[];
 };
 
-struct meson_sm_chip gxbb_chip = {
+static const struct meson_sm_chip gxbb_chip = {
 	.shmem_size		= SZ_4K,
 	.cmd_shmem_in_base	= 0x82000020,
 	.cmd_shmem_out_base	= 0x82000021,
-- 
2.20.1

