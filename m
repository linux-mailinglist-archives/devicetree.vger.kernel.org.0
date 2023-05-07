Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41BF36F9B45
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 22:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231563AbjEGUMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 16:12:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbjEGUMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 16:12:23 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CA472130
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 13:12:21 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ac770a99e2so41952721fa.3
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 13:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683490339; x=1686082339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L/6AzpdlSyT2u/DnJHcJ/Uua4yjnwn+cYMZI+Ho5YM0=;
        b=IMDFGq2wAGGD8tAQ4XxBVTRUqSkb+NVXsrdR5L3Jgb7FfzWMx1m0DUnOcXdsxTCa4S
         RSYCSadzQmSeqFpH8+2Kntv/R0Q8lTtWm4205FATqc5it3p/kxmw3QrnW8q53qpEE2ei
         0/NaZlRMhtwTzOc0sb25l9Xya7XXB4IKdK1peX5qCUsXGfAYbuQ3YnmcQfylNZLPVNsl
         9tro+mDgcx8GRRSzuzeYro2dalipORjhlqxs1W38RYOC9D8Mv2b6k+iFeunC5qBg5ziX
         MD2sFUfGzOn2IxaIbDK02osz67D94bgZ6Z6S5wenFNfRwsX0NNCeCnnP+LyT3yODMG62
         bmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683490339; x=1686082339;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/6AzpdlSyT2u/DnJHcJ/Uua4yjnwn+cYMZI+Ho5YM0=;
        b=UlAWUuJqxuovXcolUTDZwQmqWm3yI5RUfCHnFnQQVbePRpIDo6XqHiRRXtea6i1Y1x
         PUptUQUl52HzLusmgJkhZfP1jmCTUkPZxtW4Qm/Qom9KJEweCHPF0zdsdyu+Hd+ZI+hc
         igCi2wgKxYhww/S0wWaeIufFTEJC2IRUfVWxzmHiQ8YZP39syHZq5N1jMLqNpnZvlBBo
         xOMhKLlq138jYRDJqyoUyFD0vDQ54MQuzlWEUCqUzvdRTU6M8zeWN/aPwzJvTZEte0s/
         /diR+nzHNrntDIFdl6l3t6klB1oTi/cQFsL82hjXZSVmAzLbr1Pjk44XGMqfLKZG1QIY
         ZB6g==
X-Gm-Message-State: AC+VfDzD+h9Qng2R6bEJQRsiZO7JnzakqLzWHC4nh+b/EcZwyxYH2+jE
        WrWL9QnQrMkXv4aPC7ncCCvX8w==
X-Google-Smtp-Source: ACHHUZ4/hD931uwZc8408LWyMq2qyx8mNfsSRodp6QnULqL8JaYg54nQGXh+xSV3tnWvfjuaICEEmQ==
X-Received: by 2002:a2e:9990:0:b0:2a8:c32d:1238 with SMTP id w16-20020a2e9990000000b002a8c32d1238mr2356176lji.15.1683490339563;
        Sun, 07 May 2023 13:12:19 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id f5-20020a2e3805000000b002ac74f5f022sm916522lja.0.2023.05.07.13.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 13:12:19 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 0/3] drm/bridge: display-connector: add external supply support
Date:   Sun,  7 May 2023 23:12:15 +0300
Message-Id: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On some devices the 5V pin of the HDMI connector and/or the ESD
protection logic is powered on by a separate regulator. The dp-connector
for such usecases provides dp-pwr supply support. Follow this example
and make hdmi-connector support the hdmi-pwr supply.

Dmitry Baryshkov (3):
  dt-bindings: display: hdmi-connector: add hdmi-pwr supply
  drm/bridge: display-connector: rename dp_pwr to connector_pwr
  drm/bridge: display-connector: handle hdmi-pwr supply

 .../display/connector/hdmi-connector.yaml     |  3 ++
 drivers/gpu/drm/bridge/display-connector.c    | 51 +++++++++++++------
 2 files changed, 39 insertions(+), 15 deletions(-)

-- 
2.39.2

