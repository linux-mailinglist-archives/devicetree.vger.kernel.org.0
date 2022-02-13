Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78F474B3E3F
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238709AbiBMW6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:18 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238693AbiBMW6R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:17 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4448354BE1
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:11 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id fy20so33743679ejc.0
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uOtzuc3KzFq47CE3a/IsqBsnHGlymFWoyRNcsMqoiCg=;
        b=YiDIKqi/fQuw5dMJ0QefKoK9ZeFs49A3dPOXLRakNIOD0uSpKsCvYQsyyfIEHqDGS3
         7yr+D+3YX/VNOWNvrky91rd4Oh5peT+ucBd+P8XoxhFFKaoFGIxUYTbfZnKifZ/Niy7U
         4jDfQuzXojLAZTk8u4OSDZp6g/Og0ZnO9oBi4rD1ZbCUX+EevGoX2Lgog8G9eH9b1oxu
         tq0RGyugvJz1wv2ytAlABKs7QkbnNHgwKPhNqTnQ0GALuvL7vzUzliUR1f7t4T6LKG1m
         Ctv/YObAqWWWWCe7AJbWTCI/eo4Oq9mSgXfm7QrLPTEKpVKu+BDYngMU4DxBTGJ9346L
         Dq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uOtzuc3KzFq47CE3a/IsqBsnHGlymFWoyRNcsMqoiCg=;
        b=r9zgvQsjs2Igux1n5KHmUrCaH3Wb1W7MVGJACaZR3yj1lr3Owxd9Nm2qZ0E68V8vCt
         m4EhoKP7Co9Ef6Prfy6sRyea1/cSdpb0wW6kT57lRuz/iYqFwxkafPQN07Rg8Ctjsg0h
         wilFufX3Ca+H5xjGGi2EqWT5ofgyyyCn02DUbQ2+GHTmOOexYRCRe0EpqLUdS/0DDymy
         g8agurQfnvnKsPLim/D6YmPR0pBISsTOm54x/0Lr8BQMyfo7z7lqVXC/na0tivT1r3jV
         kZR/vYazBi7x2kjlsFg3IT5IZHG3NR7alKAGdCmqkimGB8KsznQ+zLDFyNXmins9aNDu
         IgDg==
X-Gm-Message-State: AOAM530EDTP6/HU6LhFAuQprijeAkFeFm+YDZQo9CFzH126vYa1E5kjv
        f5zMtt8vXrqIe9yRV69YoIE=
X-Google-Smtp-Source: ABdhPJw/v69niJY3V35RD22I+6ray2UOpcJkO51J6fugJ40hgNvNZ1/dH8/fS+BWnWvMU+bguMAnHg==
X-Received: by 2002:a17:906:3d72:: with SMTP id r18mr9192051ejf.111.1644793089885;
        Sun, 13 Feb 2022 14:58:09 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:09 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 10/15] dt-bindings: gpu: v3d: Add BCM2711's compatible
Date:   Sun, 13 Feb 2022 22:56:42 +0000
Message-Id: <20220213225646.67761-11-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

BCM2711, Raspberry Pi 4's SoC, contains a V3D core. So add its specific
compatible to the bindings.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index e6485f7b046f..a08532909513 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - brcm,7268-v3d
       - brcm,7278-v3d
+      - brcm,bcm2711-v3d
 
   reg:
     items:
-- 
2.35.1

