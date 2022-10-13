Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93A305FE447
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 23:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbiJMVeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 17:34:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229807AbiJMVeA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 17:34:00 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08BD715747E
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 14:33:59 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id x31-20020a17090a38a200b0020d2afec803so3040593pjb.2
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 14:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FxtCO/sTBsdvIbx9K15nNXMqkXqCe3muvorIeT/Gp0Y=;
        b=PQxgHbVW7gAjBNkJ0m4EistDNiE8uzyqSLr+wXnsfrQqr0iqW5Nv08TbMCsYysfj1n
         6NkTZD+iOCPC50AvK3V5UdElwqJY/bqyff9ak+AdhI75oU98fdVWo5iW0B+/tOXLQPiN
         hOp7vn/NbwLW7fGbHHfR/50F6GTF1adhVk7io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FxtCO/sTBsdvIbx9K15nNXMqkXqCe3muvorIeT/Gp0Y=;
        b=rYR5Earb4+rPH2vtWNF4Zo2omErv24adkmLdifEnlp/DgYQ13vWRYaP52IpEIDRHlA
         V1xDYlAg0u5KkykkXaj5o2V8toqZ7E18/oOmfRCHX7qcS6CW/FpW13//3nowoOQd+P3b
         wbNRCCY99aoi75HKzFP3hdxr/NWxVuQgS/I7TtYgJYKlKiYJF/U7QWyZlolLQwpcQakq
         dx3iOn5zxIxHGeS25z5E4cV0gFtyMkmC8iNOQuWLFVfTG+xALNGhUKe8uwPgk+JV/7wE
         vGi0UebEQMdVcjehaFLH2EOQk1cTzG5p0411aRrWoUkls/iHvp8eXRI4w4sC+JyyhcdC
         ufEA==
X-Gm-Message-State: ACrzQf2WMenVW8Hzq8fjeRo5LR/TicY4lverBPKfLmyAgkWYoir+jIA/
        0LVpn7yOwHgr13TjCS2xKP7SfVtivBVVQg==
X-Google-Smtp-Source: AMsMyM5uCtOl2nxnKKMH5S50IdGA9ftWMvOziGDreMSFoMg0ribeqEJscEi9o8kO8lYmUUEMsVcqew==
X-Received: by 2002:a17:902:e846:b0:185:2f:c4a with SMTP id t6-20020a170902e84600b00185002f0c4amr1763888plg.110.1665696838557;
        Thu, 13 Oct 2022 14:33:58 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:e1c4:e063:3947:c870])
        by smtp.gmail.com with UTF8SMTPSA id 64-20020a620543000000b005632c49693asm139737pff.202.2022.10.13.14.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 14:33:58 -0700 (PDT)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH] arm64: dts: rockchip: Drop Scarlet's repeated ec_ap_int_l definition
Date:   Thu, 13 Oct 2022 14:33:35 -0700
Message-Id: <20221013213336.1779917-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is repeated a few lines down.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index ed3348b558f8..a47d9f758611 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -734,10 +734,6 @@ qca_bt: bluetooth@1 {
 };
 
 /* PINCTRL OVERRIDES */
-&ec_ap_int_l {
-	rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
-};
-
 &ap_fw_wp {
 	rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 };
-- 
2.38.0.413.g74048e4d9e-goog

