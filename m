Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 903644FAAE8
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 23:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231825AbiDIVNq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 17:13:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbiDIVNp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 17:13:45 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD1C83F304
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 14:11:36 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id bx5so11687818pjb.3
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 14:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fl0UDxxZomizuOKOJeEDmXzFGf+c6sq/bowGavq/zN0=;
        b=c61wVcPSk0Vdkta0MBX5FTGeRCW/JhaUOc+REcHu8V9VrHKUXtOBOyq31lhazRpizN
         Ext1svLL49b1clvhthBuUpiDyAbPO/Y3FZGanScAu0fC62WmG19h1kSZ2adVRZ6FdGXk
         qi4J0KQXruM9I6Xp2KfmKsn+ztk8NeeeExIaumtyy9LSMIyse3UiZZUqeF44yC9yg/rB
         IRqTSHy/bwBJwDJXjGR4NvuyFHt8p/cbVCs+4XY85Gg+hVC3s23H8IzmqHa+pQ0nbi32
         gw4zhLWPCkTcofIcJ6nt9/ScxqLLFHQrMcBqrUhmONEdG4mbKkTld71Ffqso07MZSkKQ
         nYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fl0UDxxZomizuOKOJeEDmXzFGf+c6sq/bowGavq/zN0=;
        b=uE5DWTnB2Opwwb0iWm8lAYgDEKK0Xx91/f5JuQzaRg9PV/aFkgTT7oZXAxZO9ohGTl
         KUNxMfeIg/w3QQFl9J9j3N+Uy1dG3V4ldtPTfGp4N3t1ODcqhUnslDjRv8ykTwpVHG32
         foczKam7VOOJbLgyE9ebExSXLyqt3x2pKQbxEIZwZ3c4BkiZwx1InK4GsNeevJNm0bgX
         F7HVA3N/+n9V77ArLi/4Q0lK7GWc/O1OocakVO+kt6dG5eqlOAjDdKVm/6sJa2hGJVql
         sAMpZQUKE52P0fLb5H9gl5UVs/OojD1wyjNhUCtHpM6TgamTRM7JZAvbASZukGlQUaUA
         OjQQ==
X-Gm-Message-State: AOAM532xuyP1MA9Pe9yGdVYvDJzzhwgNsBUg8GmrorFJTOa+i2JG3YP5
        YV33tzKgM6vi0Nc4fBVNpHi5uA==
X-Google-Smtp-Source: ABdhPJzTT7G5DI7y8+F3UyGjR1dMbBVd7qJoS3EyQBezLxuWoeaTBMPaiEZqYzLX2NjfEujO8FwtPg==
X-Received: by 2002:a17:90b:1b03:b0:1c7:778b:d4ce with SMTP id nu3-20020a17090b1b0300b001c7778bd4cemr28799573pjb.128.1649538695910;
        Sat, 09 Apr 2022 14:11:35 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:925c:1a60:e433:31b7])
        by smtp.gmail.com with ESMTPSA id w127-20020a627b85000000b00505a9142ce5sm1393295pfc.22.2022.04.09.14.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Apr 2022 14:11:35 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 0/2] soc: ti: wkup_m3_ipc: support vtt toggle
Date:   Sat,  9 Apr 2022 14:12:13 -0700
Message-Id: <20220409211215.2529387-1-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series enables the Cortex M3 processor found in AM33xx and AM43xx
SoCs to toggle the VTT regulator during low power mode transitions.

I recently converted the Wakeup M3 IPC bindings to YAML. Rob has applied
that patch [1]. It is a prerequisite for the wkup-m3-ipc.yaml patch in
this series.

[1] https://lore.kernel.org/linux-devicetree/YlCACSZx5xsPSwNC@robh.at.kernel.org/

Changes since v1:
- Removed unnecessary "ti,needs-vtt-toggle" property

Dave Gerlach (1):
  soc: ti: wkup_m3_ipc: Add support for toggling VTT regulator

Drew Fustini (1):
  dt-bindings: wkup-m3-ipc: Add vtt toggle gpio pin property

 .../bindings/soc/ti/wkup-m3-ipc.yaml          | 13 ++++++++++
 drivers/soc/ti/wkup_m3_ipc.c                  | 26 +++++++++++++++++--
 include/linux/wkup_m3_ipc.h                   |  1 +
 3 files changed, 38 insertions(+), 2 deletions(-)

-- 
2.32.0

