Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 966184DA3C1
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 21:09:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351583AbiCOUK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 16:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230343AbiCOUK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 16:10:58 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 89C1150B2D
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1647374985;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OIJlhxZQII2b1Vl5R2eePvHRFchgJiZqPqucMSOZBVI=;
        b=g6uMrCuBpihL2Bn97y/F7IiFCQt1wFA4pGJrfpykfmp6ObhhkvavUXc+iLyf0DMk5dG7Xh
        WggsWjcYelV04ibeB+KW9Jfbe15d0v1cJrvy4iGEjmYUl2CWP9+NfXMp9JF5Eg9igAM67J
        nM2Zsua//OYkWV2vp/H2GqEDnAL21bA=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-433-MWzTqmRAPSmfEqA0dlCoGQ-1; Tue, 15 Mar 2022 16:09:44 -0400
X-MC-Unique: MWzTqmRAPSmfEqA0dlCoGQ-1
Received: by mail-qt1-f198.google.com with SMTP id q24-20020ac87358000000b002e063c3d15aso134079qtp.2
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:09:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OIJlhxZQII2b1Vl5R2eePvHRFchgJiZqPqucMSOZBVI=;
        b=dKgS0k/QTkaHtQ43mBZNkCwm+7ug4I9IXIsbshz8dDlviGr9smFM3gYy0B0fPEIeLd
         w0TephKl94hMCThLQjKuvNBxYr5JTLtkxHudcTjbwaKzmwBdrWNcoW3pQmU73suh7Dh0
         zrf8Uk+hxbRTK0RCw56TWSwf9YWoSC0/dDz+KRnsIfNSgyyoASv22diFUsJq21B0YKGx
         Ref14giCdYP0ph5MOer3340RmvPkzqZXSLuzBgrC5oD6URb/Hs1QCIjhSdIhd1F7sogz
         EZ7AXSXhlZx7jANahwB+F8Las+rAmeoQAOMvXiun5GTWJW9yjHfmBSApWH4Qjceb7IaA
         XYWg==
X-Gm-Message-State: AOAM5315ExuLeBfUli53hX/QcsX8DkZjnOnkxkagoj8cm4vx4PTwVlNP
        crhS/gAbvQhptmvZz3CyA0SqpLYVT6gEKQXI/MUztg0LIGMDpvPw3tcy171fk/pO4hiwNQIPHt3
        CjcKyz/ti6n7Xd1aT12z9nQ==
X-Received: by 2002:a05:6214:27c6:b0:438:ff55:f2ad with SMTP id ge6-20020a05621427c600b00438ff55f2admr19812281qvb.14.1647374984299;
        Tue, 15 Mar 2022 13:09:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzBAm8qJM4uO8E8XkhhgJ83X1MYV1taiReK2amKwIwz+dojqDUprSq/T2eq8pIQxnEiC+JolA==
X-Received: by 2002:a05:6214:27c6:b0:438:ff55:f2ad with SMTP id ge6-20020a05621427c600b00438ff55f2admr19812260qvb.14.1647374984094;
        Tue, 15 Mar 2022 13:09:44 -0700 (PDT)
Received: from fedora.hitronhub.home (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id 197-20020a3703ce000000b0067af869ffa6sm9582433qkd.127.2022.03.15.13.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 13:09:43 -0700 (PDT)
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
Subject: [PATCH 2/2] staging: vchiq_arm: Use bcm2711 compatible string for bcm2711-based RPi
Date:   Tue, 15 Mar 2022 16:09:29 -0400
Message-Id: <20220315200929.74952-3-athierry@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315200929.74952-1-athierry@redhat.com>
References: <20220315200929.74952-1-athierry@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use bcm2711 compatible string in vchiq driver and device tree for
bcm2711-based Raspberry Pi (Raspberry Pi 4). This is consistent with
what the downstream device tree uses, and allows running the vchiq
driver on the upstream kernel with the downstream device tree.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 arch/arm/boot/dts/bcm2711-rpi.dtsi                           | 1 +
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c    | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
index ca266c5d9f9b..c868d1dcaba7 100644
--- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
@@ -70,5 +70,6 @@ blconfig: nvram@0 {
 };
 
 &vchiq {
+	compatible = "brcm,bcm2711-vchiq";
 	interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 };
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 3a2e4582db8e..136c664132f4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -81,6 +81,10 @@ static struct vchiq_drvdata bcm2836_drvdata = {
 	.cache_line_size = 64,
 };
 
+static struct vchiq_drvdata bcm2711_drvdata = {
+	.cache_line_size = 64,
+};
+
 struct vchiq_arm_state {
 	/* Keepalive-related data */
 	struct task_struct *ka_thread;
@@ -1748,6 +1752,7 @@ void vchiq_platform_conn_state_changed(struct vchiq_state *state,
 static const struct of_device_id vchiq_of_match[] = {
 	{ .compatible = "brcm,bcm2835-vchiq", .data = &bcm2835_drvdata },
 	{ .compatible = "brcm,bcm2836-vchiq", .data = &bcm2836_drvdata },
+	{ .compatible = "brcm,bcm2711-vchiq", .data = &bcm2711_drvdata },
 	{},
 };
 MODULE_DEVICE_TABLE(of, vchiq_of_match);
-- 
2.35.1

