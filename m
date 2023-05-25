Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7EF271030D
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 04:50:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237227AbjEYCu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 22:50:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237399AbjEYCuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 22:50:24 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96BB01A7
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 19:50:22 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-255bd112757so377095a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 19:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1684983022; x=1687575022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RpwfMsZIM/RuZJMwhQTZ2UB3MwnIPR30emTjY22XhF0=;
        b=KHedM/CVXZ9cf6hNEYMtXSj5ut+e+GcTxZxtBOh30Z1+FpTfqZY2ZS5JSnGqgyu4jP
         LfQNcV7WR6BpEfrB3/8wrI1u0atJ55Avmi8PcZ3aUOy4EenA1iodx8f4NJzaqAMM/iV1
         yx7Otwh6HkJfkziH/B2Bi3pEggtU1xOZsv7KlUZw1YbOIV0ZSBoSTgrMKOqeOoLP+yjt
         w69nUcVwkYKEoTSS48q+HrqM5Ie1arT1id4cR9EQS+hesBpUDqBSRVhAfgm+aOBdAZzY
         vrwmUyT6rSotPORsa/bVaYV/mRcp+IpQOpDx8eguuToq1QTUfi4PGRjz4vVmBvv8HSIw
         hbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684983022; x=1687575022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RpwfMsZIM/RuZJMwhQTZ2UB3MwnIPR30emTjY22XhF0=;
        b=Gh11v9YVloKMtKb0oQgEYObFlV46x9k8aY3nuECxTiHBGclIvabl7UG03M/AFxSzWP
         KBZpHlkJcABNhOSPf1Ee0wAGzxe9KM3jU6LzMaC/bTEp+HbGhxqSxIlXTLjMPkhfnUfl
         4rjYG3Bpct71JlsGAwK9KiTCaqr462VzfSM5MdFBUAu9rJ8LHcyqIvsKJzQI2i/WalsA
         htgZXXY0d3yiZHoTKhMVZAhDJ7QWLFup42jAHGHYcGnlfK9OOMIR11SYNi1k29fpu3++
         uYWlDFwsE0v+sOGm9C1zr0bKUroRkjaDRmigyAG5AGKMpqNTcf8LCMFY5NqbURBnYnnD
         yYlQ==
X-Gm-Message-State: AC+VfDxh7p+Npmb1lbeDgVhYWZuylHytbtd2o69BbW6CF4waC1BUZ2Lv
        rkHpNBj4Oizd2xg9fw7eNjMG9Q==
X-Google-Smtp-Source: ACHHUZ4WgUyHEalLnXKujv6G0ziF4q8IDMdhMFSyCM3orhs22q3QLabVelnxHkXTjk+bcJBY28stHA==
X-Received: by 2002:a17:90b:f91:b0:253:3dd9:79e6 with SMTP id ft17-20020a17090b0f9100b002533dd979e6mr202431pjb.0.1684983021805;
        Wed, 24 May 2023 19:50:21 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id j6-20020a17090a734600b00253239144c5sm171815pjs.42.2023.05.24.19.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 19:50:21 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     dianders@chromium.org
Cc:     airlied@gmail.com, conor+dt@kernel.org, daniel@ffwll.ch,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        hsinyi@google.com, krzysztof.kozlowski+dt@linaro.org,
        linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
        robh+dt@kernel.org, sam@ravnborg.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [v3 1/4] dt-bindings: display: panel: Add compatible for Starry himax83102-j02
Date:   Thu, 25 May 2023 10:49:57 +0800
Message-Id: <20230525025000.3692510-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230525025000.3692510-1-yangcong5@huaqin.corp-partner.google.com>
References: <CAD=FV=XUuzjjLq3YP3683jOd06odwk5Dox5MS8oY8goB-_8T5w@mail.gmail.com>
 <20230525025000.3692510-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The STARRY himax83102-j02 is a 10.51" WUXGA TFT LCD panel,
which fits in nicely with the existing panel-boe-tv101wum-nl6
driver. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index aed55608ebf6..28a7beeb8f92 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -32,6 +32,8 @@ properties:
       - innolux,hj110iz-01a
         # STARRY 2081101QFH032011-53G 10.1" WUXGA TFT LCD panel
       - starry,2081101qfh032011-53g
+        # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
+      - starry,himax83102-j02
 
   reg:
     description: the virtual channel number of a DSI peripheral
-- 
2.25.1

