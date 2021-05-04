Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2A82372598
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 07:46:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229846AbhEDFrO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 01:47:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbhEDFrN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 01:47:13 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A495BC06174A
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 22:46:19 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id t22so5784382pgu.0
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 22:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ruzjnf97rqp8KZrHv4F0HwnQ25ygJYhQmfYotCDw800=;
        b=RV0bNxTPJA/hy2w78z4w63S+IFbVsSNYUn7W9ZD/se4+3z4wzd4yyh1Csg3OnhecoI
         SbIvixQuG+Fotr+Jqb4u2/qKqgRLk0CiCekaQAelR6sjn12TkArbW1Kdxa/0MvUobvq0
         i3xqxU89ZBTqN+MIu4slf3C77ghAykJCoeuOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ruzjnf97rqp8KZrHv4F0HwnQ25ygJYhQmfYotCDw800=;
        b=mdD5c5csslWv6mtY8znYYc88Z1Eeo8tFXj5ssyc/aW7EWGLvRcOYkYHprf9RbneJVT
         HXhY6V8PYs4pvZFrMF+Tda+3TIJIOgq8vviPp2jt9WWPyTltw1j5rRtWcfXvEly1hmMU
         QGu6d81KfffFCgDe2GpWp1Tk+ydgeo+C/NneUZWJ6xjSuPIV2BitkGEary03w93xiH9b
         zYrD5RuSOmmFPnP3n7psU0Pib+C5C398Ma8yoB1dxamB18zAHQ17MA3cWaVJ1LcomtWF
         BmYvgfuvLFyW6sAr2hdO69qqjgXpC6t8IpZIca0NJ5L8E5aPdageJJa0jDeXjSd0imdE
         Y8zQ==
X-Gm-Message-State: AOAM530MT80nnYNfvoDMBZgN/7ckkLF20rFrTAWfOqaOt0I+MEMwaNCV
        3d7C9tW6sHe02tJEYw6zAq5pBw==
X-Google-Smtp-Source: ABdhPJx+2dVGuDJktztYOT1pSp69Cf/jvHP/glbQJyGuPOb9zOkXg0tWU8k2nMVL1lNBqjDmjTOlnA==
X-Received: by 2002:a63:a847:: with SMTP id i7mr21492145pgp.203.1620107179141;
        Mon, 03 May 2021 22:46:19 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:bf4e:921c:69e1:5d86])
        by smtp.gmail.com with ESMTPSA id g21sm11512515pjl.28.2021.05.03.22.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 May 2021 22:46:18 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        devicetree@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] dt-bindings: mediatek: Add optional mediatek,gce-events property
Date:   Tue,  4 May 2021 13:46:12 +0800
Message-Id: <20210504054612.3585017-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.527.g47e6f16901-goog
In-Reply-To: <20210504054612.3585017-1-hsinyi@chromium.org>
References: <20210504054612.3585017-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property is used by gce clients.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
v2->v3: move definition to Documentation/devicetree/bindings/mailbox/mtk-gce.txt
---
 .../devicetree/bindings/mailbox/mtk-gce.txt       | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index 7771ecaac586..2ef7ff67cb2b 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
+++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
@@ -35,6 +35,10 @@ Optional properties for a client device:
   start_offset: the start offset of register address that GCE can access.
   size: the total size of register address that GCE can access.
 
+Optional properties for a client mutex node:
+- mediatek,gce-events: GCE events used by clients. The event numbers are
+  defined in 'dt-bindings/gce/<chip>-gce.h'.
+
 Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h',
 'dt-binding/gce/mt8183-gce.h' or 'dt-bindings/gce/mt6779-gce.h'. Such as
 sub-system ids, thread priority, event ids.
@@ -62,3 +66,14 @@ Example for a client device:
 					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
 		...
 	};
+
+Example for a client mutex node:
+	mutex: mutex@14020000 {
+		compatible = "mediatek,mt8173-disp-mutex";
+		reg = <0 0x14020000 0 0x1000>;
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
+		power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
+		clocks = <&mmsys CLK_MM_MUTEX_32K>;
+		mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
+				      <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
+	};
-- 
2.31.1.527.g47e6f16901-goog

