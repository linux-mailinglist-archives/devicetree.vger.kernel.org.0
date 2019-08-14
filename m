Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 786368D600
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 16:30:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726126AbfHNO35 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 10:29:57 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:55189 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728239AbfHNO3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 10:29:37 -0400
Received: by mail-wm1-f65.google.com with SMTP id p74so4782592wme.4
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 07:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cjZFeXutoTQ9/qwc4S4Gcm70WvgFxAPchw/gNgg9Wa0=;
        b=NgiLNEQtWUqX8P0Ei3iD8b+27RBLhfEvXaGa5FbFEKc8Bv5yrBx19Hhi8CxjN6q0Xy
         p0GFoQiVrVzNKOYiSNdP/YrNCYo8faWlX/7+qB6ipIC316sqZX+3E5tSEWls1PjjHbEo
         MOm/tL0LaspddVNdp0JWBIwuJp/aYgydIuRb024JoEm6xYNON8zIhaP/O6AjeXe5W5mH
         wXoXCkVcAlK/QpG26EUfCdQTlzKCNSHSZ46l8A8Vq553cSLbNMjU8GjL3DXxrJmNWBIQ
         7NVFnG1NIjtTDdOqlmM21h4P5i805AIMNsyvPqi75lnUIMaJXb+GFE26bJLzamvBZdV8
         ovbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cjZFeXutoTQ9/qwc4S4Gcm70WvgFxAPchw/gNgg9Wa0=;
        b=IT8CKDfCdrmg74vWAVGcVf0GzM+HiILTbbqXe8izLVkYCfgEc+UVANf2UzPjzp70Sd
         hd01YRXhs5Y8mh0BSw8ODI8QFdWLspMWX9hpJsm4VGEsQvHNyg3uoOfRdowk2YJpmGt6
         jTvewmi3ywmMxF8WSU0l1+tEv/PfPf0k2I0vrpeuJkGnLe3qZPCLwWCUW00u+SjvcXK3
         g+azLJAzahdnn8lXXaGV1ZuIckgFBHLiSUnYMYkWhIV3ap11XshvHHbOW16jJX/JX6iK
         eBBi51+on1/6xqIGuDoc1ljANOIbjpaQnMKHoJAwXYPzgS5IP/br4xsOFBFMx1raETdJ
         dDCA==
X-Gm-Message-State: APjAAAWbnvJ5u1fB6Lvdgh5l4m0ZdRfuePJMt8Kte03yaibt+J3ZpthA
        fEJNhN6InStYDCcoR+rjdzASsA==
X-Google-Smtp-Source: APXvYqwnY1gffUMlCVMUCn3kHuB6YdQrHQx7tWm9YoFB/Jk+tK27whKhtRCrnI7ghOzZMtc9UWOcYw==
X-Received: by 2002:a1c:494:: with SMTP id 142mr8635972wme.12.1565792975630;
        Wed, 14 Aug 2019 07:29:35 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 07:29:34 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 12/14] arm64: dts: meson-gxbb-nanopi-k2: add missing model
Date:   Wed, 14 Aug 2019 16:29:16 +0200
Message-Id: <20190814142918.11636-13-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: /: 'model' is a required property

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index c34c1c90ccb6..1a36d2bd2d21 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -10,6 +10,7 @@
 
 / {
 	compatible = "friendlyarm,nanopi-k2", "amlogic,meson-gxbb";
+	model = "Nanopi K2";
 
 	aliases {
 		serial0 = &uart_AO;
-- 
2.22.0

