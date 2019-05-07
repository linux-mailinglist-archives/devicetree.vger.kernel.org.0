Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A6B6C16335
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 13:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726604AbfEGL5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 07:57:33 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42770 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726581AbfEGL5c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 07:57:32 -0400
Received: by mail-wr1-f68.google.com with SMTP id l2so21953189wrb.9
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 04:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iSJwm6tn+7I484rTSQE+9G4s/2gB2UbS4DNi3jkBUBM=;
        b=mNEn/Vr/31eZbnej6Dg0h/hnFDWLlkBcEwMYlTvgR2fZfYHhc8C86b8PHfbQ10RhzE
         OTskncyXPrt0dQjKrKukwuPSxLnLMTzkzUR2z/Jkxb/a+6WDwCVt4lv3ZaF820tYaIob
         tuf16F2dSjNiqPkH5gm9OnbrpTFTKxf6LyzurPi+Va86c17sUsuCrBpGchuK5J17m5xO
         rg4PXE6327aNDlU7NbYNzBVWS91nqt5zldFzY21IhWqlP4FsirL85mUIAQg6/3AB0z9/
         NmnLL1w7VliMQj8ox1Vj6xZ0AB6ypbombWuknSOgJ9y351oasZ0zgBY6yh9HlysKvuq5
         8wZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=iSJwm6tn+7I484rTSQE+9G4s/2gB2UbS4DNi3jkBUBM=;
        b=BnG2KIY7/z+fMW4FOpShLlGSl2b74MNYw2sYrtTb5cZUShAkNU1uvKRwbjOvTJqyXs
         IguQQ2fRLDdXyc9UkwB4R/XSHc46KezrI3osIObR1zom3+0TKvXD4XJShJ0RRwvayYRM
         PB3Na+tDrYlpyjkqJExORZzPA8Mko5jP0AofGGnXjDtiODB3mkc0k8JPMKXsQEzPrvf4
         83FNNbmxVn0f9koIahJrFHChivdZ9tWLrtMcgSizh1+sjdcUJdqirzczw9ldY1+f5Br4
         apzG7Crppjt+6uEV7/Ua/DGMFC95dfhI2rmk6HnSyDftqy+xs7fhPPcVJJFczUdz1F+q
         VB0w==
X-Gm-Message-State: APjAAAWnhJBbzgjiF2G8VdCNaaY8RnwjW74pf+oK+pAXbwTeM68UmOMm
        hu0S6Ui+/8ezNZPzMhZY4qbvKlV5BjY=
X-Google-Smtp-Source: APXvYqxDAVU5GNWwoSpkR+LWWEpkvnXYCivvCs72/0tzaSmpcVNC5sOdYuZ8yVIH+uK3uM0DEJJXRw==
X-Received: by 2002:adf:eb50:: with SMTP id u16mr10188307wrn.54.1557230251531;
        Tue, 07 May 2019 04:57:31 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id s11sm7120274wrb.71.2019.05.07.04.57.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 04:57:30 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     linus.walleij@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
        khilman@baylibre.com
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/6] dt-bindings: pinctrl: meson: Add drive-strength-microamp property
Date:   Tue,  7 May 2019 13:57:23 +0200
Message-Id: <20190507115726.23714-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507115726.23714-1-glaroque@baylibre.com>
References: <20190507115726.23714-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add optional drive-strength-microamp property

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
index a47dd990a8d3..a7618605bf1e 100644
--- a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
@@ -51,6 +51,10 @@ Configuration nodes support the generic properties "bias-disable",
 "bias-pull-up" and "bias-pull-down", described in file
 pinctrl-bindings.txt
 
+Optional properties :
+ - drive-strength-microamp: Drive strength for the specified pins in uA.
+			    This property is only valid for G12A and newer.
+
 === Example ===
 
 	pinctrl: pinctrl@c1109880 {
-- 
2.17.1

