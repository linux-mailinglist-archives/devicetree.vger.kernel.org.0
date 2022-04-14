Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81909501BD8
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 21:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244300AbiDNT3U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 15:29:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239736AbiDNT3T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 15:29:19 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22A06E33B6
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:26:53 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d15so5466822pll.10
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 12:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wPa/6FlyvWIRPem5OetV4babaNSundzYasMD/hZ1m0k=;
        b=02ENnJGbo0YcUr3+ZaJIhNjLH1/QL6hzraEv1kgPKdc3nb8JhG3nB/3tYerTEtVCzF
         SMV5gBo2W7wLRQFSRq2zIhux6+ZoJ5dxerVN4rbwBwuCRcBorphOJm4nbSE/FjqCagqE
         jKNXnvlmrbkpKn9YSIjSjWNSAHNgHKJA3JDWtT+V7oB2MS0lOdCPBypdnvrL2Iu335S+
         sFcg2qV/iE3ubSv2a1NfJsTOQWYrmRnB76qrNdnxmmF6t0hsfkggPNYrjwnl5AnIYx9i
         Q2Z4yCvROjVOD25Y1Jx2a/8t7JjCxu/dlhSpC+GBKzrtXW8YkuoAOOJCdJh2pppL93b5
         QhjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wPa/6FlyvWIRPem5OetV4babaNSundzYasMD/hZ1m0k=;
        b=DWd/sTu4hq+mRPhZwgPPjO7uhsxLVgSyliPoFYNCr1g8aJ+gQCRyu4tkB3moD/sjgA
         N0Wq3P6XACx77TOKhymy20ixi/FB8JULDGuMjOpW5YNvs03nSfY0vf/QMXN9XDA+dWWV
         BZrFH2GRwMqx2NOZHIJZT2a2Og/PojDPkjmJyyJu/JFCcf7F0gWpuF8JGkYBvcElaSqJ
         LxfKJ7IkA0kqoeLk/JjKTpgSelVIzQH4tuGpBOZcg6utKAnvNAe105g257Hrx+WCZgHT
         2SU+ZZTD7my7K7RDL9s/MFPb6pqilxJjMfKQZXQxmfAJKeI5fmVkdCxOLvPndb/wJMD1
         ey6g==
X-Gm-Message-State: AOAM530Rn5c0d4ETbD61VBM0cgdJM+6K4dggI+jsT0hVH5+27oJ0VHJl
        eC/SD3/7aHfkCz/r5/tpuV3e4Q==
X-Google-Smtp-Source: ABdhPJz68+ja9Rk3m6NzdwebJgd6upA66XFcooeP3Is37+CGdm3mLdLvecugNkbiVEmq/aAKWSBM3w==
X-Received: by 2002:a17:90b:3881:b0:1c7:c02b:bcf8 with SMTP id mu1-20020a17090b388100b001c7c02bbcf8mr111237pjb.131.1649964412677;
        Thu, 14 Apr 2022 12:26:52 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:5b60:6a76:138d:2646])
        by smtp.gmail.com with ESMTPSA id p17-20020a056a0026d100b00505ff62176asm590060pfw.180.2022.04.14.12.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 12:26:52 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v3 0/2] soc: ti: wkup_m3_ipc: Add support for IO Isolation
Date:   Thu, 14 Apr 2022 12:27:22 -0700
Message-Id: <20220414192722.2978837-1-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TI AM437x SoCs support isolation of the IOs so that control is taken
from the peripheral they are connected to and overridden by values
present in the control register for that pad. This series documents a
new property 'ti,set-io-isolation' and updates the wkup_m3_ipc driver to
inform the CM3 firmware when that property is set.

A prerequisite for this series is:
[PATCH v2 0/2] soc: ti: wkup_m3_ipc: support vtt toggle
https://lore.kernel.org/lkml/20220409211215.2529387-1-dfustini@baylibre.com/T/

Changes from v2:
- correct indentation of the 'allOf:' block in binding patch

Changes from v1:
- correct typo of 'ti,set-io-isolation' property
- make 'ti,set-io-isolation' only valid for 'ti,am4372-wkup-m3-ipc'

Dave Gerlach (1):
  soc: ti: wkup_m3_ipc: Add support for IO Isolation

Drew Fustini (1):
  dt-bindings: wkup-m3-ipc: Add ti,set-io-isolation property

 .../bindings/soc/ti/wkup-m3-ipc.yaml          | 78 +++++++++++++++++--
 drivers/soc/ti/wkup_m3_ipc.c                  | 14 +++-
 include/linux/wkup_m3_ipc.h                   |  1 +
 3 files changed, 86 insertions(+), 7 deletions(-)

-- 
2.32.0

