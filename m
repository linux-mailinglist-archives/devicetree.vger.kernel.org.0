Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECCDC58F680
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 05:58:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233987AbiHKD6u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 23:58:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233517AbiHKD6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 23:58:49 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 120AF83BF2
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 20:58:46 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id c185so20056645oia.7
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 20:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=w+7/p7loDU12A5408vaGmzS8MHgBWt2avSxfYLUZLGU=;
        b=Kob7L1bb7pZlKVh3Nr85SgI9ecv91ntN2SnDhWUxOVzzohP8gC1F1LzRgbUPa6dgQ/
         EPcOqUy9uiqptUG/OESjxUBw7VXMA0/+KvUagsobHQhLJdSChDwV3wptX6qfmY8bpS9N
         Ks6SPqZJroxubJZxXXNq08NomKjllFX7h55aQmGuVWMEujN4yI4TEImYbKSv2cziOgDB
         c0ZkIURne7GBOoutsu/59kICCBe70lO2JhgfcA+aEO7VVajBSyyGhllUb7dU9lUGTpnR
         OUdLPB259K+CClZdfGO/Psmsg7Uu7mb4ca6nc6SH34aSyQqieK3/u1bEA+5fXG+rFf1H
         qQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=w+7/p7loDU12A5408vaGmzS8MHgBWt2avSxfYLUZLGU=;
        b=wZCOeDE94JrG7U1bVBvhvHUQE8P8FZqcwHWrz3jY8biUnwV1W84F33D6Sf7d/lagk3
         rEyaeokYEwOzEoHv06EGhuKFaM46yH9zulQxrNi47K1JgnZ/r/UotEqKfHB71SFm72UA
         Ysyu9QW1afj70/O/FtW7H5rMXfpYkOZa1voOClq6vjndH0NSudRHRYoSJtnDrP4noj1i
         R6eaeD99qPlYESKy/DR75pvR2iLniH2o2Qc21sURi61lJuM5IqYyQ6MV0Jy4EzoMRfNG
         TrOL4P0kiQ7CwCRG0h3XWQm/fkXttqYYWIaN+xp2yVniwIihqJtg0tQjwJg8/D0U5Pkv
         tuMw==
X-Gm-Message-State: ACgBeo2xse9NSEA9nFkk1gPME60UGWyiio5qFUXhTW0PfjhYsZFcJnk7
        ip1TNteBdrCgs9kO8SNkY0rBEA==
X-Google-Smtp-Source: AA6agR6Vs2Vcu8hixDaGfupTUFgHcyNNcs3nvOW+jJ8bqmrmjTvdaVNBZs4cxnx9uCye0SZs4NAEtg==
X-Received: by 2002:a05:6808:20a9:b0:343:c4e:24c8 with SMTP id s41-20020a05680820a900b003430c4e24c8mr2800681oiw.73.1660190325376;
        Wed, 10 Aug 2022 20:58:45 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w22-20020a056808141600b00338869042fdsm891443oiv.32.2022.08.10.20.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Aug 2022 20:58:44 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] drm/msm/dpu: Add support for SC8280XP
Date:   Wed, 10 Aug 2022 21:01:18 -0700
Message-Id: <20220811040121.3775613-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support the MDSS and DPU found in the SC8280XP platform.

Bjorn Andersson (2):
  dt-bindings: display/msm: Add binding for SC8280XP MDSS
  drm/msm/dpu: Introduce SC8280XP

Dmitry Baryshkov (1):
  drm/msm/dpu: add support for MDP_TOP blackhole

 .../bindings/display/msm/dpu-sc8280xp.yaml    | 284 ++++++++++++++++++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    | 211 +++++++++++++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   2 +
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c |  18 ++
 .../gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.h |   3 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h   |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |  12 +-
 drivers/gpu/drm/msm/msm_drv.h                 |   1 +
 drivers/gpu/drm/msm/msm_mdss.c                |   2 +
 9 files changed, 533 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/msm/dpu-sc8280xp.yaml

-- 
2.35.1

