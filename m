Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F23F4728FD1
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 08:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237538AbjFIGVI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 02:21:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjFIGVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 02:21:07 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7466F1BD6
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 23:21:03 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51492ae66a4so2133338a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 23:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1686291662; x=1688883662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s0KsiO4chph33S79F9ENBTiIdHIAq8Drk63634LLZQs=;
        b=kbV4G7FpeyKX8vqSKQVxCHgnfKl+l276t269BAHAwJ23WxJ7nO/Oasy+9J5YumKyca
         T0uhyyudNLhM+w7pc9FA736CWqmxTkyTSsXqXOdfoQrYeO1IEHkoZSz4uKQsYCPrsTwM
         ULacDwUYyqRuKtDEU6r//KnkwN3AFNWxWIfls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686291662; x=1688883662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s0KsiO4chph33S79F9ENBTiIdHIAq8Drk63634LLZQs=;
        b=Ajn/y/hkQ6yQgavQa/F9nyENXgg/L1XPd0xeCcnX9xMIbwmG6SnG5BWX8UPyrn9ThM
         Bqv50neGGhiVXiciAZuM1eLGLQpB8QR5Y7nXJyNaUmwtsqIAXVPTgnSVHoijE+7hDPAG
         675mI/VqxO1uRHAZJG+TcZqqRw/h+KmGhVaKxkJ1aNvcMqHz0HGPF3E2Hx6RNLIGiqnH
         op77q2DvTQj8R60jh976kphGgwwsiium0wtIPpdWxvGh0Sj+8YHEo0Tbp0HZXuIxBxlx
         BhCBErbTNEnRNzSnNqkN5Rq57zMLCr6nhdk+SLG99IiBf5CqhhMW+/R5lvzyylPTxBdr
         XJhw==
X-Gm-Message-State: AC+VfDzvmAd+e4VcJee02WRCkMrvcQsfqHlB9SoaVbUWKmZBYwE+z4OY
        X6uDPbiQPyJb2uOkVIjpB/EeOQ==
X-Google-Smtp-Source: ACHHUZ6l4dLtGlhnWIwTWUWwtNlYtOyR1yl1ptA5SoQD+GUUgf1U2scpLgKXakdx81uLNojiuXQ7iA==
X-Received: by 2002:aa7:c44a:0:b0:514:bc92:8e1d with SMTP id n10-20020aa7c44a000000b00514bc928e1dmr392209edr.14.1686291661889;
        Thu, 08 Jun 2023 23:21:01 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-248-31-20.retail.telecomitalia.it. [95.248.31.20])
        by smtp.gmail.com with ESMTPSA id m7-20020aa7d347000000b005149461b1e0sm1380058edr.25.2023.06.08.23.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 23:21:01 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     michael@amarulasolutions.com,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 0/4] Add display support on the stm32f746-disco board
Date:   Fri,  9 Jun 2023 08:20:46 +0200
Message-Id: <20230609062050.2107143-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
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

The series adds support for the display on the stm32f746-disco board,
along with a generic patch that adds the "bpp" parameter to the stm-drm
module. The intention is to allow users to size, within certain limits,
the memory footprint required by the framebuffer.

Changes in v3:
- rename ltdc-pins-a-0 to ltdc-0.
- drop [4/6] dt-bindings: display: simple: add Rocktech RK043FN48H
  Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next):
  https://cgit.freedesktop.org/drm/drm-misc/commit/?id=c42a37a27c777d63961dd634a30f7c887949491a
- drop [5/6] drm/panel: simple: add support for Rocktech RK043FN48H panel
  Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)
  https://cgit.freedesktop.org/drm/drm-misc/commit/?id=13cdd12a9f934158f4ec817cf048fcb4384aa9dc

Dario Binacchi (4):
  ARM: dts: stm32: add ltdc support on stm32f746 MCU
  ARM: dts: stm32: add pin map for LTDC on stm32f7
  ARM: dts: stm32: support display on stm32f746-disco board
  drm/stm: add an option to change FB bpp

 arch/arm/boot/dts/stm32f7-pinctrl.dtsi | 35 ++++++++++++++++++
 arch/arm/boot/dts/stm32f746-disco.dts  | 51 ++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32f746.dtsi       | 10 +++++
 drivers/gpu/drm/stm/drv.c              |  8 +++-
 4 files changed, 103 insertions(+), 1 deletion(-)

-- 
2.32.0

