Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81BFB4E67CA
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 18:27:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352273AbiCXR2j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 13:28:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352277AbiCXR2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 13:28:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5563FB188E
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 10:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1648142825;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FuZsMHesHkwyF+f4SfnxOtgM2hC6A+pYUGF0YW0O7oY=;
        b=jWtC6eFuDXDWhte8hZmgckIQaTMfq23M+ojDqY1PtY6YvmTfFaJTP8HdZaHOYGmHxkYeEN
        Md1HE7TuE2wWsM15HauuuaCAyKBMrd45/MEMBKZ5yuVEaQNj396fsyn4jiYHjp7VzG55kI
        WJaLOO+um4NbvLlxIInK5WCiDt37C54=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-296-rofAC0rSPJSDNnSmt-lEyg-1; Thu, 24 Mar 2022 13:27:04 -0400
X-MC-Unique: rofAC0rSPJSDNnSmt-lEyg-1
Received: by mail-qv1-f69.google.com with SMTP id 33-20020a0c8024000000b0043d17ffb0bdso4098064qva.18
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 10:27:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FuZsMHesHkwyF+f4SfnxOtgM2hC6A+pYUGF0YW0O7oY=;
        b=K2aoSA+HRmVnaS0neQ3P+VkPzq2PqH6pJlyfuL+g6ze4QxdpizZLHIajACwUW9YVVr
         kLv1NUdC6tJiLwzfKgI+Jy/KMOluHCkAVNjkqZMx7puK9cV/MWkdzkB2I0JmAMd+k0dA
         of3pkhDK0sGvXjlWfLi7C92e3ykUK5LTrvML1ellBjecOYerPymfq7tly+GKB05oMjTe
         WMjp7aKTR3sBZNpXCPaFH3oXpPK7Kyu7wf+iK4M+uFAdqpUzYWG9oPHekx12qNExCB/y
         7hxWaCFvtoHhsNKPLumx0HL9pdIpsl2b+oP3yRXBclW2nreapGDtFJ4GkdgCv+Yohy8W
         0+/A==
X-Gm-Message-State: AOAM5325cj5qF1yk3ysxd1IbP/zAB8t8syqO7/+qKEylRZTCO3UJdfrW
        W4KZiwd5kRDJuejRrVonGA78ZpCKZ6Th8cbZwZuKF7Or8vYEza3kQyvIOhiR/wTIQUwtZzHWxtk
        xbKyTymiZnWojgDMgh6Rmtw==
X-Received: by 2002:a05:622a:1cb:b0:2e2:27da:74c4 with SMTP id t11-20020a05622a01cb00b002e227da74c4mr5570098qtw.462.1648142823616;
        Thu, 24 Mar 2022 10:27:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxB3fqgMHNs7WS6KwTaNhgQHa0SyJ45xcvpPfz8cy6zRHaIw7naxDTmXdL5flaBJsQuUOU2Zg==
X-Received: by 2002:a05:622a:1cb:b0:2e2:27da:74c4 with SMTP id t11-20020a05622a01cb00b002e227da74c4mr5570066qtw.462.1648142823425;
        Thu, 24 Mar 2022 10:27:03 -0700 (PDT)
Received: from fedora.hitronhub.home (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id bm21-20020a05620a199500b0067d5e6c7bd8sm1886515qkb.56.2022.03.24.10.27.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 10:27:03 -0700 (PDT)
From:   Adrien Thierry <athierry@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Adrien Thierry <athierry@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Gaston Gonzalez <gascoar@gmail.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        linux-staging@lists.linux.dev
Subject: [PATCH v2 1/2] dt-bindings: soc: bcm: bcm2835-vchiq: Add support for bcm2711
Date:   Thu, 24 Mar 2022 13:26:46 -0400
Message-Id: <20220324172647.167617-2-athierry@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220324172647.167617-1-athierry@redhat.com>
References: <20220324172647.167617-1-athierry@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new compatible string for BCM2711. This is the chip used on the
Raspberry Pi 4.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
Changes since v1:
- Removed duplicate compatible string for bcm2711

 .../devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
index e04439b3355b..9cb957facae0 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
@@ -27,6 +27,11 @@ properties:
               - brcm,bcm2836-vchiq
           - const: brcm,bcm2835-vchiq
 
+      - description: BCM2711 based boards
+        items:
+          - enum:
+              - brcm,bcm2711-vchiq
+
   reg:
     description: Physical base address and length of the doorbell register pair
     minItems: 1
-- 
2.35.1

