Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC594FECB6
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 04:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231517AbiDMCId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 22:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbiDMCId (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 22:08:33 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F1492613D
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 19:06:13 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id s137so432902pgs.5
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 19:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bvHovzHUcO6H3lPRXLJZ8Y7xB7Tk6Lw/GhaAvYeEjYA=;
        b=hZHD2Hq9N4/osAfvypcYWpaffb9Iwed26m/zyImEmdVYtn9zNf3kZTZzfgVCjwcCWp
         L8qYusrUEUaAlEZzIMw15ruPcBP1voQAhI91PBpwGwXrFAfNazsJPTgZ58RXltkTWAoE
         WPPG6xDbrpEesB8FPyXI3W4r09q9x5nsKxYMmpap23JF713bMoSNgTDByEOpMcYepZ9B
         UDlfSjIXfLUqYfYXKWJogLwDBhS5VtByFZTUv5fYVnJZYo+Ut+GXqbTb6xcEI00OWy/9
         CmXe8t3j+hSG4M9cr1/QpfO5D3cU7eJvMU39+hgjp3KNg/0jBaIhuS8ngyM2L5+H/Rg5
         S/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bvHovzHUcO6H3lPRXLJZ8Y7xB7Tk6Lw/GhaAvYeEjYA=;
        b=JvrWoR1WkjKDeJjvT3qqCq5wS+oXkNcUHSq3xLNAOf5264lxWcjvQglbiK4iXZdDZL
         7DCBcvVMSn9SM3KwD7ZavOdw8Sr5oRCJaEdoiYetccagnXZajfnpOczyQIjC8kjpOFdf
         eqW7RxBnerI5kWSa/MgPO/R0BM85Rj9sF0oFV8Od3Oz3Sn5+1xyT6MXH5GEofXAPxLin
         P+vZwDpKulSYYcTp69O4s+GJKiU6h/mGxfuHyrrZFUOid4K3NjZOhUO3zJHMq96FoWCw
         snj8wS/fVKP+1fPq423XeQgsJ1U0QOn2uCFMm9CMZsDGNZiEu7yAJ/gpSK2O26z0X2Mq
         N3sA==
X-Gm-Message-State: AOAM530U+mm/OS9fvbALXCwi2xepQkBXMl45WPoPAuMbG/zFNT2gLVb7
        Ki7NlwcIF8UrvYZr83/P4xUxVw==
X-Google-Smtp-Source: ABdhPJyYI6RSJMSEhpIcDYX5IRNsdNmJUMaEQWhwbeZUpN3xX05VaYx3mQO5Awwt2sUWnnINJqSF4A==
X-Received: by 2002:a65:6b8e:0:b0:39d:6760:1cd5 with SMTP id d14-20020a656b8e000000b0039d67601cd5mr9669923pgw.379.1649815572575;
        Tue, 12 Apr 2022 19:06:12 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:669f:cec7:c0c2:1cc])
        by smtp.gmail.com with ESMTPSA id o3-20020aa79783000000b00505f720bb76sm4234053pfp.215.2022.04.12.19.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 19:06:12 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH 0/2] soc: ti: wkup_m3_ipc: Add support for IO Isolation
Date:   Tue, 12 Apr 2022 19:06:39 -0700
Message-Id: <20220413020641.2789408-1-dfustini@baylibre.com>
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

TI AM437x SoCs support isolation of the IOs so that control is taken
from the peripheral they are connected to and overridden by values
present in the control register for that pad. This series documents a
new property 'ti,io-isolation' and updates the wkup_m3_ipc driver to 
inform the CM3 firmware when that property is set.

A prerequisite for this series is: 
[PATCH v2 0/2] soc: ti: wkup_m3_ipc: support vtt toggle
https://lore.kernel.org/lkml/20220409211215.2529387-1-dfustini@baylibre.com/T/

Dave Gerlach (1):
  soc: ti: wkup_m3_ipc: Add support for IO Isolation

Drew Fustini (1):
  dt-bindings: wkup-m3-ipc: Add ti,io-isolation property

 .../bindings/soc/ti/wkup-m3-ipc.yaml          | 68 +++++++++++++++++--
 drivers/soc/ti/wkup_m3_ipc.c                  | 14 +++-
 include/linux/wkup_m3_ipc.h                   |  1 +
 3 files changed, 76 insertions(+), 7 deletions(-)

-- 
2.32.0

