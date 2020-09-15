Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE9AE26A6FB
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 16:24:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726915AbgIOOXT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 10:23:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726879AbgIOOVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 10:21:40 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DA4BC061353
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 07:21:28 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k15so3510011wrn.10
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 07:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M0CRdTYVYc/U7fysKoWQV0wj2VPNEE4muh/srS7OLm0=;
        b=bIz/qMbLKItZuCECmgJiND27QuOQaYIKjHTV/Er7jU53TBbJnm/G6VDFIogRCkbHsy
         JPajcLTsuWRdC/0sOwKIWU/n3CmBIx0K2/gXqNmyK9GRZr08b2e3dEk/mxL2UHCt4KZm
         f56Un+tnsWdrhzAvj1KespuhPag13sz+8CpsO67cYdotmsnc/3oG6WWFqE9EfCz3m5HF
         ocYMByWkdvhwRJ6ry8VWK309gvWAcQAp/IElAW71Bk8wzOEH0MFP78J7X/HSatjKHowV
         LJZZs/hHMsN6aNzy/sLpqLRXrU9c7um1j5xSK3xT2lmJkHJwkhlHz6T4shnfKxAu4Kaw
         M4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M0CRdTYVYc/U7fysKoWQV0wj2VPNEE4muh/srS7OLm0=;
        b=SNkThA5ymd2z/hU9ERuqHdqfoThYZHcVXZ2KQgDzyddPr7btQaQUO7RVKUUoYh0jYf
         5zstAJBTCtVTWcibblX3KJITkt8r4J51sjJl9edlpwXsOD+u7A7ccgfWLs338mln1ovU
         wjtAyLmIRnwUDGlr2gt4cQIT7y5sAF4HIkspCdd6iTPd4H+7qYHs1ZsuTtzN9Sam3Yoh
         bwA3Ag0W96CFA5Y45a5tZtQzEV/ZSwncqdqXGCbKjELoQ8Yz3p+S+aS+Pc7OWCB2k9PJ
         dg03Ps0098QLIyWxxW81g6Hj90/iusSp+04auqrC3mEPS1eUFuTU4KBCDgesC27AHJzQ
         JSzQ==
X-Gm-Message-State: AOAM530YMLrAAnyxJSahICyN8b2wmO5+Yp+OR7nJwH85xlMiKIOQ5iTT
        Zr8FtYi5maLZQfO7VWak5b8f0g==
X-Google-Smtp-Source: ABdhPJz7AsnxbhTnOadmbKyAmvlVXDYp5iixwoaOgOYfqnVaNg+KuYT5+0TX5Te0hJCGigoNRGUBSA==
X-Received: by 2002:adf:f5ce:: with SMTP id k14mr21052586wrp.286.1600179686724;
        Tue, 15 Sep 2020 07:21:26 -0700 (PDT)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id d2sm27821482wro.34.2020.09.15.07.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:21:26 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: add aml-s905x-cc v2 support
Date:   Tue, 15 Sep 2020 16:19:19 +0200
Message-Id: <20200915141921.57258-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds initial support for the libretech aml-s905x-cc v2.

Jerome Brunet (2):
  dt-bindings: arm: amlogic: add support for libretch s905x cc v2
  arm64: dts: meson: initial support for aml-s905x-cc v2

 .../devicetree/bindings/arm/amlogic.yaml      |   1 +
 arch/arm64/boot/dts/amlogic/Makefile          |   1 +
 .../meson-gxl-s905x-libretech-cc-v2.dts       | 318 ++++++++++++++++++
 3 files changed, 320 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts

-- 
2.25.4

