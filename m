Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E247769331
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbjGaKf4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:35:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbjGaKfz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:35:55 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D9A6E53
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:52 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-686f25d045cso2790014b3a.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799752; x=1691404552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j/jFm2EzRpW7YYRmDR1o3UOuJLAvOI+SSUOIxC7DbfY=;
        b=3Q8MaEX0FCITILh4l23NdZ2/fektqPWl0L0cwzxnKJ8H3Mpn7FgkyUhoVsGe4TKNu0
         A2jc3GzdQvpCg+PTgThwmm07h415Db1UHUsew63eeOrNbp6ogVqHPGrVWxAT0KI3QpuU
         vaK/A7XzHrvKXZzgDwqUk2/JH9OViutmle/jPAV8mssQYJljZ+T4ro7ktlvWfdL5tQip
         RHd1d3OCpN8JSzPMykmoud6EhfAW9C3hlEAS9v1zpQwTw1MKT8+QVm2Ib091G+7q/1Us
         M4BWg/g4PPEAjdHsIi3sSli3kl1KOeFJkH02GjuGSpSWQkAfU6Yl4+op+MFP2X7N7HBL
         GDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799752; x=1691404552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j/jFm2EzRpW7YYRmDR1o3UOuJLAvOI+SSUOIxC7DbfY=;
        b=OBS2zQE1gPOmyoI2wRXbPEBTnNPxUi1x/o1d/4iN0AUKcpro1Ay303rWK82GxSVRcU
         kkYq5IeFOz2WiAKvLgO/k7zIBV/ZSKQ2KgZqw5KIqkCmWrm8/3iYDn3CC7Exx6MnhiCX
         wJE4cwdUTPNVfz839UbdDkae5Mm/aSSZ2zkuGou2tR5AJ728ABHmypvNX+/QMqNFiIb+
         rug487IFyIE+W2/7zPCuEaHYvcIF6ObzJr6t0AQwgRA5DPdJRs8dVstaBhX6DnKj3UVV
         Irmfns22Gy2flwMVv0sSsEjymx5ts+kyCqthpvq893XxWz42wCPPlGPkHAnI7p77upbt
         MisA==
X-Gm-Message-State: ABy/qLZnGatiX1NNfsMHdZ9jPDrhL9CB4mLc/FEhlvHP3pvWJlVNJ7F/
        iQS9Dv1O6vxReyk3Wqe+URZ24A==
X-Google-Smtp-Source: APBJJlEASV+m7M7Ne+9wp9+AGK/il4FTsj4zAPmMSVbef7qpRBcvAXj1Ug4zaIDvsKBhTv8lZH4Lvw==
X-Received: by 2002:a05:6300:8005:b0:12d:4c17:bb2d with SMTP id an5-20020a056300800500b0012d4c17bb2dmr9331462pzc.26.1690799751926;
        Mon, 31 Jul 2023 03:35:51 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:51 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>,
        linux-pwm@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Subject: [PATCH 01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
Date:   Mon, 31 Jul 2023 16:05:06 +0530
Message-Id: <20230731103518.2906147-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document pwm compatible for rv1126 which is fallback compatible
of rk3328-pwm group.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: linux-pwm@vger.kernel.org
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: "Uwe Kleine-König" <u.kleine-koenig@pengutronix.de>

 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index f2d1dc7e7b3f..65bfb492b3a4 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -32,6 +32,7 @@ properties:
               - rockchip,rk3308-pwm
               - rockchip,rk3568-pwm
               - rockchip,rk3588-pwm
+              - rockchip,rv1126-pwm
           - const: rockchip,rk3328-pwm
 
   reg:
-- 
2.25.1

