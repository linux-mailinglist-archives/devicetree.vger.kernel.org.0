Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC6B4776424
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 17:40:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbjHIPkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 11:40:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232817AbjHIPjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 11:39:49 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB1372691
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 08:39:47 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5899ed05210so4058697b3.3
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 08:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691595587; x=1692200387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gnxrC9+PjEoCZBhf/tERYc/k39q+k50W9kHBAz7pScw=;
        b=igsdZD86oYVq4D9544bLx2s8AIJcUqim/Bds9c63d1dcILXkKY8CMIutZo2vbuQvTe
         NTu51d6llwTQ0R4emSVLZ3Ah3RZ50sOYTpXlX/iJtiGycY545n0P+IbsBw5NKRBtj42b
         Z0urSvaU64UWrAjRUi79W1pGcryWorysm1b0pYfSRfyMSe8CwDmggcf8nU6ldwbgRqyW
         S72/6X2YdA6Ub4tAr0XjlJHvhP5rlp4iGHK5XNrJyehmusm8S8P7bQDcGjnbLSJM0xAB
         /85w3BMZOSVKrmXUubUDv8e2JDXfytjCaNMaPVoNd80u8+Omm+ldTvhaJxaqvpD0+NAH
         87oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691595587; x=1692200387;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gnxrC9+PjEoCZBhf/tERYc/k39q+k50W9kHBAz7pScw=;
        b=VSHWQ2LeLfwsgTu8lmhBHNa1+PnSQSqCtCUPwrKlcxEZuQQX6OIYCOz/VIRZ2cPvG2
         FiT0d5Tn+Q6J+xSVkmE1Y/Zhu2MeWa9cR/PS/71utwvYcExsB976+CLOqRAoNOoiNHkY
         rqg5qPTG/+RApeirLxQVFus4M9/6FNCBZd4X27vyKeYWB/LOF5SRG6ad3DZFLFAqRq4k
         Aqg9wwjCTVyDD/zfCuII1xnpE0e7NFEnNiW07FW9/SP/GNB3OGpyofO+bYJqtedSWYJE
         IG4QJF0M+YL65yrR7Jk6Ls0lMhk9cL1EslCrWw1Q+UmycpWCWRtdsqgkDP4UQtt8oNgx
         epGA==
X-Gm-Message-State: AOJu0YwM1AYk1I/Cj0Olvszcpwd/t8IYnIzOttkFQGpi2dmTU33/PEQT
        8Ey1ZzB7tNVdQrSV9hhK/ZOrleLadU8=
X-Google-Smtp-Source: AGHT+IF1KZ+ZjwCnbhEUYc9LWs7sjj0Qv5ILjvS1v62hTEBZeYF5GxvOQbgaeeNbEe7FEnVl48CJzg==
X-Received: by 2002:a0d:e946:0:b0:576:8a5a:87e5 with SMTP id s67-20020a0de946000000b005768a5a87e5mr3013889ywe.26.1691595586892;
        Wed, 09 Aug 2023 08:39:46 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u15-20020a81a50f000000b005707fb5110bsm4043969ywg.58.2023.08.09.08.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 08:39:46 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/2] Support Anbernic RG351V Panel
Date:   Wed,  9 Aug 2023 10:39:39 -0500
Message-Id: <20230809153941.1172-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG351V panel. This panel is mostly
identical to the one used in the 353 series, except it has a different
panel ID when queried (0x4000 for the 351V, 0x3052 for the 353 panel)
and will not work without the inclusion of the
MIPI_DSI_CLOCK_NON_CONTINUOUS flag.

Updates from V1:
 - Revised text in devicetree documentation to remove references to
   specific hardware.

Chris Morgan (2):
  dt-bindings: display: newvision,nv3051d: Add Anbernic 351V Support
  drm/panel: nv3051d: Add Support for Anbernic 351V

 .../display/panel/newvision,nv3051d.yaml       | 18 ++++++++++--------
 .../gpu/drm/panel/panel-newvision-nv3051d.c    | 18 ++++++++++++++++--
 2 files changed, 26 insertions(+), 10 deletions(-)

-- 
2.34.1

