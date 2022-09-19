Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46DBD5BC99A
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 12:34:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbiISKeB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 06:34:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbiISKbv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 06:31:51 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E01AC2B607
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:20:27 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id t14so46762142wrx.8
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=OKFjDcIVuDMM00qktRXs83Gxno16woQBBpqscCyHyns=;
        b=kkgJw0fkdtj0n+LSS7dAu9YuZRA/J/iA0g5HJnPpEAOZNar8ic03sgHPy/orHIjqps
         oLVhqwtCRh/5rmAOfas7QnH6PBPBIavEDTmJ0HearwFh22n6IeMy7VZpybDepOYKVJwm
         1yssqqza5jehMkl2XaE08COCg8lnj8rP6OyWPQrljfdClgxKE9O8jwoJBOh5Fubufjti
         mG8oiPtZ1uFj93l1/o6CcSthTEgYebeLP6Q+o9CFBGfswkfGRiK2cuDc4L3A6XrXnNAR
         5ZOtGxAl+wq8jVgwgmMRmE5IuHAkrOON4AM6vYXPrUHrHMcZurQoRcZQel39AFvnAify
         XllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=OKFjDcIVuDMM00qktRXs83Gxno16woQBBpqscCyHyns=;
        b=Ke47QOknprDEpMdyRjADDrFHjtU0EogsJVmZIuUVJW6DoFhuguKwQCAWh7doU4Jpa0
         e7ZJJ/ObI0kdm9XR2ZZJ9NPUr7fZGMjLBP1VFN3sZ3nGv5JI7XNRIFhw5e9HeO8mhAwd
         +doeL7gsc/jw+cD+SUC6DtlBf6EbP53cleBvh+07Gd8B4QM8MP7l+WU0in4J1KfLSbKW
         Q2CbCxXwfTByr9A+suHnF93GwdNBWVSeM699rdfGaF+ijcIfFuYuW8vxjCHMqzJIC9JU
         KemAOSeZEoHg9qz0Jh+abtV0S4+dRGNXLa+7JnDx/h/uP2ar0Crlu8jJZT/CZo10MbeL
         g+9A==
X-Gm-Message-State: ACrzQf1RcbLkX6SXgKE/q6IYbDBGpScPJwJB1GjVVaUQoJIcgmMHo8Vp
        tbhFYl64XGDMLHJP+uNX9RDOjw==
X-Google-Smtp-Source: AMsMyM7J2GPRlgBpa27pYpfKQeFahCST83hgYOX05xRTCOBrvevQWc5pVDP9jzEubm1iUSZiEmM0sw==
X-Received: by 2002:adf:dccf:0:b0:228:635f:90b8 with SMTP id x15-20020adfdccf000000b00228635f90b8mr10101217wrm.703.1663582818824;
        Mon, 19 Sep 2022 03:20:18 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id m2-20020a7bce02000000b003b483000583sm12784245wmc.48.2022.09.19.03.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 03:20:18 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] Fix chrontel-ch7033 reversion
Date:   Mon, 19 Sep 2022 12:20:07 +0200
Message-Id: <20220919102009.150503-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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


Changes since v1:
 - Add Fixes tag (Laurent)

Robert Foss (2):
  Revert "Revert "drm/bridge: ti-sn65dsi86: Implement bridge connector
    operations for DP""
  Revert "drm/bridge: chrontel-ch7033: Add byteswap order setting"

 drivers/gpu/drm/bridge/chrontel-ch7033.c | 15 ++-----------
 drivers/gpu/drm/bridge/ti-sn65dsi86.c    | 28 ++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 13 deletions(-)

-- 
2.34.1

