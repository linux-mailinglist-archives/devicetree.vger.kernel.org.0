Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EB8F65765B
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 13:22:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbiL1MWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 07:22:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230071AbiL1MWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 07:22:40 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB29921AC
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 04:22:39 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id e21so1045129pfl.1
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 04:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LFvhTcaRZjgL74aw0ImWpDb76fTfKVSz3niY5jO7t2U=;
        b=6XK8iaEvevvXqDOBb77pn2jRDoRsZbUa51M+NyT8XpjYcuaxY7TVVgDTdJX44JzIT1
         6vItea01ki1fvLX8FOid6Mfm9aEGnD+ivk7GAVyKN2EyZYFut5kuce2/vz/6lLVPJ7Ji
         e4xFy50sBPkC4c6aKDAgIkSv/9g69rOW5gS+8WsG1MZuW2riLAdU+2YDVbWqtWo4WB9p
         tEw3/eL6f8YWvVdn8uAJdzrITvinPwmvvPLcGpjHCY6bO8rA0ZSgLdSIbQQLkrXpPxNT
         bNWYeh3H5gY47F0u6MG4axq5XEIRinEAlW4ZjsoNZR8nQ5z4iB+aO22ksTFhdgC8Gr3a
         p3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LFvhTcaRZjgL74aw0ImWpDb76fTfKVSz3niY5jO7t2U=;
        b=DhTTw8pStXYwA1vkjw2uI/54r88v1iTBAiKNCj7hr4QTkNIuB+YB0Y3qBFdmTh1O2T
         kZ7eiwR2bptIRcS/eMQyQJa2cx0/DjkGEVxhL3tvhqRiwxpYM8R9khl5iyGuQ92mu8Li
         YzrQeP5a0o2c/Ve1ox2+4js87qnjfe0LliDaR87DjRj35v+eZZ9/2lPG1mCZoBUNpkeM
         iu/rR1dErsQYEfDGAsv+MKtHEpR3BXCOC52HyxS/ZObEFh4vv7LcGKHqhO5KTyuO8OR3
         o/4NqLyK+aF1aAT//X3f7YuziVfMAI5QVf6wwqwV00RdB67vdbQYkQEgunzm0yKS1shy
         f5uw==
X-Gm-Message-State: AFqh2krxDHEa29Wjgcd0Wvy40wpk60sOb3ToGPdNPIa9Ssm1avidry3m
        W7HS8CjWLlRDuhY/fkyotipN/Q==
X-Google-Smtp-Source: AMrXdXuPM0D6h33ggS86tdoKbX4wsqChC1KyEbKeUzk2LWBE9WFxvgTxRvaU/KF9H7dMQzvrnz2Ctg==
X-Received: by 2002:a62:6102:0:b0:578:3bc0:57d7 with SMTP id v2-20020a626102000000b005783bc057d7mr24847846pfb.13.1672230159291;
        Wed, 28 Dec 2022 04:22:39 -0800 (PST)
Received: from localhost.localdomain (202.60.225.077.static.cyberec.com. [202.60.225.77])
        by smtp.gmail.com with ESMTPSA id h1-20020a056a00000100b0058124f92399sm5236074pfk.219.2022.12.28.04.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 04:22:39 -0800 (PST)
From:   tongjian <tongjian@huaqin.corp-partner.google.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        perex@perex.cz, tiwai@suse.com,
        angelogioacchino.delregno@collabora.com, nfraprado@collabora.com,
        jiaxin.yu@mediatek.com, chunxu.li@mediatek.com,
        ajye_huang@compal.corp-partner.google.com,
        tongjian@huaqin.corp-partner.google.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add new AMP MAX98360A for RT5682S
Date:   Wed, 28 Dec 2022 20:22:28 +0800
Message-Id: <20221228122230.3818533-1-tongjian@huaqin.corp-partner.google.com>
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

Add MAX98360A for RT5682S, MAX98360A works same as rt1019. So, it can
be supported.

tongjian (2):
  ASoC: mediatek: mt8186: support rt5682s_max98360
  ASoC: dt-bindings: mt8186-mt6366: add new compatible for max98360a

 .../sound/mt8186-mt6366-rt1019-rt5682s.yaml   |  1 +
 .../mt8186/mt8186-mt6366-rt1019-rt5682s.c     | 22 ++++++++++++++++++-
 2 files changed, 22 insertions(+), 1 deletion(-)

-- 
2.25.1

