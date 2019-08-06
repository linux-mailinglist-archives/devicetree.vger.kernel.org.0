Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 763498322C
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731905AbfHFNFb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:05:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:40081 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731903AbfHFNFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:05:18 -0400
Received: by mail-wr1-f68.google.com with SMTP id r1so87796840wrl.7
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=60yWYtJLk0Xp9SLelz+MaI60GmV6Utt18fBkUyG2qxM=;
        b=1XsB9wyPJKfVdt0XFULvvBF/+L4sPvBzqlPsQ3/7818JIn78HG6OJumFYaHF72EZiQ
         3r+tbI6kf2XmvaBnMq6a9/lZ/5papd0jJyFpoUtVL53nadn8VtpgPDafseSrDIuOt+UT
         /EOZC41Tt9sDGPOxzi32bafjR1WXbVk/3gWg/V9UJ5Fpw2N7m9BdV4BU7JOCUi66GVAM
         vOKee9IcLeW4v9gjgMpfseHvCaSfgaOf7oL/xhk/+EpuMxjYaBdClEpCYIIj567dUUTK
         4YsjCLeXbhoLlybPpGffo8skD2wRjyHpahZ2KL35fD/n7RtMFVdx4ePceqC4B4/n3Ofy
         U67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=60yWYtJLk0Xp9SLelz+MaI60GmV6Utt18fBkUyG2qxM=;
        b=ITpB+V3kLTbRrtjFzKGa7cGJ/fR9FT4FJ+HNiBBBidYv/insq908tu4K1LjMBhxmK1
         5Kz5FBLs4jIqSum5EqrJ7+eDbZlSDLxMCfLoyBBNkVU2xzO4rhsGkKsEQesNSvf3DWK3
         tuinZLZcc0WTnwy+2eKObPM4ydvcJ9Z8HJm+3ktBiSQxIY2IA1EZqXaD27m/8s8dnd04
         sueUJWWO4Eiw1TRMcJPYKeBlVFOdJ0nnOGOt9nFDPM7hRP7KlZtDo9cM4m8lIVJjNDvm
         ul0gClnOlWeVBcvFhjNUkSduaoInsNkExekcryDsaDNlJudeChfyMmzwyn9NNvmVN3On
         e/3w==
X-Gm-Message-State: APjAAAWOzv347lSSWV8/EAATiAcVa8iA/A/BX90+ttXYG/qkFOiUS7yA
        Z8aM8snHflMQ8L3e9MMr6df3A4Vvfxk=
X-Google-Smtp-Source: APXvYqxe8+FVvkyz0LH3/p+5jXQjRtCu1JfWNK+8gB5Jwg7o9KmjpX18AjkaFMctc3YE7l8bagEx+Q==
X-Received: by 2002:adf:dcc6:: with SMTP id x6mr4927209wrm.322.1565096716745;
        Tue, 06 Aug 2019 06:05:16 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.15
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 06:05:16 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 6/6] MAINTAINERS: add entry for Amlogic Thermal driver
Date:   Tue,  6 Aug 2019 15:05:06 +0200
Message-Id: <20190806130506.8753-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130506.8753-1-glaroque@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add myself as maintainer for Amlogic Thermal driver.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fb2b12f75c37..299f27d11058 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15910,6 +15910,15 @@ F:	Documentation/driver-api/thermal/cpu-cooling-api.rst
 F:	drivers/thermal/cpu_cooling.c
 F:	include/linux/cpu_cooling.h
 
+THERMAL DRIVER FOR AMLOGIC SOCS
+M:	Guillaume La Roque <glaroque@baylibre.com>
+L:	linux-pm@vger.kernel.org
+L:	linux-amlogic@lists.infradead.org
+W:	http://linux-meson.com/
+S:	Supported
+F:	drivers/thermal/amlogic_thermal.c
+F:	Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
+
 THINKPAD ACPI EXTRAS DRIVER
 M:	Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
 L:	ibm-acpi-devel@lists.sourceforge.net
-- 
2.17.1

