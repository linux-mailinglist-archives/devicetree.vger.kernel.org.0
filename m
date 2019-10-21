Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6AAE4DEBB9
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2019 14:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728442AbfJUMM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Oct 2019 08:12:56 -0400
Received: from mail-wr1-f54.google.com ([209.85.221.54]:32792 "EHLO
        mail-wr1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727685AbfJUMMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Oct 2019 08:12:54 -0400
Received: by mail-wr1-f54.google.com with SMTP id s1so4942659wro.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2019 05:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ug6kgZ8QOW8p9olYnlxtYa3obtNRGbiAcS8//CDGv28=;
        b=inqEST1a6rdLKa1B/0C6T6R0CsruEN5vy5ukFVnUdzLBKUp/4JTrjWv0mAGz89BedA
         UfXx6IW4sL/v0AzcWIyTz48nmyHNp2bqnjc017MUG0p3d7XtdhyjkBmH+5tShdJznjOo
         Svq1/pXyzlDefQwr9OXm0J2MecluaH9LuHi+18Pah73Sf5Wjr++d6AV44FEqVst8C0ZY
         QRcDLZ7uNoojfiUfIwhrii9U6FRuFfo/15MK/qfC4E1uj5OXC3H1YJccfWRO2cO5o3XS
         wgw34x+TQL1OH3qPUlkT/gDgsRwo5aQ84ROFkzZxZTQinobFTQKyAe5u6DORlVIB2xtr
         W0MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ug6kgZ8QOW8p9olYnlxtYa3obtNRGbiAcS8//CDGv28=;
        b=dV7SCTjFvhVc2lZG8uY4T/IYHpdgHeLzGSDZV8BKClGbeZ4opL+dFMckaUcM6BxIQt
         Jbf6AsO7i45a1YSsb8BL0EeFrRp4fa1WwZ2xPh6egoc29pk190YVrVCCEVcyiJkunPQA
         MDRv5D+Rwl+IpQv5kYZiAV8pHN8mg8aHvgPcCSbxDuXYBiPY9LmWmpPunMtdRYcZSaoX
         pp4YPk5vtl1AyWnVrxPYRnXYdwBjQ+2TZ3ihJjIS+At5XiuDiDg3qVG1ObOLpCd8e26/
         P54hPSub4JE9O8zDk9pW9Yrdw6xS8EANaQnYviewRFxh40H2PDiwXTJPSQcYwPevsNyP
         5KUQ==
X-Gm-Message-State: APjAAAVbfviwMAiJJNydgMvBOD8L8ZLvvyT3kfyWlu2RT4QPDa33JUsm
        PhrpKIrTapxHKsnAYyV26hmPg0elBjktIA==
X-Google-Smtp-Source: APXvYqwkOWiFa1GyuBns3ZT8QnSnTQywnuj2+o19cc6w/MTd9XbSaN0GEL7me6vG9IS86KoDyMHnLw==
X-Received: by 2002:a5d:6a42:: with SMTP id t2mr3138677wrw.155.1571659971007;
        Mon, 21 Oct 2019 05:12:51 -0700 (PDT)
Received: from localhost.localdomain (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id n205sm1958905wmf.22.2019.10.21.05.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2019 05:12:50 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH] media: dt-bindings: media: add new rc map names
Date:   Mon, 21 Oct 2019 14:12:49 +0200
Message-Id: <20191021121249.25143-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new entries for linux,rc-map-name:
- rc-khadas
- rc-odroid
- rc-tanix-tx3mini
- rc-wetek-hub
- rc-wetek-play2
- rc-x96max

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/media/rc.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rc.yaml b/Documentation/devicetree/bindings/media/rc.yaml
index 3d5c154fd230..e83db8559443 100644
--- a/Documentation/devicetree/bindings/media/rc.yaml
+++ b/Documentation/devicetree/bindings/media/rc.yaml
@@ -83,6 +83,7 @@ properties:
           - rc-it913x-v1
           - rc-it913x-v2
           - rc-kaiomy
+          - rc-khadas
           - rc-kworld-315u
           - rc-kworld-pc150u
           - rc-kworld-plus-tv-analog
@@ -100,6 +101,7 @@ properties:
           - rc-nec-terratec-cinergy-xs
           - rc-norwood
           - rc-npgtech
+          - rc-odroid
           - rc-pctv-sedna
           - rc-pinnacle-color
           - rc-pinnacle-grey
@@ -120,6 +122,7 @@ properties:
           - rc-streamzap
           - rc-su3000
           - rc-tango
+          - rc-tanix-tx3mini
           - rc-tbs-nec
           - rc-technisat-ts35
           - rc-technisat-usb2
@@ -139,7 +142,10 @@ properties:
           - rc-videomate-k100
           - rc-videomate-s350
           - rc-videomate-tv-pvr
+          - rc-wetek-hub
+          - rc-wetek-play2
           - rc-winfast
           - rc-winfast-usbii-deluxe
+          - rc-x96max
           - rc-xbox-dvd
           - rc-zx-irdec
-- 
2.22.0

