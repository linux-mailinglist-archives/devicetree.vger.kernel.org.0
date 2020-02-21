Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B554A1681E2
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 16:36:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727039AbgBUPgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 10:36:32 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:35607 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728968AbgBUPgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 10:36:21 -0500
Received: by mail-wm1-f66.google.com with SMTP id b17so2380195wmb.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2020 07:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eFN2VKHrE+JD0cGAI+3A9MIQDzvF5Lgt98hOYp/CejM=;
        b=YJwIqRv9ZAZT+JufvECzrUvECj3c7vl3DwyjpavnRiTUC+BT5MwCGuUuHrmuPh5Qdx
         2k2nK57li5jZtok/isZ8Y1ljxslqxASi+smgJ7u9748rS31vEE6rk1FFWUbLXsNaFofV
         WC9+91sUznQKJ4ukv+rpRKMuxbM8RZgHoBZyWBPbD0POsX8WiOb+0mYGMRZ4w9iu5anB
         PV2NTKPrVoTm9H6mFTrDDZISPtGpVmOjN6OQMXYBeRUeZh21ze7FU98JEInnGCL2lpOo
         CK7zxw0pRThM7dM1fWfJlbzxNQP95XAMC63rKo7kS7d/iCJPCdB1RkSa+kMv8AtG/3Si
         M6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eFN2VKHrE+JD0cGAI+3A9MIQDzvF5Lgt98hOYp/CejM=;
        b=cHOSNDFSDpoz0OpbU8QUXWiRHij/rwOk/roa/NIaVhMWObcSArEVOFySbUN2Z+fG2X
         p9qqn+L5UBIeTzb0L0y7qeLqaWTqmGPJGRp1fHZdGTo2bEmjQzENwUwlXpkuc6PCJkJ0
         XbqFlxY0qxB2QEQU9EGLWdL1Ga872774LdsKjn5AtfHaeqYaedBrdIC4haom1ZgHTtF1
         bLcwiRTCjL8WsOIU2A5XltvqB+X/JNdxCgRYFbEjmtaA0VGg3LTMAQpoNwrKhkmex/Ac
         5iWp0R62VMe5QGZt65mFVRXKmZxVwupdTfAwzTOL54L318UHbuYrUyGYb8eSsC9v2L3H
         pIMw==
X-Gm-Message-State: APjAAAXh5DbylA6XWheemdG0SsOEaL9ko8mtnoHUqZbxyznuFuAMrtev
        D/uA03aHUnUQM8DEIsHxlWdWaA==
X-Google-Smtp-Source: APXvYqyKrZMlHSg/htp/5+30XIfFhh5aJwM5uacnmK48s3KUO/TfzxUThJS8Jhao+rZrzsLIALqGhQ==
X-Received: by 2002:a7b:c14d:: with SMTP id z13mr4597867wmi.71.1582299379163;
        Fri, 21 Feb 2020 07:36:19 -0800 (PST)
Received: from localhost.localdomain (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.googlemail.com with ESMTPSA id z25sm4198782wmf.14.2020.02.21.07.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 07:36:18 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH v2 3/3] ASoC: meson: axg-card: add toacodec support
Date:   Fri, 21 Feb 2020 16:36:07 +0100
Message-Id: <20200221153607.1585499-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221153607.1585499-1-jbrunet@baylibre.com>
References: <20200221153607.1585499-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make sure the axg audio card driver recognise the dai_link as a
codec-to-codec link if the cpu dai is the internal dac glue.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-card.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/meson/axg-card.c b/sound/soc/meson/axg-card.c
index 372dc696cc8e..48651631bdcf 100644
--- a/sound/soc/meson/axg-card.c
+++ b/sound/soc/meson/axg-card.c
@@ -303,7 +303,8 @@ static int axg_card_cpu_is_tdm_iface(struct device_node *np)
 
 static int axg_card_cpu_is_codec(struct device_node *np)
 {
-	return of_device_is_compatible(np, DT_PREFIX "g12a-tohdmitx");
+	return of_device_is_compatible(np, DT_PREFIX "g12a-tohdmitx") ||
+		of_device_is_compatible(np, DT_PREFIX "g12a-toacodec");
 }
 
 static int axg_card_add_link(struct snd_soc_card *card, struct device_node *np,
-- 
2.24.1

