Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CC371C6AD4
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2020 10:07:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728463AbgEFIHM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 May 2020 04:07:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728290AbgEFIHL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 May 2020 04:07:11 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 365F2C061A0F
        for <devicetree@vger.kernel.org>; Wed,  6 May 2020 01:07:10 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id w7so191095wre.13
        for <devicetree@vger.kernel.org>; Wed, 06 May 2020 01:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xOdCgu/2Jy1tRi9zrYa6LH0k7m/VVjyha5EYFTG8NAo=;
        b=aetJOg64fafwbqr8yYkLGjHl6qzscu85yjX9IHjyMS/h5GpuGUxpoRAUiYs0qqZBi0
         ZDoWMlbT6vYd+OZHgqWo08TI/ZgElBqLEoPr1P8fDk8ybf2Xz0z4d6xf7Je2Cez9n6UX
         kwuHd+/wwRXTGLYKZ1ZxW4HaBaKOBMyOY/2gjmNfKl3ODiz4l6LEVoJasYaHt2QlvVqH
         qIBt6rlgmwptvWBp6ovFpNBRCyGa4rvjEIIhBNiqxNzuUFwWGvUYjr57bHCsW0ztr3re
         m5tXQa6QzSeweTLwmDgtZqT793p7ZQ6cOYcJBClNE3Q33sVQUwWgifH3Kmw46o0p4zM1
         krCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xOdCgu/2Jy1tRi9zrYa6LH0k7m/VVjyha5EYFTG8NAo=;
        b=BpSaYp2CVrCdo5WiYH+QyOMQYmm6zhYBcIar12sQUP40X/qdG+VtCKviTJ2piUe2QW
         WL0QTLyC+wnmiQSk/ajL1uIA7Ut1KwZzCOzUz/PgKYslyHliNQOe7jGlP3olc91Z0vvh
         bJ//cNA+KkWEbW3zsTrq5ym3Tk1coSoNLikQFFeaxWzqk2jZR9JcllhFlSl3n/DkCsmw
         QWMY4AD9OJPn8XtfiskJ8SPokCRbkJXGWsHnOr7w7jgryffd0UOcs6INRex8OHJK6PQY
         iYt335HybxmUAWEdOswcVA8iGeZ3itjamA2gmZuJ6gCCYd2AP3HBiTg+XQE4IJ9bY0Xg
         Xa7w==
X-Gm-Message-State: AGi0PubUBxAq4ImEQEL0csQPZOQJ0zttXoPwjiK4itpDc9vsMxgHqDEe
        gXnfVD7tvq93i8fRvmbAD60E+w==
X-Google-Smtp-Source: APiQypIy9oYBfj3mT0Be+u73kYYCxHD4KaaaPWnaw+q/zH2bB13J5wEk7HAF5mwNCjpdHTIciHNyxg==
X-Received: by 2002:adf:ce0d:: with SMTP id p13mr8748742wrn.66.1588752428801;
        Wed, 06 May 2020 01:07:08 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
        by smtp.gmail.com with ESMTPSA id 185sm1872098wmc.32.2020.05.06.01.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 01:07:07 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: amlogic: add odroid-c4 bindings
Date:   Wed,  6 May 2020 10:07:01 +0200
Message-Id: <20200506080702.6645-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200506080702.6645-1-narmstrong@baylibre.com>
References: <20200506080702.6645-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the board bindings for the Hardkernel Odroid-C4 single board computer.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index f74aba48cec1..11908b151e0a 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -159,6 +159,7 @@ properties:
           - enum:
               - seirobotics,sei610
               - khadas,vim3l
+              - hardkernel,odroid-c4
           - const: amlogic,sm1
 
       - description: Boards with the Amlogic Meson A1 A113L SoC
-- 
2.22.0

