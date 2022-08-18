Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E03C59834B
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244341AbiHRMme (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:42:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244482AbiHRMmc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:42:32 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB14AB2845
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:31 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id k14so1456093pfh.0
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=YgF3WO8aiyfxlHNlRk4wZ4N33kytZoAzp/W6RtdrMy4=;
        b=FA1dTD8NI6q9JLu6sTU0mbbBdTv/70Ul6F0UzUEvc4M+3EgYUrqSdloK16KkJaRReH
         xKdFFusoJuG2d+Z1md77+7ffyiQ1uGBGkbAu1/QgDbZHaSj+WAj9wvu5CmBtfqRq1RxT
         N8LkkdTvV7OkbxzxAoOdJVQ4VlYyaZVEox2gKVlF2U7QcSux/O8IULGhKpGNmzpY89Fe
         5okdqomwXKsIdBBmIL2xOScdeXGfhRSe0ZZZtDYk4UN3MUQF8+mvg4nFg8kQshM8VfkX
         8GzDq3ueWxNLMgAM8hT+xzWoAp5buoV6GJIj0hHLSLJ6U+tq+MpNtCvL0D6agnr3LTKw
         yaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=YgF3WO8aiyfxlHNlRk4wZ4N33kytZoAzp/W6RtdrMy4=;
        b=5TfZWAzcEpsPS2sVgnYjwsg6YQYoyns2LoBi/6HBQ6v08KQVjP5JFi3aDGb3zB0N9Q
         REYOQl/YrwT3cvFYEVnPl/rZ7vOWqJzOJ3PQIz65WJdmzlbIu2CmGzVtDKitjRg+/wJF
         EDadfGf2QU/Wf3RxXK3/srlIrkFlmnD7ani7JrBIhWCzJ6yazkxTn3UpTmalNag+IRvc
         bv8ViwgU06+iZxo9fAyZdehY/ck2udASaAWhKDgevrqBf+Lkk7lxqAZBWNw3q/pauRc4
         isfQ01J4WNd0PxDfbpqaHLqHefEIpNzvDJ1Yn+OIFBppOMUNUzumfMXZxdkwRoTlBkcp
         UBfQ==
X-Gm-Message-State: ACgBeo3RAeFD1r7UTmWjIQAZdjPWyxccD4pRR7aF9S5LazGDljRijLUR
        56LAtf1eKEZkddFDw4E/msxGGQ==
X-Google-Smtp-Source: AA6agR62Vct4PZPMSDKDlX0E2z2koGoB/pktLdgHOZTtpK75oOJsKSzWoccwnV/pHO3IoAh/BasqSg==
X-Received: by 2002:a63:2148:0:b0:427:17f6:7c05 with SMTP id s8-20020a632148000000b0042717f67c05mr2339116pgm.200.1660826551273;
        Thu, 18 Aug 2022 05:42:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:31 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 13/19] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date:   Thu, 18 Aug 2022 18:11:26 +0530
Message-Id: <20220818124132.125304-14-jagan@edgeble.ai>
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

Document compatible string for Rockchip RV1126 pmugrf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dd7090d668f5..521fbcb8eeb9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -46,6 +46,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1

