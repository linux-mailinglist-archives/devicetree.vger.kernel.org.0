Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 769D15B98BD
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 12:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbiIOK3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 06:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbiIOK3c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 06:29:32 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7210BBE7
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 03:29:29 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n17-20020a05600c501100b003a84bf9b68bso13483795wmr.3
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 03:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=y3YnLw+nXEeLifDonLqSm9OS37vY/PHeQsoRqCvRyZw=;
        b=tb0VtQ7Dm1ElTc3P918h0Z4a+VCawiprdrJqFkrB4GOgPgdql0CHr2ol99ytX5NgyU
         t6w6gjVNIgsTz/FhjvMRQgcmKiV+pMniz+rQ0PdbdxfhjtFotTgr404R3wJLWtHgj2v8
         /IxVUOsYDo8Fvwm6Ly+vr8gWoUCIT6ileC3lrickMewYOpTt5AyxPpdFvQQcOI66DQw3
         SRr89pxSzjoqa+syiBId6rfOgBAHASwgpMgVin3+XuAxOmqNtX4XpJs21HmrWqYQ1gWg
         ABtzJu04XDzNrLoZMh6gBHN2wVk443HUM8nbDwUHmyTEGTQaABfjmKr3gdaN+cZNnm2M
         WUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=y3YnLw+nXEeLifDonLqSm9OS37vY/PHeQsoRqCvRyZw=;
        b=C803w3lUpGtYi/es8EtVVN82lOfey/TNfzPUGlDfZCoVP9f9T/F9ss5ZCR9OzEJppW
         +IhzAGMm+ViqkwCXhJHzWnLViziODUYIxhAKXktdDlEgZZzInTV9o7jSnmbhFUf5kSzU
         fcWXhlIAO3At+frnQowgnRsNBArbzk1eOkl4SZUAccPIC+wmI2scJpAOpEz0w6SI+RkO
         UwFxmOPXH57kY7jPxJML1WF9/rbrSZhR55xqWq73+K8oHVdJ8onze0OBVLNWumpCV6+k
         8QkabYFXFpEFRthbnXb61xESCDqkESIcZJgfEry923oUQdetEzGeRMj3tRvehz2786uC
         0ukg==
X-Gm-Message-State: ACgBeo009ZYrojqNM2MHBmkE06RRCiXFZTGb+fqOGUqMe5XJ6gMGoQJL
        yEe07kw0ACiaI6tow85/+zJlVQ==
X-Google-Smtp-Source: AA6agR7ax1DEZBhTdEExCg1H+xG0foTJjRODIus60KxmYrRQOkYTyvp0sv60JG8wV9Tb0stIHQOEtw==
X-Received: by 2002:a7b:c013:0:b0:3b4:a682:a640 with SMTP id c19-20020a7bc013000000b003b4a682a640mr3734590wmb.136.1663237767964;
        Thu, 15 Sep 2022 03:29:27 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id q17-20020adff951000000b00228dff8d975sm2098257wrr.109.2022.09.15.03.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 03:29:27 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v1 0/2] Fix chrontel-ch7033 reversion
Date:   Thu, 15 Sep 2022 12:29:22 +0200
Message-Id: <20220915102924.370090-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When the chrontel-ch7033 series from Chris Morgan was reverted[1], I made mistake.

Patch 2/2 in this[1] series reverts [2] when it should have reverted [3].

This series fixes this mistake.


[1] https://lore.kernel.org/all/20220912113856.817188-1-robert.foss@linaro.org/
[2] c312b0df3b13 - drm/bridge: ti-sn65dsi86: Implement bridge connector operations for DP
[3] ce9564cfc9ae - drm/bridge: chrontel-ch7033: Add byteswap order setting

Robert Foss (2):
  Revert "Revert "drm/bridge: ti-sn65dsi86: Implement bridge connector
    operations for DP""
  Revert "drm/bridge: chrontel-ch7033: Add byteswap order setting"

 drivers/gpu/drm/bridge/chrontel-ch7033.c | 15 ++-----------
 drivers/gpu/drm/bridge/ti-sn65dsi86.c    | 28 ++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 13 deletions(-)

-- 
2.34.1

