Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7E416D08A7
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 16:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232033AbjC3Osm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 10:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230458AbjC3Osk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 10:48:40 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A048AA24B
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 07:48:37 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id ew6so77463137edb.7
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 07:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112; t=1680187716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XTwt/iYF+gRjxXhr7W24zdpa+JtyBQWYCAz6T1MyFjA=;
        b=3UgYLvLFkoRrp+xJVusytzTAXh7ICXqpC4+M2W1D/fqHYgcQub0/ZKUVOVRJws9Zoq
         B7Pb26Uv9GCgUzi+oLxv6YTf7gfwdT4gIS2Am8IbnOZMKG9Mt3fhWNN0clv6Eb3QpLvP
         TJJgozbJbHYlAT1t3JBKTWw0Nb2zT9el1u6P+1fj8ekIzHChz86jx80eg+vOx+VqEeCv
         LNbJ6dOEI+esqIwWPCKAPU5W+f3NfkMWzcDduSUdQLJ4rxBsqBbBDKIWBE43aDqfqphn
         J+D2TMYsaKWXZYk88kKuET21ogKX5OsYhl+UKMhfRhH8o5DacXBq9NSFmLNeoM1z4PaM
         s0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680187716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XTwt/iYF+gRjxXhr7W24zdpa+JtyBQWYCAz6T1MyFjA=;
        b=Ii32Q6qajt2n9SgAQzfhIa/WaL4YITv6qq5S75IXqM6epCVH/WFDvMy2+BVq7m0HXo
         ufeBYWf9CxZMYCe0tHXxIr3SzS75JeJQ0683cfHFmw4ZpFXpL0CeLvLRUrXCmId/whhv
         UWkA02s4EUlDkseNBDZPTdZEeWuArIYOarsxr0BxxCGVVKLufP2Gf0Wi0n6fDagoKhdi
         NvPBx+oWf0hSHjkkQRXNuSvpkIJ2dXddrjsCPAvyOPjJAFVVuStMqqSqm5XVNVFlU/bK
         xVaOzKGoHzjL/Aa2zA9IIuX7y9ZlEgHA/V3xtd+S+N90y+BS8k6BnapIwH76uPHYsOVJ
         Kn2A==
X-Gm-Message-State: AAQBX9fV33LTeA6Lj6vhFoNkDCfpQbO1CqjeEC+PvcsQbSeK7u8RAfc5
        4MbxMoBdvaZGN2oYzUC1GGoc0w==
X-Google-Smtp-Source: AKy350bEr8frXtO3n7RaldBqgpDK3Oo0yBq3bpC/EnQ6WJQiULLckx6bBU9H/M1h824gD1vcg6gYUQ==
X-Received: by 2002:aa7:d313:0:b0:4f9:e6f1:5c7c with SMTP id p19-20020aa7d313000000b004f9e6f15c7cmr24113541edq.32.1680187716049;
        Thu, 30 Mar 2023 07:48:36 -0700 (PDT)
Received: from sleipner.berto.se (p54ac5f91.dip0.t-ipconnect.de. [84.172.95.145])
        by smtp.googlemail.com with ESMTPSA id vq2-20020a170907a4c200b0093e9fb91837sm7830426ejc.76.2023.03.30.07.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 07:48:35 -0700 (PDT)
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
Subject: [PATCH v2 3/3] media: dt-bindings: media: renesas,vin: Add binding for V4H
Date:   Thu, 30 Mar 2023 16:47:31 +0200
Message-Id: <20230330144731.3017858-4-niklas.soderlund+renesas@ragnatech.se>
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

Document support for the VIN module in the Renesas V4H (r8a779g0) SoC.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
* Changes since v1
- Fix typo, s/V4U/V4H/.
- Add tags from Rob and Geert.
---
 Documentation/devicetree/bindings/media/renesas,vin.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/renesas,vin.yaml b/Documentation/devicetree/bindings/media/renesas,vin.yaml
index c0442e79cbb4..7073d1936c34 100644
--- a/Documentation/devicetree/bindings/media/renesas,vin.yaml
+++ b/Documentation/devicetree/bindings/media/renesas,vin.yaml
@@ -53,6 +53,7 @@ properties:
               - renesas,vin-r8a77990 # R-Car E3
               - renesas,vin-r8a77995 # R-Car D3
               - renesas,vin-r8a779a0 # R-Car V3U
+              - renesas,vin-r8a779g0 # R-Car V4H
 
   reg:
     maxItems: 1
-- 
2.40.0

