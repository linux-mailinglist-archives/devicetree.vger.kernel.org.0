Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93E9D34C1BB
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 04:01:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231185AbhC2CAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Mar 2021 22:00:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231209AbhC2CAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Mar 2021 22:00:08 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93219C0613B3
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 18:59:57 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id s11so2811002pfm.1
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 18:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=4v8aBx78UIl9kJyUAEU+fhreTJLmflo7CPIF+/o/lfo=;
        b=Tr+1CWmLMakwQlxhNoswu2buyvgjUudoEUlG2okr8+JGP4rXEKwXWRnZ1qz+nYllZ4
         46TFxNerPY3WEoA2o5miu5flNC/sN1W6f2ClG0GxbTTZttO5iHfrDClCB6q2BhOHhTGn
         oiTUDjuPdD6dKrSfMhQtcBmtIxAHNo0h04NbkSHqHVEdOosu/YTpDVWMqdCA3f1EBLdo
         uLnH4jTTeY4MMCL0YZY0IEnsUZIs1GzlZnclqmAQoRoJC49o5+0g+pjD2uwPvuRl9N0U
         1It7VbeDJtk1EJqERhOxRtKHK26xJI1yj5JKACD3lM/4PHrcPEhFD8bH1QmwgvGHx+ND
         hYQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=4v8aBx78UIl9kJyUAEU+fhreTJLmflo7CPIF+/o/lfo=;
        b=PR6O2wDMbIBGM2E95wFR2O+XDcuiX5Fovr83PatEjb9bTNzURS0BF9vUlqVxBY1DcC
         5butgh+XWbMBbpV9uCLSFQf9X/YF3fzICOF6CDZYlpPRBGjK3CgJgsTOPKFdGQn8Ff3O
         Nzs3YCHa5V6ODRxtw4yvHQqkJPGkHLZZs0/iOVEgCYwQh8lqjMTNS8H68ltHTGllLsu9
         3ePslWyQPBilSwQXaa5X0qRlJd7tBgCMAgKyQo7KSIlEA2+kuXugRPJOSwEpKsSw490N
         TL4n3hHqrUfWuiWkRsnT2IIScEdlFkXQEB0Xa6cjTrA+ryvxXnHT4DS8Hww60lz2waug
         kTwA==
X-Gm-Message-State: AOAM533z6TRCpBZu9AZOgkZkkFxm9jSSoZMgsKxwVpUogOi1WLHRjfgU
        TBbLCbtxwpKlMnmnS4z1bOpxiQ==
X-Google-Smtp-Source: ABdhPJw48cz/datRyGFev9rtD2ksuMeSNum0EvrgTUC7185VOSAZOYAli0CmY4fU59gozDw6W7rGGw==
X-Received: by 2002:a62:8c05:0:b029:1d8:7f36:bcd8 with SMTP id m5-20020a628c050000b02901d87f36bcd8mr23211066pfd.43.1616983197090;
        Sun, 28 Mar 2021 18:59:57 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id w37sm14728027pgl.13.2021.03.28.18.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 18:59:56 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 08/13] dt-bindings: Add pensando vendor prefix
Date:   Sun, 28 Mar 2021 18:59:33 -0700
Message-Id: <20210329015938.20316-9-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210329015938.20316-1-brad@pensando.io>
References: <20210329015938.20316-1-brad@pensando.io>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for Pensando Systems, Inc.

Signed-off-by: Brad Larson <brad@pensando.io>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f6064d84a424..9a21d780c5e1 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -850,6 +850,8 @@ patternProperties:
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

