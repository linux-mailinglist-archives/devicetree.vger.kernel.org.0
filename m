Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ADD15F5759
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 17:21:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230078AbiJEPVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 11:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230390AbiJEPVL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 11:21:11 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B1A93FD51
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 08:21:08 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id a3so14177317wrt.0
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 08:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=0ETjPjVaLUGYelarsY27uOlCTsNUqB6Io6lTtEDWJ0g=;
        b=Nn0SypSyWvJeuGsE/vkQjUErJwZ+YubWXkMSb4HOGRn00X52BBMz7l8ojES1nVU4by
         vwIXXYdy9C1hDzgoO1LdyYKaujMWvITExyQBYLm26JzYQj+q/tGUYLjeffpQrqnBR9CM
         VGxPLxvKROs6zfuPGirMIAN9m1aFDVxLwrZfaz0ZxEjgG+pV3S51FCgPK7vZOmnq+2rq
         y3diZnhL8YAdTfJZgoFjlf9m/Dynil9gDdYh74/VWdyoxi5bQRF8/ckRbovigLU0XOq1
         SjllRN9I42reY/2D3hV6sJzfcOBgCspw3CN5mu1n4iIwRNaq21+Wn91XMT+9xtmdeW0s
         TT5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=0ETjPjVaLUGYelarsY27uOlCTsNUqB6Io6lTtEDWJ0g=;
        b=jFiPYRRC9esLHQeQlAbuNmcnGGKR6yfCYnU0HYgFdB8k9PDkS6PS5HcHXFR9a7uo0/
         JvWrVIfcN5zXE5cjAHoEilAoQW0jqQIPadJ5CV094LQISeQBtCA4yQ71Bj0Qezgil2+N
         RvQ1Ay2QYMxjj2G/sexoFCcCnBvH9dkgij3vnl23t+EedPGVso2ZUOzaX9Ek8N6DEm80
         MJ/rKTFCbsk+6bEtlk3mgnCgjRgroYAXHHXhcQAZRpzRIbNQJ9UHA9wUP6oxCth3ScRC
         BTRGHgSehTthfh3QgL5JqWDbNoTairZB8Ohk5pGSFglcOC3CMv+sE1Lrs2F+whLCbGfj
         MUug==
X-Gm-Message-State: ACrzQf2WbjsxJsk9fqXeWNlDy5b89hM8dPxJ4pc8/8Z6KiLfX4ocKmrA
        F9h+xGwV8r+Gi5YXBmEso3hm7s3Y+ZxVyQ==
X-Google-Smtp-Source: AMsMyM4ts8oPlVnDO/To/gr+/vnD0qk0fzHTS+20rrjMFMxhXe3S3fhDipsKVLn7CdHxgmyWX9TLNg==
X-Received: by 2002:a05:6000:1f1d:b0:22a:feb9:18a7 with SMTP id bv29-20020a0560001f1d00b0022afeb918a7mr183647wrb.152.1664983267235;
        Wed, 05 Oct 2022 08:21:07 -0700 (PDT)
Received: from dave-Ubuntu2204.pitowers.org ([93.93.133.154])
        by smtp.googlemail.com with ESMTPSA id p2-20020a05600c1d8200b003b4764442f0sm2306854wms.11.2022.10.05.08.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 08:21:06 -0700 (PDT)
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
To:     paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        linux-media@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 1/2] dt-bindings: media: ovti,ov9282: Add optional regulators
Date:   Wed,  5 Oct 2022 16:20:17 +0100
Message-Id: <20221005152018.3783890-2-dave.stevenson@raspberrypi.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221005152018.3783890-1-dave.stevenson@raspberrypi.com>
References: <20221005152018.3783890-1-dave.stevenson@raspberrypi.com>
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

The OV9282 image sensor takes 3 voltage supplies, so
define the relevant regulators.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../devicetree/bindings/media/i2c/ovti,ov9282.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml
index bf115ab9d926..652b4cfeded7 100644
--- a/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov9282.yaml
@@ -36,6 +36,15 @@ properties:
     description: Reference to the GPIO connected to the XCLR pin, if any.
     maxItems: 1
 
+  avdd-supply:
+    description: Analog voltage supply, 2.8 volts
+
+  dvdd-supply:
+    description: Digital core voltage supply, 1.2 volts
+
+  dovdd-supply:
+    description: Digital I/O voltage supply, 1.8 volts
+
   port:
     additionalProperties: false
     $ref: /schemas/graph.yaml#/$defs/port-base
-- 
2.34.1

