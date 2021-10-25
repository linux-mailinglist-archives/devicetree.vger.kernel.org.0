Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88978438D20
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 03:52:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232143AbhJYByf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Oct 2021 21:54:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232124AbhJYByb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Oct 2021 21:54:31 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3CF4C061767
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 18:52:09 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id t7so9365978pgl.9
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 18:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=75BUDHsCAc/I/IWJxwpyHr24/zOyWSJ/QNW0ySt+dfg=;
        b=My3P6rOTPOzPfq2Fz7QDcal86fAyuhU8/JKHhqJv7jrknvkIQmnVXKHgwK4tKxoEgz
         ZmXcMbqZ5IIOZ0//lm868qZBOcLS9yPL+6eD7T1OQkS8aJ+5lJBgSvduEIV2Ddgjn7b8
         Qf4y3fALRYTCynERow8urdMsyKBZLDrtAjPAnriaaBOJOFYvyxlwwhUABqym3Ws5TPwO
         Vi4uP97+R7kn0beA7wSefc8JdEnAyiuPUb3ia4PdaahZY7ght4IP2vmRjdl5Jg56Vfny
         wUaKWkb5jEQCZYwLG91Q5R+T+WP1i3DsIfpWFxyTa6eMC4Lv6s8MltzP6/kpGzBj/AF2
         xxRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=75BUDHsCAc/I/IWJxwpyHr24/zOyWSJ/QNW0ySt+dfg=;
        b=MzTNKtQEEylC2lH63rnE8MZ7RmlMbjCMPCD+xgSJMzPfiviwrMnHBMxdjgXQGew+8P
         edwEHiWIokr1YvNlt+GUBNbxhcMaqRh0cf4RPKHNiVbBbtL0fovuHG2JISRzNB8uIs1j
         +FQ4ndbAGW0LjZaZNYyxPAxuBY0Kj5GTGE9a3W/dp2Hbv8w/Uk2rZGp2qaE9IvK9lZNQ
         bNmwqOp+JOy3IOPRFN/MaXHpJgw1cs/DnS35yZsCiz+nNLs5xNBDYbQVlkFeF0zYv0uk
         3TlDk47H+ZzvuN9yrQdLG+Z0CPA89NIOZHdCj2F6fKmJ4gKajEa9I1VwNtbQe99QctUY
         tPLg==
X-Gm-Message-State: AOAM533tneeoO5PhfK57Ebf/k3HQEFjCyMLbMdZePbZp/2tEBH/UoNi7
        VO/VNRS3z0zj1IkJxhzHwTVamg==
X-Google-Smtp-Source: ABdhPJwvmW2dIpmUc08158xMNoS8xGPlQCmkSKopRGJtMHLYtsb/gmoEYjt0Fag/88VD9XPgJuUUHQ==
X-Received: by 2002:a63:7142:: with SMTP id b2mr11127879pgn.433.1635126729456;
        Sun, 24 Oct 2021 18:52:09 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id q10sm14855225pgn.31.2021.10.24.18.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Oct 2021 18:52:09 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/11] dt-bindings: Add vendor prefix for Pensando Systems
Date:   Sun, 24 Oct 2021 18:51:47 -0700
Message-Id: <20211025015156.33133-3-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211025015156.33133-1-brad@pensando.io>
References: <20211025015156.33133-1-brad@pensando.io>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for Pensando Systems: https://pensando.io

Signed-off-by: Brad Larson <brad@pensando.io>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a867f7102c35..4d3d29490a12 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -880,6 +880,8 @@ patternProperties:
     description: Parallax Inc.
   "^pda,.*":
     description: Precision Design Associates, Inc.
+  "^pensando,.*":
+    description: Pensando Systems Inc.
   "^pericom,.*":
     description: Pericom Technology Inc.
   "^pervasive,.*":
-- 
2.17.1

