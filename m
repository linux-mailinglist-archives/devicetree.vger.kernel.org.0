Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48381717242
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 02:03:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233766AbjEaADF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 20:03:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231488AbjEaADE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 20:03:04 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 541C1D9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:03 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f3b5881734so5941047e87.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685491381; x=1688083381;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SyeYlb9FLXi+8y9gS/n6CffUDb/849CEa87VxzBlg+w=;
        b=aQR2hrWUh8jQdjkkeYkALnCMN2H/8kl4x9v81f8W6hYJr8cl8C0APD2CvPDYkYeruG
         JnVmP8FOa3p+rbrwqYNBi+OLAFIXAhGJu3zb9xOveQaH+ocTVT0cj6iPuxx9n0o/LE2X
         Vl1rJx+ZfYSkQMliPlX4rS0AiFhcBXPY9YpkZuYSyERihibvcYbCxux2K037IzuF6zQk
         tmHM0MME/DwF8RNwQ8CFKgyyRn20jw+/XGaAKalqjBy3nRhZIuYqXkZciKidJutv6OjW
         kU6l3XTtNbKCm9wjRzSCjRROVBxlb/gLTVonT/YRaAaKMIlkyUL8YoizTb/nq0dLmZ+i
         dISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685491381; x=1688083381;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SyeYlb9FLXi+8y9gS/n6CffUDb/849CEa87VxzBlg+w=;
        b=G/UyFp5UDBN127FE64xUiw9IeuNvXA5maJyJdXBh74MTpwJoC0ClHtNxQKBbtOlFk7
         wzS93Xe49Lu364OAWu7xm/vO8l/AhNfKfms/MEF0Lzbw3dViHQE2QuSY5kFeYWqA08Ij
         cEe3JtHuwiKstHGe1gZviPr7GyDdzeZmQmBreSrY8gqoBDt+KB15GFxMCmcReMAWrvLB
         B/UnKgUOufPRim3ANhDfuFRYETQO4AFU5qNJMOhIhKFAcbrEfyozf511oLzhCFN//v5x
         40YT92j8AR8++KUaP0SNKovq8afuS5Vhn+PAXa+Byeaiz7aPvfMqHFbUM1ToahkhudKJ
         zJGA==
X-Gm-Message-State: AC+VfDxye7SMbsbPMKcleapm7jrr306PMHMxvZyv+J5EefmgghyZIMh0
        hXLz0eVAJiPqAwbZuzx8bhA0aQ==
X-Google-Smtp-Source: ACHHUZ7TMrlUtUUdEq6/7cfDRR412NBdz8sutbip3bWYLwkw/XFfA6fK+rVZefHCVZdbxu5L8cdiUg==
X-Received: by 2002:ac2:539c:0:b0:4f4:df75:1f80 with SMTP id g28-20020ac2539c000000b004f4df751f80mr1295510lfh.5.1685491381405;
        Tue, 30 May 2023 17:03:01 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id d30-20020ac25ede000000b004f13eff5375sm490388lfq.45.2023.05.30.17.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 17:03:00 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 0/3] drm/bridge: display-connector: add external supply support
Date:   Wed, 31 May 2023 03:02:56 +0300
Message-Id: <20230531000259.3758235-1-dmitry.baryshkov@linaro.org>
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

Changes since v2:
- Changed to use proper supply name instead of hardcoded "dp-pwr" (Neil)

Changes since v1:
- Changed the pin description to HDMI +5V Power
- Renamed 'connector_pwr' to simpler 'supply'
- Extracted the common supply-handling code for DP and HDMI

Dmitry Baryshkov (3):
  dt-bindings: display: hdmi-connector: add hdmi-pwr supply
  drm/bridge: display-connector: rename dp_pwr to connector_pwr
  drm/bridge: display-connector: handle hdmi-pwr supply

 .../display/connector/hdmi-connector.yaml     |  3 +
 drivers/gpu/drm/bridge/display-connector.c    | 61 ++++++++++---------
 2 files changed, 35 insertions(+), 29 deletions(-)

-- 
2.39.2

