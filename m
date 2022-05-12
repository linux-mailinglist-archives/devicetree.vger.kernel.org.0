Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E48DA524223
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 03:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbiELBja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 21:39:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231521AbiELBjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 21:39:24 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDDEA1BDAFB
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 18:39:23 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id cu23-20020a17090afa9700b001d98d8e53b7so5075875pjb.0
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 18:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m9ERJPHY7kNCC9Xfh4Q+AkiSYUdqRfKbbcRRUQeYgLE=;
        b=Z06Ja5WZl9m0TF+V4ASWgDlsqd8133ZXTovokih+muSLVR2g8+24M1+IN9QdAR3N3U
         e2o/Gub2GRardsqIPiwc276hWMs29fQ4zNng8YvaeC9UVArnkPSS0g9E+qvSD4FT18/v
         SlDiN2pU7okZ+ZA9o2sy+z15nLlkycNMpCipk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m9ERJPHY7kNCC9Xfh4Q+AkiSYUdqRfKbbcRRUQeYgLE=;
        b=MpzIsSTz375jITGQLZtSBAnnFGWmR1Fg5uHujZ8si4PC8KOHVFf2BE5PHhNdXDOZ/a
         wSwMwE1SA5cX2Cm4GlHPwsZCPjpPAI8he8c4DtwnRyabzN8+aLk+RRCgHtpLCcAOZyZH
         1SVs0EiOu0zNDBvFqXfI/Ha7582xsR7gvjeY0RKsGsaXEHujdUyZxAIOW/SuZZA7wOUB
         UOuLs+04CXVtjfSUtqpnBQyBLwHkJEiRo9WPgJFP4YrpZab3vpd2lCjFTC3nztFLBQVw
         IUUxYXd7+73F1p6cj01Q0DNbLH4+wSDqNlUVuaMTcdyZvt4v50Dc3+hfIF1xxucsH4Ki
         36hQ==
X-Gm-Message-State: AOAM530GynT5zq14LKwF+qsTyRn+rXLfC26o0kFDTF38nq1z8+g39ZwP
        hbwHVKBgRAgz4h2kQj7hcCSbIA==
X-Google-Smtp-Source: ABdhPJzQSFqqWRopUsS9Ny2+LAOvm0JvWTV+LFjBFcsxtSZ6UTSfRFIbkBy2cP3F0lMN/eiotWHAtw==
X-Received: by 2002:a17:902:d3c6:b0:15f:186a:69f0 with SMTP id w6-20020a170902d3c600b0015f186a69f0mr14901445plb.144.1652319563296;
        Wed, 11 May 2022 18:39:23 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:201:193f:f17a:ab0d:1f83])
        by smtp.gmail.com with ESMTPSA id b7-20020a170902d50700b0015e8d4eb2cfsm2614766plg.281.2022.05.11.18.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 18:39:22 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        chrome-platform@lists.linux.dev,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Tzung-Bi Shih <tzungbi@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 0/3] dt-bindings: cros-ec: Update for fingerprint devices
Date:   Wed, 11 May 2022 18:39:18 -0700
Message-Id: <20220512013921.164637-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.36.0.512.ge40c2bad7a-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series introduces a DT binding for chromeos fingerprint
devices. The first two patches tighten up the existing binding and the
final patch introduces the fingerprint binding. As there aren't any
driver patches this can probably go directly through the DT binding tree
if Lee can ack the patches. Or go through mfd tree if DT maintainers
ack/review.

Changes from v4 (https://lore.kernel.org/r/20220321191100.1993-1-swboyd@chromium.org):
 * Drop last patch that implemented driver logic
 * Drop second to last patch because it's not really needed until
   compatible is used.
 * Rolled cros-ec-spi into cros-ec-fp compatible to get all the pieces

Changes from v3 (https://lore.kernel.org/r/20220318015451.2869388-1-swboyd@chromium.org):
 * Drop spi_device_id because it isn't used
 * Dropped struct members for gpios
 * Picked up tags

Changes from v2 (https://lore.kernel.org/r/20220317005814.2496302-1-swboyd@chromium.org):
 * Dropped cros-ec spi dt properties that aren't of use right now
 * Picked up tags

Changes from v1 (https://lore.kernel.org/r/20220314232214.4183078-1-swboyd@chromium.org):
 * Properly do the boot sequence
 * Add a message that we're booting and delaying a while
 * Fix typo in commit text
 * Change binding to not spell out reset-gpios and indicate that boot0
   is about asserting boot mode
 * Split device id to different patch as it's a different topic from
   booting

Stephen Boyd (3):
  dt-bindings: cros-ec: Fix a typo in description
  dt-bindings: cros-ec: Reorganize property availability
  dt-bindings: cros-ec: Add ChromeOS fingerprint binding

 .../bindings/mfd/google,cros-ec.yaml          | 121 ++++++++++++++----
 1 file changed, 99 insertions(+), 22 deletions(-)

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Craig Hesling <hesling@chromium.org>
Cc: Tom Hughes <tomhughes@chromium.org>
Cc: Alexandru M Stan <amstan@chromium.org>
Cc: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: Matthias Kaehlcke <mka@chromium.org>
Cc: Benson Leung <bleung@chromium.org>
Cc: Lee Jones <lee.jones@linaro.org>

base-commit: ffb217a13a2eaf6d5bd974fc83036a53ca69f1e2
-- 
https://chromeos.dev

