Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9C23718717
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 18:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbjEaQMh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 12:12:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjEaQMg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 12:12:36 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AEA9C0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:35 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-397f3aec11aso818596b6e.1
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685549554; x=1688141554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YftW4qyrZ/kOeqZlxsqBGWXR5JeR/v1FsiZ5diM6+rQ=;
        b=mZL8Wtg1x7nV9cDMJhfLSi86kyN5jQ0oSEnOItrgapkq2IflW87cZRuwmwOrRLXHmh
         7Ij9jHBmb6R8VEFu8j2/IEVSEBzwm7AXvq7ew7Za8oQEzXdXYWuGN4AMXQdzMxeP3uh4
         NsySmX3ozY6nmCjBrTUNju5rzL7dqvqlqAOHqngCbfQ11HBtWW+Z0ygUnaXm5BGS+Ygn
         gc1n9tYkWfKbq3OjFXgp+Ql6gmXwthqM2Xn7h2aPZ24yoM+kxPFLWtEh37xAEzzvsm/w
         kdHH1JjCRDt8k2O273rugn5UMrgdWAFAVN4v/CkCcZ/m+zBAXCjfQ8Lrf7FFP4wdRfVp
         e4HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685549554; x=1688141554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YftW4qyrZ/kOeqZlxsqBGWXR5JeR/v1FsiZ5diM6+rQ=;
        b=Tj0LqmT21nyfzjPvASV0oJVYeIpTBLlwUefVCMmXprXwL/9jgxMXaFOxHxFnGrwlY9
         cKx7d0+QImuo0gLpzedGTHf8tV5Vhq5s4L4obMaSRMRHnm5mBJ2nBnQZpjinLL+jPguj
         cm3tO/ACC+R+zkJP7YMcDxW0BejY7CigOW7OEANyfCftEg+MRoinjapTamPKXyOLobol
         TuqZN3rOvvHUvXuGx5CmlPQtWfEsHE8o1JNosPUqxUrvYwxQLDtwScxzSFag5S3bFeTc
         AFlE39ckc9FePn2Rso2aOaDkMeAgyHBBNgVjx3M5TV1b5hxe8D+ReUoXFGYUhaXzgyhF
         kCCA==
X-Gm-Message-State: AC+VfDx8w6/PyP8vr+w1O2+7dJHwQuQntrdmN6jEjHSgizZSXr9sCVCX
        jtkc/Gk2Ey0Zi/k8ptLGAGQ=
X-Google-Smtp-Source: ACHHUZ6NZSNJPwC7hkpvi3TukgaSPrEnQHyxkgxmdVbne8PeiLy/Fk6060/ycx4S35jx4aXo+kxdUw==
X-Received: by 2002:aca:1007:0:b0:397:f439:d3f5 with SMTP id 7-20020aca1007000000b00397f439d3f5mr2689903oiq.4.1685549554500;
        Wed, 31 May 2023 09:12:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id c3-20020a544e83000000b0039a21e8c620sm684633oiy.3.2023.05.31.09.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 09:12:34 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, lucas.tanure@collabora.com,
        kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/5] Add Support for RK3588s Indiedroid Nova
Date:   Wed, 31 May 2023 11:12:15 -0500
Message-Id: <20230531161220.280744-1-macroalpha82@gmail.com>
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

Add support for the RK3588s based Indiedroid Nova. Note that this
series is dependent on regulator support for the RK806 being
upstreamed.

https://lore.kernel.org/linux-rockchip/20230515152044.GT10825@google.com/

Changes Since V1:
 - Removed changes to ES8328 codec and added a note that a permanent
   fix will be needed to cope with a 1hz mismatch between requested
   frequency and actual frequency.
 - Fixed vendor-prefixes.yaml change to alphabetical order.

Chris Morgan (5):
  arm64: dts: rockchip: add default pinctrl for rk3588 emmc
  arm64: dts: rockchip: Add sdio node to rk3588
  dt-bindings: vendor-prefixes: add Indiedroid
  dt-bindings: arm: rockchip: Add Indiedroid Nova
  arm64: dts: rockchip: Add Indiedroid Nova board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 764 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  18 +
 5 files changed, 790 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts

-- 
2.34.1

