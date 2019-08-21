Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C2F1D97C83
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 16:21:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729585AbfHUOVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 10:21:38 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:47043 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729440AbfHUOVF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 10:21:05 -0400
Received: by mail-wr1-f65.google.com with SMTP id z1so2203839wru.13
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 07:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OqX/ImXXX8Z4O+Ei2v1LhFkdAdb41P31AwRDJO9BdNk=;
        b=NvbbDwY1XDtyyzi2gbpW/zIgiFRA8TOFuNpW8JxN6ROQkrtih4k1zPD/F16/u2KfPv
         u1xIP8Nk+l4jQtYtZwvelSBTpp3nVXsKDJtyYrrFlV18FwqFoWbgk7a0s5wwinOuUGhc
         rMfhLIxyQDNZ1q75qEwg5dPLmfswO1+YDrx/1YheLRPhk2VJma3cDESVjU3Pl8gU37mt
         apSmV3rDAk4Rl1oxI9Y4nY3md/IXSmF7uibmUhNv6sTSORFOa8BaWpmzZWl/HMi2pPJV
         MJbM9M1bybRQBLSrTGU6d2AVB1118LOxYXxWHZ9fisuPa34x7AjZopsQEOze+QtulY9D
         DxZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OqX/ImXXX8Z4O+Ei2v1LhFkdAdb41P31AwRDJO9BdNk=;
        b=BMok6mOeUceA0QoZrwvXiWtzVoylPkUrPQdjMZYJAGYJaQ4gHC9rcg/hMY8Mnbktjk
         ODrZJiXwBM6Oc+YDDT5+8EWRgeAkFyoGk81W1EbeC9F06wKMffdATULPSHjeTNJ+Sq6g
         bOuX77jdjGXOxLJC+0rrQPxyIBiAe92AatzehhUj63Z/eVdAt1vboxj3h8rEdeJGhj8v
         Kpl2J1k/QbHHxrXO/S8yfdqx1hchhDjLQSthuae5c7LY46TY7PPoaMtaOHWOyrToOrV/
         7asEXDd1+uZMmWRi/X20A7sLaf8HSbPmBjLYQK4Mu8B/1hQbkSmQffx43S9/Oitj3nGl
         O4fQ==
X-Gm-Message-State: APjAAAVvGKYYrFXu83taG0aYADKf63i9j8OA5uiWNLlgyxEtT+WX0RV0
        eOTlOgdGy9yQ4d8PxQle06nWCw==
X-Google-Smtp-Source: APXvYqx0vj8hLMqmfE14RFd4rwqLhHwh0J0v/lF1ibKLjjeaHMZ9g7uibDy5qziEYX3j69dk4bwppw==
X-Received: by 2002:a5d:6911:: with SMTP id t17mr40634132wru.255.1566397263853;
        Wed, 21 Aug 2019 07:21:03 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 07:21:03 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2 10/14] arm64: dts: meson-g12a: fix reset controller compatible
Date:   Wed, 21 Aug 2019 16:20:39 +0200
Message-Id: <20190821142043.14649-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-g12a-u200.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
meson-g12a-sei510.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 465106d37289..74c587411306 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -2215,8 +2215,7 @@
 			ranges = <0x0 0x0 0x0 0xffd00000 0x0 0x100000>;
 
 			reset: reset-controller@1004 {
-				compatible = "amlogic,meson-g12a-reset",
-					     "amlogic,meson-axg-reset";
+				compatible = "amlogic,meson-axg-reset";
 				reg = <0x0 0x1004 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0

