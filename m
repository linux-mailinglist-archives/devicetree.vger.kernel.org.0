Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB90636902
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 19:34:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239794AbiKWSdn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 13:33:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239798AbiKWSc4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 13:32:56 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E63D3F07E
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:32:44 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id y14-20020a17090a2b4e00b002189a1b84d4so2598210pjc.2
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NZABUQWhI60I9tegrwMWQreaQqUzVwxzH3LtE7y7zkQ=;
        b=lkOt4Lu9szF0fBQH9eSaea60q5o/jZo6kOC6f+bAmuuX2Q+Eay8K12TKArZ8MYFeYS
         gGNO3/bdO74AAr6+Ii7pqx2tWMf9gcv7JC+r70pzDaKP00zpjBbyK2Pi6OKqmlyY8J3i
         Avp7rKuyeJmwHS691ed+esWbq1mt76clUO0Yu4pynb6gaPf/w/q4LWJjQjPeIQSnyXSu
         m7I0gDLkMJAeSq5/MKxD1jcE9GOq9KZ/H9cE9QZSMll/xFkhOmwYJq0NAWMMHcp3eawg
         rqNyS3mx6Md9vutg6bvnl1hTJXPS5jnIF1Vkk3ucZtttpfSIXq897qPwyj5FQzSkr/ol
         bC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NZABUQWhI60I9tegrwMWQreaQqUzVwxzH3LtE7y7zkQ=;
        b=tvy1mnBlYf9YAy4CUVfavC/PfQGIQSWouF/A4zDRyAwvHIUedmxn6O5G7ReJBLjS3c
         5JWGXe8c9PK9F6Aq/CqhvK5y2ySljegg786tzrUtE9T1Xkeh7D5DG7vUWfyQRqQSXM4w
         /rc3xR/1E9VpbTxR8CT5IXW3oEhnoflU7CSyCj3s0nvEekbUUuMjIZ31OxtXf0a+KaOG
         UvRZEs2wB6M6de7j1NjuB/w+tdEJQEiDoBCk+TFctgzTG2bWgWdZGtrsBJVuFIMaPHLO
         4YnvsI/HTfRPe+dtBGEbUim4vCkfRkp5GN8HmVCHpDC5dMvhRgd8o9o1wYgeWUIUssVH
         THgg==
X-Gm-Message-State: ANoB5plyll2tn1mrISjahl0VIBGSQ+9xl6mNiuuVusrLEWbUviKtI1SM
        gkv14MU9clKBn8NtSK72cj+3ww==
X-Google-Smtp-Source: AA0mqf5LpGxAubWk7IgLLkviKV04MNy0SzL43/+yW0xpUAEFwDxUogCqwZCnd7+60YwKY8fvKepVHA==
X-Received: by 2002:a17:902:f2c5:b0:189:1cc3:802a with SMTP id h5-20020a170902f2c500b001891cc3802amr11595622plc.56.1669228364464;
        Wed, 23 Nov 2022 10:32:44 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:32:43 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v8 0/8] ARM: Add Rockchip RV1126 support
Date:   Thu, 24 Nov 2022 00:01:16 +0530
Message-Id: <20221123183124.6911-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series combined the next level dts patches for 
Rockchip RV1126 support.

Changes for v8:
- fix rv1126 dtsi
- remove uart aliases
- add adc node name
- add uart dma-names
- add timer0 node name
Changes for v7:
- fix dtbs_check
- new dt-bindings patches
- collect Rob Ack

Any inputs?
Jagan.

Jagan Teki (8):
  dt-bindings: arm: rockchip: Add pmu compatible for rv1126
  dt-bindings: timer: rk-timer: Add rktimer for rv1126
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts  |  38 ++
 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi    | 338 ++++++++++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         | 211 +++++++++
 arch/arm/boot/dts/rv1126.dtsi                 | 438 ++++++++++++++++++
 10 files changed, 1038 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

-- 
2.25.1

