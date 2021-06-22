Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E87843AFB46
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 05:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbhFVDKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 23:10:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231228AbhFVDKZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 23:10:25 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7A71C061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 20:08:09 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id h16so11255305pjv.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 20:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/axYvMfoFLDaKlVP6Tl3B1EkkhrpvpNeyDJW5bdfZhA=;
        b=k83nh7RiqD5V5056qN6WN5ZvDCnNY7sTi5WlZN+3QbXPNZ2g2CkqGDadYDq4XoFeNN
         0Snrfbt7Y2f+NcE03wtJHCU1hBKJmETfVTuCnD13rgueHS+Ad/l0saAD3vC1wNxxSUi2
         eZnVA4f4AQW/pShwvz4okalEODd2eKmF2+pMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/axYvMfoFLDaKlVP6Tl3B1EkkhrpvpNeyDJW5bdfZhA=;
        b=OniaYRf2RsHPK86OqafpmpBeq2v1XwaiPEq58AJgeDZ/3AC/SK2qDhWdQbbkOWPWcG
         CIQh2hOBi13qoU6CVYGJYLh9Op39mt5rV590i3mtReq7gZtgZ/ABU8K7wFUVTH2WGPvL
         qBl+HIlMyIF2KUMqIweKI406idCpR0PY4AsGtFUYDrv7zykbCVw/VO9PKkwTGa9yeGrb
         HdRYLr6YS5fJW7QOfDrLmeEZ7z9zNm5ro+IpizbgbeWn1iVbzkd1o0/+dkGdqSUvvMgH
         /hCoNCCOfQRrbIsh5O2fy1ZrbngOdSi2G1ufYIjjp56F670vcqiv3X8/RqvY4c6jS6Db
         a4jQ==
X-Gm-Message-State: AOAM532ikF/4lS8nq/QbpfS1RErlFltcUBSIbvqQ1onjhE4MhNIL9mf0
        dZWcZeXoh8JCk3zjPS1TmPZfpQ==
X-Google-Smtp-Source: ABdhPJwzlzyWf3yKiyhlNbzn0nwaQRXwZEnBSa4r9G4IGQMWgp7yjmz4s5T6yEUp3O4J48EBirki1w==
X-Received: by 2002:a17:90b:3d0:: with SMTP id go16mr1368208pjb.236.1624331289347;
        Mon, 21 Jun 2021 20:08:09 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:aaeb:6e67:2eb9:f492])
        by smtp.gmail.com with ESMTPSA id z6sm13740722pfj.117.2021.06.21.20.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 20:08:08 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        devicetree@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Jassi Brar <jaswinder.singh@linaro.org>
Subject: [PATCH v3 RESEND 2/2] dt-bindings: mediatek: Add optional mediatek,gce-events property
Date:   Tue, 22 Jun 2021 11:07:43 +0800
Message-Id: <20210622030741.2120393-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210622030741.2120393-1-hsinyi@chromium.org>
References: <20210622030741.2120393-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property is used by gce clients.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mailbox/mtk-gce.txt       | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index 7771ecaac5868..2ef7ff67cb2b0 100644
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
2.32.0.288.g62a8d224e6-goog

