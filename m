Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0FE5598356
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244680AbiHRMlt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:41:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244497AbiHRMlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:41:47 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55376AE23E
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:47 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id 130so1422103pfy.6
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=QCOjBBtzFFko85sgu6SyGw6HeoZtmL6fE8Mcl3F6F/8=;
        b=plc3aIsSlj/N37EpDCcK4WXQ5jP07yp5slb5PcLu71tJ2spAeGHdS2+kFnSIWWt48i
         UZYXgfqFKiXtuczjB2x0z/c66536/Iw4TkxwVS4l2KrxqZxFAGpytrwvK4jqiMH8XFJ9
         Zt1PUEOiqna+qXmTTYG7Afd1bSb/UtxIhKP8ZShcxGc4QW15fii9rSI2ifWeVyNoIpwG
         4NvrtDZDFf2UATYUmn/4Z6s7vTbBuIW0LdEQX7adB8cuPoaMLFBYth8nykt/iXgKmh4O
         ZIC5gTGggYZyw8V6ezepwhS34uuaj6+p95iN1zd6ZqKLCB678vBiSydBYRdrJ1BMEzmB
         3iKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=QCOjBBtzFFko85sgu6SyGw6HeoZtmL6fE8Mcl3F6F/8=;
        b=FybgzlBUbCqWnk5USG2+w2WbFV1bVYgwhusqztIBP6ALi0hGr6gpp/FolulwmCbz1c
         ZfbGXaitf1JQNHawJz96y0WCbqQar8PPKn3Ym4ALE3aShhe0PvYBWZ681dUvfJQYW3AP
         MoRfqZEVtpkRBTVwhZuUnu+2xw8R8paboWoWOpXaB3df6tZZPVWnSOE1FeVIZ3BxJUbh
         DEjkkTEe7ObU8rtRoxqSUNd7SXqqJhf5BKMeFtHkw93C+OPflWZigGipdLKO6hfIbeCQ
         Fciw7TbW+zPOyCj/fYSlXDwlcgxvFXtHeIY2TyQ2fBhLROFDO4/oII81hNeamkYJG70Y
         3TaQ==
X-Gm-Message-State: ACgBeo1CuNwotEn2YzUa1PwOd77/mEiS9BfcveXPOTaa7l9Caz0LllQ6
        e1TPG5deOxHjvSqNMn5/bCIbmg==
X-Google-Smtp-Source: AA6agR7jdrbKfzIVhtLktPgPNRNXrI9KwbVeg8oUA99zenW+nO6Ie+IpnuiCT02zHRas8WcI2RkxPw==
X-Received: by 2002:a05:6a00:180d:b0:52d:9bc0:2155 with SMTP id y13-20020a056a00180d00b0052d9bc02155mr2835143pfa.3.1660826506873;
        Thu, 18 Aug 2022 05:41:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:46 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 02/19] dt-bindings: power: rockchip: Document RV1126 power-controller
Date:   Thu, 18 Aug 2022 18:11:15 +0530
Message-Id: <20220818124132.125304-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document dt-bindings for RV1126 power-controller.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- update the header file
Changes for v2:
- collect Krzysztof ack

 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..6840f089f523 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rv1126-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rockchip,rv1126-power.h"
 
       clocks:
         minItems: 1
-- 
2.25.1

