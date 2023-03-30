Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61E296D08A0
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 16:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231922AbjC3Osk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 10:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231693AbjC3Osj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 10:48:39 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E5AD9765
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 07:48:36 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id i5so77699949eda.0
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112; t=1680187714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLAWPKXoUympMZat+BBCQ+FxQRdpcVURmNHlKdeMUUo=;
        b=OvBUfxnk0HXmY5SwAKV7i+AqA+18ykI41gFHp+3nKIk5BrAF/YkmRLtmPZrweSUW5b
         LbXdODGY10fYx8Q0AtlxrhHnv/2pQXgRU7OY2u/mkDiz1cGHby1UewgYSmhoeHNwOm02
         BNWxDs1X/pK0Sb+fWQnzEGybckE3UEfzrBdibNVjadivrsUfX3PxxgoW2k5ErkcazkLs
         lORRpl1s0C9NWYcp1uuflKa707+rs8Mwu/M7JXgRmqq8wouekuneIc/FSWxtw+YEOttZ
         w2m66IZDr5GzLv+uI1/GZuPfvP0vbiHTR/6iKFLLSZmXEeMcve5XPOmL1CGtAYawqJbh
         bpOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680187714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iLAWPKXoUympMZat+BBCQ+FxQRdpcVURmNHlKdeMUUo=;
        b=eIfNL+7v7pVesR6dBBszUnYhk+yyQ63K/MXL8ael8KlCLB1mFPrXpjpXm79BByntoC
         TYFFZ7FpVH6LA/N3jrCxyfjWpYwtG07lR8z7VycycMZbA7hlVWr8p9sOEmM46GsZqHK9
         AmGBGDa6BzikvuNdQfnZUh/MW358n54F/6ro1D28yRx3uKnyp5Y8CyY3VPYaBOI7Ae2u
         TiDFhqS1JiwjhO6m1c4kaNYCHXBQQpJ85llvHqgH4oC49h0peiCQ4wKfD5KdEFO2r3d6
         8Qwj7hQCJM55mGCy4G/eLMjt0ksXnyzR0Mb73HI5i/SKhZD2YQY3n/pH0O4VtsotYfrJ
         INTA==
X-Gm-Message-State: AAQBX9fhWy8KISELs5IQN2nomMDfacSBJwJmiZSiKMgC7uSt0BhM41Qx
        MiJzgujnVmbkt5tsyojBfHC3Ng==
X-Google-Smtp-Source: AKy350YVMEmYJ1iSc64j7pNlmeRt95qrBSvjZ04UNzAnkVaLsB3Qc3SiRAFJpoVzqYWteqMHnYearA==
X-Received: by 2002:a05:6402:26d5:b0:4af:7bdc:188e with SMTP id x21-20020a05640226d500b004af7bdc188emr6638252edd.16.1680187714584;
        Thu, 30 Mar 2023 07:48:34 -0700 (PDT)
Received: from sleipner.berto.se (p54ac5f91.dip0.t-ipconnect.de. [84.172.95.145])
        by smtp.googlemail.com with ESMTPSA id vq2-20020a170907a4c200b0093e9fb91837sm7830426ejc.76.2023.03.30.07.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 07:48:34 -0700 (PDT)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-renesas-soc@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/3] media: dt-bindings: media: renesas,isp: Add binding for V4H
Date:   Thu, 30 Mar 2023 16:47:29 +0200
Message-Id: <20230330144731.3017858-2-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230330144731.3017858-1-niklas.soderlund+renesas@ragnatech.se>
References: <20230330144731.3017858-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document support for the ISP module in the Renesas V4H (r8a779g0) SoC.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
* Changes since v1
- Add tags from Rob and Geert.
---
 Documentation/devicetree/bindings/media/renesas,isp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/renesas,isp.yaml b/Documentation/devicetree/bindings/media/renesas,isp.yaml
index 514857d36f6b..33650a1ea034 100644
--- a/Documentation/devicetree/bindings/media/renesas,isp.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,isp.yaml
@@ -21,6 +21,7 @@ properties:
     items:
       - enum:
           - renesas,r8a779a0-isp # V3U
+          - renesas,r8a779g0-isp # V4H
   reg:
     maxItems: 1
 
-- 
2.40.0

