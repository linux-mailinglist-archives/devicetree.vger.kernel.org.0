Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B246D327AE
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 06:34:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727030AbfFCEd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 00:33:59 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:41074 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726806AbfFCEd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 00:33:58 -0400
Received: by mail-pf1-f194.google.com with SMTP id q17so9825974pfq.8
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 21:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3pFTY68CYf0vqkaIF9RkUPvim3fj+DjvxB3baTxp4Mk=;
        b=RQSvUzIgUKgIsNlQFm+7zwJeVC5MSGMQ7g3/DtHR16ldFiUtk0+JARXtgZwEjl9tbN
         9hWW1p5DfY6fy/aBLs4Yymn5h3QUKDGbkoEPEt1I/+q7XpVzAK46qrqE/1RGqPuPtlv2
         oTdErhd/k+QH1OsnOMAFqzaVQi6I8u9i9UvY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3pFTY68CYf0vqkaIF9RkUPvim3fj+DjvxB3baTxp4Mk=;
        b=gF3pMgl/Tvimf1RSHBcbNQ3PhJdHWoUUERmiKO8fQhUqCyXT4JIzv21ZNEb40+gFhW
         HfFX8YemNB8qp63t1a0w5NxCnx3gcr9QoUuPWOOewCteQXlObSDn6UTVZ+fcq5yUDKEU
         qSxCBgZhT8um1SztyXiXH79X2Mb/iifPcdWFIW70eCwX0RTuGf8Z+GYmwh4IpZEuayHc
         bAzx29Z1JiO1KnzDdolHgxuEonLfErdUjJzUMzzal/jDIwpsQJPmfR1oqGGoTOsoWl2w
         troJR0MhLXaNBAgtFx03EVSvJfJ6AzpcUKAkwkaHeCMtyYf5327ESILa1HuNQtxdPn7a
         k1WA==
X-Gm-Message-State: APjAAAU80I2Z7nR2bFxVseV0TnLsQj/8g7plAHsQY8U3rTbGYtT+QMVF
        GjrQNK6s3ruBtXdkjbgzzX9tuw==
X-Google-Smtp-Source: APXvYqzy0pOcm1foPAUC6fqZXlzM7mUcjUylak9ZglBCN1Q2GIU98tYWPiPis4kHfvZEn5RQOneLLw==
X-Received: by 2002:a17:90a:730b:: with SMTP id m11mr27194254pjk.89.1559536438112;
        Sun, 02 Jun 2019 21:33:58 -0700 (PDT)
Received: from localhost ([2401:fa00:1:b:e688:dfd2:a1a7:2956])
        by smtp.gmail.com with ESMTPSA id j23sm13509733pff.90.2019.06.02.21.33.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Jun 2019 21:33:57 -0700 (PDT)
From:   Cheng-Yi Chiang <cychiang@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Hans Verkuil <hverkuil@xs4all.nl>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Russell King <rmk+kernel@armlinux.org.uk>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org,
        linux-media@vger.kernel.org, alsa-devel@alsa-project.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH 5/7] ASoC: rockchip: rockchip-max98090: Add node for HDMI
Date:   Mon,  3 Jun 2019 12:32:49 +0800
Message-Id: <20190603043251.226549-6-cychiang@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603043251.226549-1-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Let user specify HDMI node so machine driver can use it to let codec
driver register callback on correct hdmi-notifier.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 Documentation/devicetree/bindings/sound/rockchip-max98090.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
index a805aa99ad75..dae57c14864e 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
@@ -7,6 +7,7 @@ Required properties:
   connected to the CODEC
 - rockchip,audio-codec: The phandle of the MAX98090 audio codec
 - rockchip,headset-codec: The phandle of Ext chip for jack detection
+- rockchip,hdmi: The phandle of HDMI node for HDMI jack detection
 
 Example:
 
@@ -16,4 +17,5 @@ sound {
 	rockchip,i2s-controller = <&i2s>;
 	rockchip,audio-codec = <&max98090>;
 	rockchip,headset-codec = <&headsetcodec>;
+	rockchip,hdmi= <&hdmi>;
 };
-- 
2.22.0.rc1.257.g3120a18244-goog

