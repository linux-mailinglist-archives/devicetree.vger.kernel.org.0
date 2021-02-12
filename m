Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FEC3319D3C
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 12:22:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbhBLLTg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 06:19:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230134AbhBLLTd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Feb 2021 06:19:33 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2581DC06178A
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 03:18:48 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id gx20so261096pjb.1
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 03:18:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5biKq7NugFH5645R57SKe1mgC1BP2ckBoaTjbO3BPZE=;
        b=NCgoSjY/AMkFT1Q+TOjkW+QtV2Tgv5rRg6PXJ7EnfbP1PPBhrvLSMGJ2tMnLqGjvtS
         hTZ1DG03+SMrZ6Bs3yBMlN5TnazwJrXYZNZvBQFot6TT7ndKRG4QylMsD6ASbF42Tyfa
         C5XqIi0RdqUAiQAn4klCJX7wGydhpLNWEQcTuBnZ5R4vEUyVMTGeagoy3iwV2HTMcwB4
         TnR1Ic+DM2P4BmPExrCFrXBZA/JS3eH2C3/Mn+gkULvE3kuz+Ujw0N0KntqfdXAwv1Iw
         ilwczRfJcAuISVv6gcIH2Xjd9fH4xaIdiRqDg8rWPfEmvwHn4cTepuwpoG++vZdyNKKI
         ur5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5biKq7NugFH5645R57SKe1mgC1BP2ckBoaTjbO3BPZE=;
        b=F/nY2dgWf+AX6lzHqXfmiVHNiVrGIudNai9JvrhyqvS7tc/SKYd9GfvY2EalqcwY45
         V+eIuEVY+pSIVQNvToyoUKJsMCU4fvI7+xBfTKDZVOC0ElqXgKeeJQCWwEzXet0oM/qY
         8OhGUTrcW0oIQJhA/rheb14J6fEtu4v3SxH+r6Q6ln9V6+LrNzy3BwohtELxGAnjfBHe
         ZTZR7JKL+NC2zB4V32ouJsE7Iiprc03byd/cign4OAmWKtaK9KxXwnGaI4wEzaCOFiwm
         YEw6pjOKxnTsgPX5RzwnTpLZ4fz0ZFgrzB/19Muxc8F8+YAhjZ4NH5fZ57+tTca6KuYF
         tvFg==
X-Gm-Message-State: AOAM531Co7uDRkLWoZpzMT5gin/UdUL5Z9yWJ+VpcGcsRQ/AoDaJt2QS
        ctc8wcnejZ1ed2aERtzWKskeqw==
X-Google-Smtp-Source: ABdhPJyr0neNj/pWhovDa+tl5s6PMfst3DzFfGPy4e8YRM91yRqkJguQKnyhNg/rIjo/pWUi7h9VHQ==
X-Received: by 2002:a17:902:c9c3:b029:e3:12d4:f2ca with SMTP id q3-20020a170902c9c3b02900e312d4f2camr2433994pld.33.1613128727728;
        Fri, 12 Feb 2021 03:18:47 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id a37sm8763963pgm.79.2021.02.12.03.18.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 03:18:47 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        anmar.oueja@linaro.org, Bill Mills <bill.mills@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Michal Simek <michal.simek@xilinx.com>
Subject: [PATCH V8 1/4] kbuild: Simplify builds with CONFIG_OF_ALL_DTBS
Date:   Fri, 12 Feb 2021 16:48:35 +0530
Message-Id: <cf35bc364da56fb8f1ea3677340508e01e411976.1613127681.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1613127681.git.viresh.kumar@linaro.org>
References: <cover.1613127681.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We update 'extra-y' based on CONFIG_OF_ALL_DTBS three times. It would be
far more straight forward if we rather update dtb-y to include all .dtb
files if CONFIG_OF_ALL_DTBS is enabled.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 scripts/Makefile.lib | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b00855b247e0..fa0db696120f 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -81,14 +81,13 @@ always-y += $(userprogs-always-y) $(userprogs-always-m)
 
 # DTB
 # If CONFIG_OF_ALL_DTBS is enabled, all DT blobs are built
+dtb-$(CONFIG_OF_ALL_DTBS)       += $(dtb-)
+
 extra-y				+= $(dtb-y)
-extra-$(CONFIG_OF_ALL_DTBS)	+= $(dtb-)
 
 ifneq ($(CHECK_DTBS),)
 extra-y += $(patsubst %.dtb,%.dt.yaml, $(dtb-y))
 extra-y += $(patsubst %.dtbo,%.dt.yaml, $(dtb-y))
-extra-$(CONFIG_OF_ALL_DTBS) += $(patsubst %.dtb,%.dt.yaml, $(dtb-))
-extra-$(CONFIG_OF_ALL_DTBS) += $(patsubst %.dtbo,%.dt.yaml, $(dtb-))
 endif
 
 # Add subdir path
-- 
2.25.0.rc1.19.g042ed3e048af

