Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 941C220E8A6
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2020 01:14:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726632AbgF2WSa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jun 2020 18:18:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726170AbgF2WSa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jun 2020 18:18:30 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0209BC061755
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 15:18:29 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id i16so14149867qtr.7
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2020 15:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nEpPOTzpqJXzA5Vx5Bee1tTpx60CqqvAKtskT/vJ8uc=;
        b=e79tUWEsL8AvrHF2OdQPUMllhM1r/2hLcXcTDTXDOb2swkV0H+rmwLUXDzzhRA0aIY
         Vqtnuhc8/A1ggivYXnIqImOgGEQtlxx9VmP60pGanty/uD3xLUF+QSsJ2pA821q4Np5H
         N91Najp71smv05TKPdXPFYs/VjME2SLtOXKCRZ0FTWoRRyXJM0jhIX5H/xZKQ2l65F/F
         dNJ/l6AHmIN5gOYNFW1kI5JVzP3VE5TOg/HAR9otGQj1uRprxHuHWgkFqerxGVbxy4eO
         +ZVytcBEyr/OtyAcDOlh3Tzi7Z1fJR0ID7L1oXHUM7lj359SO24KevtTi8ozzb85+hB4
         tBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nEpPOTzpqJXzA5Vx5Bee1tTpx60CqqvAKtskT/vJ8uc=;
        b=MuD+dfPXEjLLZEUtOtbQbN0YIBMdBNHWLU2lmq+yd0zbQv8Kd+ewx6ezisAI3QHIAV
         6ZgVntBdtFXSv6J6UOMwiMb4guh3eJS+ZN7TTyxuD0ovo6GGArsrNVeGo91Kswh8uPtI
         F7WLAJIIZYBxyXfFFXjin2AcrR/031MYtjJjd/hm9wE9XrOElELTxkAvQNwogKwWMEcD
         daYqy5lYIlqdFRHPBGvHAz0pZTWNx5tahtwfW0c5YiG6lDm47D4KzzAMhDJN0DLO8QVv
         SUnlN6KXZo/soz7QPvZ2QaO7qG4BNylpF9RAdEEAXzIuM68YFzjz3zFTbKeoaPb2qEu0
         mKyg==
X-Gm-Message-State: AOAM531ErDvaRnvncZewAdkXb0umC0nrxm5IVA1SG7KgenNqwsp3F9NB
        lKMc0CICcBLM9ZlkLBdXyMs=
X-Google-Smtp-Source: ABdhPJzXDd3P3kAqLg7wnnNCJEYpgyiwRrAK6S/I+GQND6WYBRRFhv1FNEU7RR0ZWkZHOpGt0kFlzg==
X-Received: by 2002:ac8:1c36:: with SMTP id a51mr18096122qtk.138.1593469109139;
        Mon, 29 Jun 2020 15:18:29 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:92b:9524:444f:ca0e:d637])
        by smtp.gmail.com with ESMTPSA id n28sm1308640qtf.8.2020.06.29.15.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 15:18:28 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     robh+dt@kernel.org
Cc:     yamada.masahiro@socionext.com, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: uniphier-system-bus: Use 'serial' as node name
Date:   Mon, 29 Jun 2020 19:18:18 -0300
Message-Id: <20200629221818.20366-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use 'serial' as node name to fix the following warning seen with
'make dt_binding_check': 

Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.example.dt.yaml: uart@5,00200000: $nodename:0: 'uart@5,00200000' does not match '^serial(@[0-9a-f,]+)*$'

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../devicetree/bindings/bus/socionext,uniphier-system-bus.yaml  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml b/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
index c4c9119e4a20..9fa4f891fa00 100644
--- a/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
+++ b/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
@@ -87,7 +87,7 @@ examples:
             phy-mode = "mii";
         };
 
-        uart@5,00200000 {
+        serial@5,00200000 {
             compatible = "ns16550a";
             reg = <5 0x00200000 0x20>;
             interrupts = <0 49 4>;
-- 
2.17.1

