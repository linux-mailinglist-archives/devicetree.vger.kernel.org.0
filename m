Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7097D700CD2
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 18:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbjELQUx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 12:20:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjELQUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 12:20:52 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EC0B423A
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:20:50 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-ba6f8e0b39cso1761907276.0
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683908449; x=1686500449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MMVTnr8Vefnpi5C8EzpY/O3BecS6QP6Gaw9C1p/VYIs=;
        b=qwX63S8xTYoMdnB2iIIxSqGk3GwAWs/li2a+p8Df+ITO+547+aXtFfzBCqWwzTjsOv
         xdI0rbvR9RplkWWhwP+W6wORl8JWcTUyQYZ7534Qq5Q36dPtFplKujdZkQwm8hSF7aZi
         HAXoQhT4J5vme6F3R85x5aScax/hKBZ2iqF8g4CvTiWGO/SFslvHddDUmqaCgl8T75Oy
         8MKA+UcAUkbtFcJrmEykBKKTrIy2WRiZhneGYcpUrkRBSP68WXWxADuCCqel/V5cZR5M
         eFRwFKRNyHfx8l0OsWLif/WNDkD1IZG/i1hXBRLucJgThUMgFlvk8DDNtbIo1nBzhi+2
         POiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683908449; x=1686500449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MMVTnr8Vefnpi5C8EzpY/O3BecS6QP6Gaw9C1p/VYIs=;
        b=Qttkml1ILRw+QEnbdPT3/65ixY85Ayz6CU8uSd78O6cWuyowEdJt5HhRCRh9teNyrU
         wXnz9XyTSsPJqbEqO8T3Wre2OgiBmLtd1UqgD25VxwdDxWn0Il8h+JEBgOhIkbB1TqLJ
         N0Linv1DczRYWObNEW5Djc98Kh+u1ec2cKATEjgvKyUEEn0snIH4a8jjjgbJrQXr72G3
         hkeGLITUyKxj+0uj1LYYD/BHsVPtNliX3OPmO9fi0+07Jw5Kn+Zityt706FT1wREPw1c
         AoecVo/L8UgY3vVOwZ3npRGghtUEr6CodsAJFvIKVu43r6PtNVitHyKnQHu1YPOKmFV6
         VB6g==
X-Gm-Message-State: AC+VfDyVIG8ZZsdWOrsrcP0zYNq8dMqY0hv9gLtRhD3lAdUF8ZcuYgLY
        kJWD5hd8PcMPj3KpSQZnPg8=
X-Google-Smtp-Source: ACHHUZ5lleiTBEjcTQkLpcX0fx6sBkIMc8ts+CFvVp8q6vyGmE2vokPM/dQuFAg0LlsFG13YPu0RyA==
X-Received: by 2002:a25:1542:0:b0:b9e:84b0:bfa6 with SMTP id 63-20020a251542000000b00b9e84b0bfa6mr21839025ybv.25.1683908449221;
        Fri, 12 May 2023 09:20:49 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s19-20020a257713000000b00ba71e594cafsm340129ybc.62.2023.05.12.09.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 09:20:48 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, maccraft123mc@gmail.com,
        sebastian.reichel@collabora.com, jagan@amarulasolutions.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] rockchip: Add Anbernic RG353PS
Date:   Fri, 12 May 2023 11:20:37 -0500
Message-Id: <20230512162039.31132-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG353PS, which is a cheaper variant of the
Anbernic RG353P.

Chris Morgan (2):
  dt-bindings: arm: rockchip: add Anbernic RG353PS
  arm64: dts: rockchip: add Anbernic RG353PS

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-anbernic-rg353ps.dts  | 116 ++++++++++++++++++
 3 files changed, 122 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts

-- 
2.34.1

