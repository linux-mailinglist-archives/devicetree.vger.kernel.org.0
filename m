Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 184B3635831
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 10:52:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237138AbiKWJwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 04:52:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238247AbiKWJv0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 04:51:26 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDB7E4A
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 01:48:42 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id 6so16317110pgm.6
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 01:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1GEU2cRgjlLvYsLY0fZ4A4QbwfIO6NbgQTnOI4zDrLE=;
        b=SUtTrkQx6wur4zOzrqLMn/8cHKy9h+yPv+sWOb9nHEWuhuNfU+3ZwvrZL5PsWR1jHD
         LviK45EH3sfIL/zNpqcb/E6rCbosrPbax1qUFcHZlLG1ntBzgPSp2MPSwLc7kaRE8AKP
         9rUbuliMwnHZOeY7pNQQsu/XKgljhiGE9+2tY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1GEU2cRgjlLvYsLY0fZ4A4QbwfIO6NbgQTnOI4zDrLE=;
        b=5rRr94V/hHQg7IzPKMq5DGwWuU9IJuH0aQlf/FwgLLR0xhXlnaodKMIpUoaR7hxaHT
         tDrZON3/Xd5IFihalTNiggOhNfzR/hRSP1/kvl/yGhwIoaO0yA3VeAABFa8Suv0+dcDJ
         UVCBf8TYyCET+r3HcboF+4/a3cRLotGLHE4VYAOFb3GgarybT9Gyo7xpVZkGcTdmOpiT
         myHoSTRPLhMGopZk3jktLliaP0VDtTy8Hk9LcrEKV8qeBlRU41KCU6+clXULb2XwtfUR
         3yqTxdW5/8ArY31xYgfiF/w8CZ47b1eEv/0ePxJDUbVH1PPS6g2i81oEU36RQ8lEF6+l
         vC6Q==
X-Gm-Message-State: ANoB5pmt7exlo9nuifKdbfjkMczuUtuxWeoa3uPUAsg0yq4EpoWBdzhF
        U+wr0nf7zLvHNibmB8b4q1y6gA==
X-Google-Smtp-Source: AA0mqf4GuAbzU14kwO1xYECCrssU/mE1WSrgrNjxoxPUn/mwN7pQwtnAZM0fOT4hAo3W0rDYKw9bjg==
X-Received: by 2002:a63:f00e:0:b0:477:5e25:6d4c with SMTP id k14-20020a63f00e000000b004775e256d4cmr7962597pgh.159.1669196922014;
        Wed, 23 Nov 2022 01:48:42 -0800 (PST)
Received: from localhost.localdomain ([183.83.141.79])
        by smtp.gmail.com with ESMTPSA id k16-20020a170902c41000b001869f2120a4sm6524670plk.94.2022.11.23.01.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 01:48:41 -0800 (PST)
From:   Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Markus Reichl <m.reichl@fivetechno.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com, Da Xue <da.xue@libretech.co>,
        dsx724 <da@lessconfused.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 0/1] Increase spi-max-frequency of nor flash for roc-rk3399-pc
Date:   Wed, 23 Nov 2022 15:18:26 +0530
Message-Id: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
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

change spi-max-frequency of nor flash from 10Mhz to 30Mhz for roc-rk3399-pc

Manoj Sai (1):
  arm64: dts: rockchip: increase spi-max-frequency of nor flash for
    roc-rk3399-pc

 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

