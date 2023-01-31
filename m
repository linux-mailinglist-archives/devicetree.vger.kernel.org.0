Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0BEC683611
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 20:07:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbjAaTHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 14:07:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231157AbjAaTHv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 14:07:51 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 926EE5354A
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:07:49 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id y1so15205482wru.2
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXInHa+00VElRlAJvj+O5u05+uCNmEQLOdRklTcVOKg=;
        b=b4Dt5xq+YfR7kXxQPT4pOItM+2PGkifEt208aI0icNBv+LVcUT+pzUZkkrz/jrueTN
         iaedX39XoqCMtD9va0r+YH5hrccE5BOi+HV+z0iOcrOpvwO+Ot2BQbMbmnOFSBLzwqs3
         5Wyt+rOshHbHLpbSGDqV6suF7T2jM/gvEGSKYtaarQFl6fTEur56D2Wzx2hv0x2OD7NX
         L4uXc4jDQRFNUivC6hkE3cetx2TPM0P+EUrY34oUKGdJLVoKCuBb7tqpM3Qg5yhLXQbV
         i5liQWSnw+wicDdav3PS4VWFVJgv4TS3Vp352Avw9SVD/erq9RQaadstZzFG0G0G2awm
         IpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXInHa+00VElRlAJvj+O5u05+uCNmEQLOdRklTcVOKg=;
        b=2tVbwXZfiw8h/yMzO4hA8JJZUuWO42FtOl61n4Lb1xChUZS+Mf32uZLHm/sZoo+OTH
         xErzzoD8YDBvtDYHPZVhyCVgKe8AonMG/6TY+q1pZ95Cdf3DX+DuONx0yrA7I8gn1EEX
         98Szpcq6kQRCZTFg0nY4/DRAZG40RYaYbRk+ZHC3OR/j5esj/OSGsFZjsykNI7ilJDa/
         v/dLdjLP/sklxyOxUI/FGTV9IgcM1cIBD8vu2QkLnQ+CMGsP0V1/lHc0uebdWAn3QE2+
         8/+0H5XcAKEs5nzRCxS+aOwZIJjTA7pJFRegG5hpLESSeWKG0MILhwwwh2vPtT0lriph
         M9dg==
X-Gm-Message-State: AO0yUKVuQ+FdV9q+zESQh8vTCEmqjW4vAU3Z8Cul7AnrluPf8BU4Elwy
        IOM/F29SeGjt7HvhOWff1vsM5g==
X-Google-Smtp-Source: AK7set89MXM5yGebXqEiMCeTC6fnxTsvFJ9t1UjwSyMKtWWicuKw6JiWkmsR8FUW4toRSDbIOEnRkw==
X-Received: by 2002:a5d:55c7:0:b0:2bf:e535:3f9a with SMTP id i7-20020a5d55c7000000b002bfe5353f9amr4060805wrw.39.1675192068176;
        Tue, 31 Jan 2023 11:07:48 -0800 (PST)
Received: from dave-Ubuntu2204.. (194.15.169.217.in-addr.arpa. [217.169.15.194])
        by smtp.googlemail.com with ESMTPSA id c17-20020adffb11000000b002bc8130cca7sm15574989wrr.23.2023.01.31.11.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Jan 2023 11:07:47 -0800 (PST)
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 1/2] media: dt-bindings: media: i2c: Add mono version to IMX290 bindings
Date:   Tue, 31 Jan 2023 19:06:59 +0000
Message-Id: <20230131190700.3476796-2-dave.stevenson@raspberrypi.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230131190700.3476796-1-dave.stevenson@raspberrypi.com>
References: <20230131190700.3476796-1-dave.stevenson@raspberrypi.com>
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

The IMX290 module is available as either monochrome or colour and
the variant is not detectable at runtime.

Add a new compatible string for the monochrome version.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../devicetree/bindings/media/i2c/sony,imx290.yaml        | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml
index 21377daae026..29ca4052591f 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx290.yaml
@@ -12,15 +12,17 @@ maintainers:
 
 description: |-
   The Sony IMX290 is a 1/2.8-Inch CMOS Solid-state image sensor with Square
-  Pixel for Color Cameras. It is programmable through I2C and 4-wire
-  interfaces. The sensor output is available via CMOS logic parallel SDR
-  output, Low voltage LVDS DDR output and CSI-2 serial data output. The CSI-2
+  Pixel, available in either mono or colour variants.
+  It is programmable through I2C and 4-wire interfaces.
+  The sensor output is available via CMOS logic parallel SDR output, Low
+  voltage LVDS DDR output and CSI-2 serial data output. The CSI-2
   bus is the default. No bindings have been defined for the other busses.
 
 properties:
   compatible:
     enum:
       - sony,imx290
+      - sony,imx290-mono
 
   reg:
     maxItems: 1
-- 
2.34.1

