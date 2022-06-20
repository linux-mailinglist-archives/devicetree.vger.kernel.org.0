Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29C11552202
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 18:13:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232463AbiFTQNa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 12:13:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244534AbiFTQN2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 12:13:28 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97A9A2019F
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:13:25 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id eq6so8469927edb.6
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 09:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2D5RHmuIZcoIP1zdKa7QdderVGwM9Ky0GeQbDgGuV4E=;
        b=cBeckDrRB9/yhrilFmAYPRbHI+uCOGC9r5l10lGl5KWIuYXQFFSo/hVkPChl9UeCyH
         wBBw7i50bAZfLUQqfouR6sIS2+TebyspNUdWmgOxirNNX4SMGLsZoByt1ziMruvu15R3
         DuUo5zmOue5M1tGJ/JQ1+B1qwrknvfxQ6DXmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2D5RHmuIZcoIP1zdKa7QdderVGwM9Ky0GeQbDgGuV4E=;
        b=Y6n1QcKCwBqrOAbK1R2CpWz4UB8/rjykWJoAzsX9eqUud2pWJT43GuilSra8igGwk1
         wAALYI17Z4duVsH5wzoKpnG+XI9+TEO8u56Z+rFWZiIh4LjvNm6oMClFrhB//yMq9GDG
         2SFm92EMi/haoM8ndeT4ChGfozhR9WYvxXtZ4nbgMAgW0g6xXvIRqKb5/FFDXIoUJ7xB
         HUM8zNK1qiKyFuFkp8gHH9cln0LKa5rVZpz0aFZCgiVqy8fV3tVDQHPBRNBEWuk087iM
         RE3a/iGpzJuVGiLsFo9tHu92vbKz3sOTHFRjY38oo3RYFD13F5O3T/YyEnV7OJQwWJOI
         /F9w==
X-Gm-Message-State: AJIora8fkbuxLcPAp/QdIS29kJL0vnVVfJ9gKmrmVVryTwkxbzDkm/sy
        wPUEzrSlPBCbOhiZHpIQyPjDOaTAI+YW7Q==
X-Google-Smtp-Source: AGRyM1v7ZJ3iiAZyELv66iNp28JcyKUeN2jksoFtm1ez5u/wccNGFBn5n/fvYMaTqGQwqfVUvkI44Q==
X-Received: by 2002:a05:6402:e81:b0:432:7f12:1878 with SMTP id h1-20020a0564020e8100b004327f121878mr29886857eda.179.1655741604172;
        Mon, 20 Jun 2022 09:13:24 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station (net-188-217-55-189.cust.vodafonedsl.it. [188.217.55.189])
        by smtp.gmail.com with ESMTPSA id p26-20020a17090653da00b00706c1327f4bsm6209772ejo.23.2022.06.20.09.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 09:13:23 -0700 (PDT)
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Cc:     linuxfancy@googlegroups.com, linux-amarula@amarulasolutions.com,
        jacopo@jmondi.org,
        Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: rockchip: px30: fix ov5695 camera probe
Date:   Mon, 20 Jun 2022 18:13:17 +0200
Message-Id: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
This series fix camera probing issue of ov5695 camera driver for px30 evb.
Improve also the ov5695.c driver using using regulator_bulk_enable/regulatore_bulk_disable
function in __ov5695_power_on/__ov5695_power_off functions instead of for loop

1. max drive-strength for cif_clkout_m0
2. add mux for mipi-pdn pad
3. use rk gpio naming convention for reset-gpio of ov5695

Note:
 - This series was tested on PX30_Mini_EVB_V11_20190507 board

Tommaso Merciai (3):
  arm64: dts: rockchip: px30: max drive-strength for cif_clkout_m0
  arm64: dts: rockchip: px30: add mux for mipi-pdn pad
  arm64: dts: rockchip: px30: use rk gpio naming convention into
    reset-gpios

 arch/arm64/boot/dts/rockchip/px30-evb.dts | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

-- 
2.25.1

