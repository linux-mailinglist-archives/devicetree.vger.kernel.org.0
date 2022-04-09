Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A85C74FA4B3
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 07:03:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241038AbiDIFEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 01:04:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241657AbiDIE7S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 00:59:18 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E992FFB5D
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 21:53:53 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id b15so10145320pfm.5
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 21:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FJ4dGJ7sVS9YhuL3gPRfql4u69Q9PfZJIjem0IKvyeg=;
        b=S2cDr3I91TR6BB/bZSGD8JTyF/0+thIhtHzT2IHSBxZkCmVKo7ZcC5bu9OrVutrrcO
         /kgACE8mTu1XcJByfrFpzbCPdk5lvopTRIhMiMscGUmEx3Jf17g+CBDWnlsGVrT8rYoy
         LmYhqrrvJLlM7fH2h8x04EeNT35TWM7pvzwdK0F3lkWa4Rx0u2k3WGnNawYx3LrQAUY3
         vcBV+LOkkEDh4LO7hKsCLSgkdRZ7FvypCudjBbHTAnc+QAmF+U8M5+L/ZFjKsmf0K/x9
         2VU6Snjh6nxi4MBsmSMFg/9aYpHUhKocpia/odQ+I9FDaJYAx3AIK/oq/okss90UMRCb
         xLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FJ4dGJ7sVS9YhuL3gPRfql4u69Q9PfZJIjem0IKvyeg=;
        b=O2MMvRQ11qRXGfpiKfe+3YjXC1qS5GAj42dnuUgSJLCZHQ8YyH7lrjbd8W5317OgBR
         g+mphlkOaqqsAOdLc6OSoE6eGuxotObdF/MoDv20PGZe4XrgZNPEHQX+tST3UyMS/tav
         EVkRBnXWOYNtkdG3cvt14DWA9s8JtJTbk4hjo80natBq8iHeP9mdeUguNd6WTsa0SQnr
         jzitO+sCqeG0E9Jn0ncKYlmaSTXwGv5a69vpPo2eGBeIuUZU9uQMEbvg0w1E9Dm1IdTQ
         /MJEXegY1TkdJ/AuFpLRCtpFyCZpaalxN/0IjZ4+Bdw0ERq96+Qauc4Saj7n7ydnI7j8
         0USw==
X-Gm-Message-State: AOAM531UVA2sqbBo9UDoDA/3NDV56SMrSG539efP4NX+Tw8hg+5bqJ15
        Ut1QNkE6OZqhrfJNotSVRIsdFA==
X-Google-Smtp-Source: ABdhPJzV0t38gvHo3pqGYQis8tX3ACUxEyEb/NFADRFc5BZplzVCiQ4DPxlgKDKjdlesbi6L0aB4Rw==
X-Received: by 2002:a05:6a00:298c:b0:4fa:8e7b:349d with SMTP id cj12-20020a056a00298c00b004fa8e7b349dmr23161154pfb.26.1649480032862;
        Fri, 08 Apr 2022 21:53:52 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:8fa3:3402:f693:9f86])
        by smtp.gmail.com with ESMTPSA id k6-20020a056a00134600b004faba67f9d4sm28423050pfu.197.2022.04.08.21.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 21:53:52 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH 0/2] soc: ti: wkup_m3_ipc: support vtt toggle
Date:   Fri,  8 Apr 2022 21:51:43 -0700
Message-Id: <20220409045145.2434096-1-dfustini@baylibre.com>
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

Dave Gerlach (1):
  soc: ti: wkup_m3_ipc: Add support for toggling VTT regulator

Drew Fustini (1):
  dt-bindings: wkup-m3-ipc: Add vtt toggle bindings

 .../bindings/soc/ti/wkup-m3-ipc.yaml          | 21 +++++++++++++++
 drivers/soc/ti/wkup_m3_ipc.c                  | 27 +++++++++++++++++--
 include/linux/wkup_m3_ipc.h                   |  1 +
 3 files changed, 47 insertions(+), 2 deletions(-)

-- 
2.32.0

