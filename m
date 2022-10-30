Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA85F612933
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 09:54:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbiJ3IyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 04:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiJ3IyH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 04:54:07 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4D5F3BD
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 01:54:06 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id c24so8353262pls.9
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 01:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rDkvQjMnPy2Fy0mBItWeOo1V6hYUJ0mhKJvHwDCVi2w=;
        b=bbXRih8TjXzbqHh25uHOxJWFLQw+e1DlCLIq7nhMGQtwji80VAHDq+N4U3++UXV2V3
         Gtv/VtUzMHdL1OkWJNAu+KJGnQpPD+DN8VV/Sl7ulgdHwvTeko0Dg3vy6HVhMHSa6tZ5
         UAy9hUSx6ob+N6sVx+UO9Du0G68SC2Nb6oumIyxC2v1mmD3pg3i/IC8KgCqNrmtewVQK
         TOPm5NQ4hegcpcMOJc9+++rjfnYFlzgowdkhPpjZJfX9fggNcHy7U/kqs8kFOmvffqEL
         Qj7lV+QsXIBwqztGBmQ4uEAJutXxdXn6nZv+VtvVvd3Yq0qHpKioH+X+s3/FYgZH8c+c
         mcKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rDkvQjMnPy2Fy0mBItWeOo1V6hYUJ0mhKJvHwDCVi2w=;
        b=g/kzGZL3ir/nGu/9WEAmxMRT/Ig9PRpj0d3pomBj+l967/NQrJQqRWmxScC0Kwbd+r
         5nHmBwSftWGdG5DjhTwBmet2xamM2AkLUqeotTj3RCk6ev+x5RHxSwvdjg/RDxWdJUQ2
         HW2VwGJNgR4qMEG9cZysJml0++bvteJ9tKwNtxKsX4c4xKw+NRhHHMvZo2FuJy67vDrw
         d9HVoemNsiZ4e/Ct0vxBoDYEeNQk5flKzxjgcdTn1G4E1YVU1yfzz1pBhWbQuC5XMMhZ
         Tuav/QmTcz5e4+9NVTitBx/kxcAS/KE7NF0/+eIAqDMCSFosfqHy988vjC2QbGQJCk8v
         3WLQ==
X-Gm-Message-State: ACrzQf1EhHcXh1QiZBj+jJgnWZEZIjogWXvM8/sfUWZ1IHYnZ1nvxR02
        ieogqkUzKwv5CjQwHRHKJIiqtA==
X-Google-Smtp-Source: AMsMyM5f9T1Rh9DrdO2JxLDorJoTNDYAWA/e2ujdB/uQxvpcNDMnY2R2vO3fkNs5lc6OSJVNq7YJ5Q==
X-Received: by 2002:a17:903:110f:b0:178:ae31:ab2 with SMTP id n15-20020a170903110f00b00178ae310ab2mr8322365plh.89.1667120046351;
        Sun, 30 Oct 2022 01:54:06 -0700 (PDT)
Received: from localhost.localdomain (118-167-185-125.dynamic-ip.hinet.net. [118.167.185.125])
        by smtp.gmail.com with ESMTPSA id n9-20020a63f809000000b0041ae78c3493sm2054627pgh.52.2022.10.30.01.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 01:54:06 -0700 (PDT)
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        "chunxu . li" <chunxu.li@mediatek.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: [PATCH v3 0/2] Modify documentation and machine driver for mt8186_rt1019_rt5682s sound card
Date:   Sun, 30 Oct 2022 16:53:56 +0800
Message-Id: <20221030085358.1619285-1-ajye_huang@compal.corp-partner.google.com>
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

v3:
- Documentation: 
  - Add an explain example in description.
  - Add the pinctrl-name and pinctrl id in its example.

v2:
- dmic codec driver: 
  - Remove the unnecessary use of_property_read_bool()

v1:
- Documentation: Add dmic-gpios optional prop for two DMICs case.
- dmic codec driver: 
  - "dmic-gpios" property is used for amixer control to switch
     the dmic signal source between the Front and Rear Dmic.

Thanks for the review!

Ajye Huang (2):
  ASoC: mediatek: dt-bindings: modify machine bindings for two MICs case
  ASoC: mediatek: mt8186-rt5682: Modify machine driver for two DMICs
    case

 .../sound/mt8186-mt6366-rt1019-rt5682s.yaml   |  13 ++-
 .../mt8186/mt8186-mt6366-rt1019-rt5682s.c     | 102 +++++++++++++++++-
 2 files changed, 113 insertions(+), 2 deletions(-)

-- 
2.25.1

