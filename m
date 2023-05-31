Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 777EF71787F
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 09:44:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234122AbjEaHoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 03:44:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232198AbjEaHo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 03:44:29 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B960CC5
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:44:27 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1b04706c85fso25664715ad.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685519067; x=1688111067;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j4nc3W4SI7d/HcZGsXX157wdAbHs0EiK5je8w50UqyQ=;
        b=NTvt2q5xE99luFijzCiaKdgrJpfmjmv65/TgTQck8seI3zdcz2O0+d9d53gBoulgmj
         Q8azOkszB+GhpKVJetOCb7uT9OpHB9aVghwW3gzcvys8enS9ICkccqD40EXLgB+d38pR
         jxLv1bnFxJGe4RkAm8TUbfUH1kXV4ms5fTYDo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685519067; x=1688111067;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4nc3W4SI7d/HcZGsXX157wdAbHs0EiK5je8w50UqyQ=;
        b=cEWIFaKSfm1aNejBclsQ9K9RrxuBCBKP9CZU+KrH+2eduytlUKYbEZmYo3zTTWY6R3
         MuprqwKMY0vTP9EQpoI2o822+L1cy8VYWCkgfuUAGuEDEUCoiR0szUOhdIAJk0pAh4hB
         PG8RkxFOsmW1gVl7xzPBpEQkE6TKa3Ox3zMBiW4/a/1Fc5+zbEgLtPjrIQ7qWeN3CFvP
         G6B8Xtc9paCI0lN+ad9eFoQ7+O+CkRA0PvnYEDNDI/2fzYsvTYjER2tP3iqL8Kag98yz
         WnC4QBSkQvtGTUNcpLFa7OM+RLBNnXyG2fuofzz2UpuA3/v8iQYgifd/jK4LSw6FRwDc
         s2zg==
X-Gm-Message-State: AC+VfDxQuzRhs7URSn13q/RDqjeeGJatlK/qQTnM79pQ8knNjJ5My2hL
        37RaUkkHr6mu/e1H80e2BdAbf0JdR+gNmFTL8Yc=
X-Google-Smtp-Source: ACHHUZ5zzqgCNrh8XTUiFC/pDJbMydQ/sOdQ8Cgd8+eUrRvEpiSm6wVHUrcKlPo0bdwkNGNG4NPCUA==
X-Received: by 2002:a17:902:ecc2:b0:1a6:a405:f714 with SMTP id a2-20020a170902ecc200b001a6a405f714mr5385355plh.63.1685519067154;
        Wed, 31 May 2023 00:44:27 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:fbde:7ab0:3462:1188])
        by smtp.gmail.com with ESMTPSA id c3-20020a170902d48300b001b050db1894sm647616plg.36.2023.05.31.00.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 00:44:26 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH stable 6.3] arm64: dts: mediatek: mt8183: kukui: Add scp firmware-name
Date:   Wed, 31 May 2023 15:42:44 +0800
Message-ID: <20230531074421.888652-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.41.0.rc0.172.g3f132b7071-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The upstream SCP firmware path is /lib/firmware/mediatek/mt8183/scp.img

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 63952c1251dfd..7b2b175370443 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -822,6 +822,8 @@ &pwm0 {
 
 &scp {
 	status = "okay";
+
+	firmware-name = "mediatek/mt8183/scp.img";
 	pinctrl-names = "default";
 	pinctrl-0 = <&scp_pins>;
 
-- 
2.41.0.rc0.172.g3f132b7071-goog

