Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2125728C354
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 22:52:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729715AbgJLUwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 16:52:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726510AbgJLUwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 16:52:30 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82899C0613D1
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 13:52:30 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id e23so11422705wme.2
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 13:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vk78HTb3g3GFhHoMLy63wUXR7v6SB8pzbu+zEcFuwxY=;
        b=E8mDs5mZp6J/0zwJfLR9Iqijw+qydVU4CBbFxcWFphOnguKNGIifKZ3bv790L3nxln
         aM49OdMwlIaWJdQSkfV2yvxvyx80C2SZgMiuuFSjBMDCsNUROZqeUQsAYqy6ZqthOmzZ
         cX3TZ/jpvCdIf88T9nxJUCvMnI124IOasK/GqTiQJZvxI+ASpocyYjQ3Oa07SKRjLa6e
         uF5xOHLZyc0v0iPjjZTAUxcW2arRHJYZdmR5xvkh1QWELCQfs1Q2KRucXjOhQ7PYmD3f
         Yi6708M4QuBPRRHvLoHbW5WWf5xfhsqLAglz1+4VdggCSxteJS3b43fNK04yKxmovC9C
         OBBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vk78HTb3g3GFhHoMLy63wUXR7v6SB8pzbu+zEcFuwxY=;
        b=ExdqtiolDBxWUOsdGLhpQBnFghDwXxPTxqvmNMNik9Gbit/2CfPUUJSn0f3NEs1EUM
         uDXl4dAlaDG2VnGkkHZ09Ge63BI2vRp6GC6VHbECv9NA5gvSV0oqewALZ6FV+cbq59Oh
         v0obCnf2qd8sKfIdeFA5t4HFxwml71Tyd+lDXbr8F5lXaNm0FhdLoup/64MTVqybRk7G
         tKNa1Fd+2M3gnA5M6Vinp9BTUi3PSd3WZvQi17/xAUf+Mq7UPGm+8GVjswjsC7ohwAuo
         8gJipG6xCHgHbXil+kJg1K9BMZWGWvv89S8f118rPuOZZkyBckRoSTxoMyQ1cQbqMBqC
         WWMA==
X-Gm-Message-State: AOAM532MCllc3hVay937m3H6gZ9EOgPN6InjdCIk4tUY4t5tqDaNfV6x
        n7Z0MYp94RDrlVzX3D8gauf9Ig==
X-Google-Smtp-Source: ABdhPJxH+i4NyaMXqUdqcOmfZTTVfpWKrHSHAA8zu7613ddayil08vXreAcAxfwelDI1arJ3XN/1Iw==
X-Received: by 2002:a1c:2c0a:: with SMTP id s10mr12394276wms.103.1602535949000;
        Mon, 12 Oct 2020 13:52:29 -0700 (PDT)
Received: from localhost.localdomain (170.175.185.81.rev.sfr.net. [81.185.175.170])
        by smtp.gmail.com with ESMTPSA id o184sm3623936wmo.37.2020.10.12.13.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 13:52:28 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-iio@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, pmeerw@pmeerw.net,
        lars@metafoo.de, knaack.h@gmx.de, jic23@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: iio: adc: auxadc: add doc for MT8516 SoC
Date:   Mon, 12 Oct 2020 22:52:17 +0200
Message-Id: <20201012205218.3010868-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the auxadc binding for MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt b/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
index 78c06e05c8e5..1b7ff9e5615a 100644
--- a/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
+++ b/Documentation/devicetree/bindings/iio/adc/mt6577_auxadc.txt
@@ -17,6 +17,7 @@ Required properties:
     - "mediatek,mt7622-auxadc": For MT7622 family of SoCs
     - "mediatek,mt8173-auxadc": For MT8173 family of SoCs
     - "mediatek,mt8183-auxadc", "mediatek,mt8173-auxadc": For MT8183 family of SoCs
+    - "mediatek,mt8516-auxadc", "mediatek,mt8173-auxadc": For MT8516 family of SoCs
   - reg: Address range of the AUXADC unit.
   - clocks: Should contain a clock specifier for each entry in clock-names
   - clock-names: Should contain "main".
-- 
2.28.0

