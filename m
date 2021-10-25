Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCD83438D2A
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 03:52:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232178AbhJYByh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Oct 2021 21:54:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232170AbhJYByf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Oct 2021 21:54:35 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67435C061764
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 18:52:14 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id f8so31086plo.12
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 18:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yaB5sMWDeRg8Wvtv8HtqDzaWjvoJExyww+FfG/ZDrT4=;
        b=uflj1WC38Cux4fFGllmthvD+J8givJ+1nYWnprlocYYSxdRRsS0oASqYz00AczK2dy
         YDgKI8F9Umb4dqo4HcBrX5zWM1K7KXw50iu4aRP2U86fC3fdil1v3nV9KfEseAuuoRt5
         b/dNHCYMch/lHaBrysTccht0yTqMg5fbgAwPof+/fbfjZBB7EM6uS7Wp+/ESWkIyjMSg
         T5UHGsJpsht3pz0iwH96EdvJrqCGc8NzcETUz6zldqQbQA9BM9Priibxiszp8P/yUyUp
         4M2yewAfAJo4j2uyLLEOtE/WR3Y6KYstN+t/VjUUnvNq0EvjCTmOQLaz0UC8WbL7m34M
         MdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=yaB5sMWDeRg8Wvtv8HtqDzaWjvoJExyww+FfG/ZDrT4=;
        b=DoN2E7oi5OQANlYbBJheTM4yk/ft9iy4stxZ9G9M16n9rsR9+DWUoa20knCuVmSlOe
         kK02qap2vsu3kJoKDu2WHEo/8izAX6JKogQuE/p5W+puCv2BzbqmEQS6KtsGAbjo3Bsc
         cIXgq6OG5/2QzC1C5aq1Hktdpb0fXAMlwZNDAzKthoSpGm2YeAM60ziEqmwNaDcoAtAm
         TmjOeGIhTKhAUbuk4Z1NJrdTz33lvqqyMIZDKF+NAmob8upj1yyVYFMG10k0kRtw3mN+
         g7+9Z5wUADKjF5C2Gv5MQKWDqyq3Hzu5DlGGQrhH2I4T7C3srt49aggDbBB5CwiAyF/1
         4CPQ==
X-Gm-Message-State: AOAM5308aihmperl/uOOZGuLY0+oRmKtqOyEu5EIDsHhnEGA3+5xUGFv
        3FRvGFt8WOEF7qSnz5aNDgPAHQ==
X-Google-Smtp-Source: ABdhPJx/BF3zt7qnTYuuniMwBlB4LeVyXKA5Wedd7pQuVPEuVE9XHOC9UGlOEtipxNLf61A5jbVuNw==
X-Received: by 2002:a17:90b:4a48:: with SMTP id lb8mr17619416pjb.236.1635126733999;
        Sun, 24 Oct 2021 18:52:13 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id q10sm14855225pgn.31.2021.10.24.18.52.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Oct 2021 18:52:13 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 04/11] dt-bindings: spi: Add compatible for Pensando Elba SoC
Date:   Sun, 24 Oct 2021 18:51:49 -0700
Message-Id: <20211025015156.33133-5-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211025015156.33133-1-brad@pensando.io>
References: <20211025015156.33133-1-brad@pensando.io>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the cadence qspi controller compatible for Pensando Elba SoC
boards.  The Elba qspi fifo size is 1024.

Signed-off-by: Brad Larson <brad@pensando.io>
---
 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
index 0e7087cc8bf9..d4413eced17a 100644
--- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
@@ -20,6 +20,7 @@ properties:
               - ti,k2g-qspi
               - ti,am654-ospi
               - intel,lgm-qspi
+              - pensando,elba-qspi
           - const: cdns,qspi-nor
       - const: cdns,qspi-nor
 
@@ -38,7 +39,7 @@ properties:
     description:
       Size of the data FIFO in words.
     $ref: "/schemas/types.yaml#/definitions/uint32"
-    enum: [ 128, 256 ]
+    enum: [ 128, 256, 1024 ]
     default: 128
 
   cdns,fifo-width:
-- 
2.17.1

