Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C41C53C781
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243006AbiFCJ0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243019AbiFCJ0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:26:18 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3AE3A1B0
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:26:17 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id q21so14819644ejm.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r779VgB4wPd+dO4BnumFEEMoK5PeDls8DqXi+jzyZUk=;
        b=f+R+5qwCa/e3GQGG5kIjgqbEG8D0AdLZlPvlFWMh0nANKNQzW25nh67lFvGWHCmAme
         wOZoM1OGTH0JeDjUwMxkml0tO4CqWLYLZQ1j1e1/7UxPc+laMO9d2p8ZlhqXiAl8w5zz
         mOydMzVojO09VGYCR76P1s6s98gZneDmcc284F7lteaHR0iVxd9C48JjrqtvhutP+tEf
         VhR8yS0bB/ViUYgebS/icgc3Eqq79B+9kKvJAvRRdtBV6hyGOgfJn7mJEtBCcKKvJLkK
         Q8iICT4ObJzmFPSSfmdc75WMslEfDLvDI0zORjM9sprETND4l+SiBcZHEnH1vLKH/XT4
         bTdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r779VgB4wPd+dO4BnumFEEMoK5PeDls8DqXi+jzyZUk=;
        b=1gtkhqGKV6VQ6cTnpvljIkp3slyakspOxpLkxTnQKen2GwISgDwN2Zo86aKJxAMNww
         g3IzVOyDRv4DU8V3JvFSqRMDZ3od5wdf2jHKbSEnSneFyKgXgoozrR2yihGGbPWkxlu8
         eYTkdKuff3Yx0bQmpk5mAcryts2fkIoVMAi+qtD2HDs6Yh6Q7IjbxTQHhBreBigrsDOk
         W1+Fe/r9L0FEhhNgwgfi4rXAoOQY3KoPSUmooTmbu2tJxgpYNcpy8bdjheAlsHk+392h
         NWZR6NAQrVIXHHMb30HDs8KhixfFlmldCt0/ffNieKKvP4hHTvFWBD2LdQYSrivmpE41
         TdBw==
X-Gm-Message-State: AOAM532+tfbI35sSdpPTsO1sz1kSc85bgbcNHvWtNIiStD32ja4UlC5Q
        gcEFQMQfs7+P2AqB3B+EyTQ=
X-Google-Smtp-Source: ABdhPJymvabgWIehxXXv6/WYRjeKoxF/7tX8NhrdZc6D5mjdvNWIrrXXtNRW0Oi0fIl8Utj3MhmLSA==
X-Received: by 2002:a17:907:3e15:b0:6fe:f10e:6337 with SMTP id hp21-20020a1709073e1500b006fef10e6337mr7918695ejc.209.1654248375876;
        Fri, 03 Jun 2022 02:26:15 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id b5-20020a17090691c500b006feaa22e367sm2617672ejx.165.2022.06.03.02.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:26:15 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v6 1/6] dt-bindings: gpu: v3d: Add BCM2711's compatible
Date:   Fri,  3 Jun 2022 10:26:05 +0100
Message-Id: <20220603092610.1909675-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220603092610.1909675-1-pbrobinson@gmail.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
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

BCM2711, Raspberry Pi 4's SoC, contains a V3D core. So add its specific
compatible to the bindings.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes since v4:
- Change compatible to align downstream and other HW, reorder to suit

 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index e6485f7b046f..217c42874f41 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -16,6 +16,7 @@ properties:
 
   compatible:
     enum:
+      - brcm,2711-v3d
       - brcm,7268-v3d
       - brcm,7278-v3d
 
-- 
2.36.1

