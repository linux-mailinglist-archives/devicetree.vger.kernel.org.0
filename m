Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7E0A35474F
	for <lists+devicetree@lfdr.de>; Mon,  5 Apr 2021 22:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240456AbhDEUEK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 16:04:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234721AbhDEUEG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 16:04:06 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3E4C061788
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 13:03:59 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d191so6215685wmd.2
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 13:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JoeUTxMIo7LMD3N8t52A8FukB5jFgXLkXXTJN8fbj+g=;
        b=g73AJIK25WP7XEAoyKc7uRpenUTjoxW84YeeUt/evdm9XIRXr69JfRXYFkGMqzV5Zc
         GLOq1FHgWcnsdC99b/QWDG3U5HDN2zu5WBLYCpn85QVnMBfA8sXYpyDCPsAIxI0tLYIa
         XgkpOommHHa+TIbX4L+25NYFLckVmXa+WcFXhq5IcdTiUFiWSp65ukjESs2uvBCel5Ii
         jdG4lRVNtnm6815RFBeOE/lNW5XkI1JajH7PLM4cKaDqqVcPNwgmI2qFUpqHAWgjjE81
         8CPbdEWde5U89020coWs3O8nXg5Mdy0kAGsghHkIzD4h5RMOpJkA2+HtP6qmDRjC0Yjt
         p8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JoeUTxMIo7LMD3N8t52A8FukB5jFgXLkXXTJN8fbj+g=;
        b=J72nG6EBG+8p5W8fWeTU2DR2Ck7cKroAuIdqxxS04M4oFrf+JSSfF1BR61RlV9YhKe
         Qabgmi4NuxhaNGkroyITEv0CX87hbqLA55Op6SbxcPpMck8LwpDqWN/5C7NNwmzz/WfX
         zuQ49pqxOl62dNlv0oUBWLalNPQpJvRLFt2aa2F+lRKB9bf2J8vkKJxz1uywJqR/KVf0
         ceytnek6XES4yTp70ZxoBifEScLFyLEgqnkyH/0hrT9bUXK6KtR8jjoM4EKodgAVSTkF
         aqGXt34NI1yQZ0/WkaVI3asPFI+5qlDIrv7HAIMgD6Y5YMDydrGePD9stCyPf6MdEnFg
         M7IA==
X-Gm-Message-State: AOAM532Eoo4MDpZ2eE+BmYkwZyIKeBB/UlR7nX/3GsjjMRc69/bHjAF/
        uYVu+6Wxkk7TyVajsVL8Pm0vtQ==
X-Google-Smtp-Source: ABdhPJy+F/Eu8jOmRExeF5RKu7rRF45ePmTNcKbmTRjD6JUofz2BXs66rVi7VFML/IEm1eiXtHzCBA==
X-Received: by 2002:a1c:7406:: with SMTP id p6mr645945wmc.103.1617653038083;
        Mon, 05 Apr 2021 13:03:58 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id i26sm657406wmb.18.2021.04.05.13.03.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 13:03:57 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: mediatek: mmsys: add mt8167 binding
Date:   Mon,  5 Apr 2021 22:03:52 +0200
Message-Id: <20210405200354.2194930-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for MT8167 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
---
V2: Rebased + fix typo in commit message.

 .../devicetree/bindings/arm/mediatek/mediatek,mmsys.txt          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
index d8c9108c3b4a..78c50733985c 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
@@ -13,6 +13,7 @@ Required Properties:
 	- "mediatek,mt6779-mmsys", "syscon"
 	- "mediatek,mt6797-mmsys", "syscon"
 	- "mediatek,mt7623-mmsys", "mediatek,mt2701-mmsys", "syscon"
+	- "mediatek,mt8167-mmsys", "syscon"
 	- "mediatek,mt8173-mmsys", "syscon"
 	- "mediatek,mt8183-mmsys", "syscon"
 - #clock-cells: Must be 1
-- 
2.31.0

