Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B093610E60
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 12:25:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbiJ1KZH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 06:25:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbiJ1KZG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 06:25:06 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CF2D2BB03
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 03:25:05 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id 4so4518661pli.0
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 03:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AZC8394g/oSHb1w89qyTVGSgqWEPdgXV2NM/y2pTr74=;
        b=sSlppe4NJWWXV5yBu1kykNWWxehe88U/8q1q7SnG4d8/WcqVJemFszw5xqDtTOAz8w
         xq4RciBvf4yPH5XG1rgJCpKsvZ2Uiz1dtWq9mKevLqAJKl+Sljr76rdWM8+QcOCBk5py
         b5+hl4NYdGHrmKSDTF6/9PBnzHqy5D3xz0UF3jM82vPT1Ex7P7ehHekVkwh0uL4EYeau
         VWE389takqz8EWZQEyn1nGd6Kavmbt6bANsZxcLtnvGr+EtXt4C7zjXBtsxEQ5hk8u25
         yOoYwTQPUdzLk3NgegKrU8ijW81H73g6p/U95lOfhCh6CvqqnOLmK3AbAlLFOuOanXwM
         1Yqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AZC8394g/oSHb1w89qyTVGSgqWEPdgXV2NM/y2pTr74=;
        b=KhRQd+z2pjIuzooeJzHbfjdSWLBj9quTF2iDhme2XNJb/vLyNlPLuLzBMZIbzpfV6V
         KQ56pf93djwkdQs5E0kF8+GfP/of3ZOWTXU1vkggXw3ADaScFMZfz7dFVSJITATKas/V
         U1SzBjm3HincizORXoxhM3975P0POaUQDS1DNiUU11Jdb3thMFRK9o5tYVGShjx1AbgZ
         xUsM1WpI5qKeSCJD96ftyLhkTRJCEYbi38Kipv23GwYtEXsIXXZl3BcxPZA4NgkFdY7U
         p5U+gjHjypPh/YQt6+Vn73rLmN/duR4c4GKo6dBOHDti8IGrMj2mMwxfx28rHbMLITq1
         fniw==
X-Gm-Message-State: ACrzQf1+55UEAxgDuR+wYc8YylalCjojZ+EmCScP7RjP6pEu43YImznp
        xXw0mV74MyO3np2XEwL2WzFzNw==
X-Google-Smtp-Source: AMsMyM7iANNZTI00sQBDnQzS9j9Z/a/chwN4BciHmlrMm0hBj6pNIK7fSz1HfepBKyrCF4zBiPYruw==
X-Received: by 2002:a17:90b:384e:b0:213:7c41:1018 with SMTP id nl14-20020a17090b384e00b002137c411018mr7282132pjb.63.1666952704646;
        Fri, 28 Oct 2022 03:25:04 -0700 (PDT)
Received: from localhost.localdomain (118-167-210-30.dynamic-ip.hinet.net. [118.167.210.30])
        by smtp.gmail.com with ESMTPSA id o1-20020aa79781000000b0056b6a22d6c9sm2565236pfp.212.2022.10.28.03.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 03:25:04 -0700 (PDT)
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, robh@kernel.org,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
        angelogioacchino.delregno@collabora.corp-partner.google.com,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: [PATCH v1 0/2] Add optional dmic selection for two DMICs
Date:   Fri, 28 Oct 2022 18:24:48 +0800
Message-Id: <20221028102450.1161382-1-ajye_huang@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v2:
- Documentation: Add dmic_sel-gpios optional prop for two DMICs.
- dmic codec driver: 
  - "dmic_sel-gpios" property is used for a mixer control to switch
     the dmic signal source between the Front and Rear Dmic.

Thanks for the review!

Ajye Huang (2):
  ASoC: dt-bindings: Document dmic_sel-gpios optional prop for two DMICs
    case
  ASoC: dmic: Add optional dmic selection

 .../devicetree/bindings/sound/dmic-codec.yaml |  5 ++
 sound/soc/codecs/dmic.c                       | 52 +++++++++++++++++++
 2 files changed, 57 insertions(+)

-- 
2.25.1

