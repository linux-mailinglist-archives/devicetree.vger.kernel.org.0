Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 250AB4E67CC
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 18:27:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352283AbiCXR2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 13:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352291AbiCXR2k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 13:28:40 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 97C6CB1A99
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 10:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1648142827;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OIJlhxZQII2b1Vl5R2eePvHRFchgJiZqPqucMSOZBVI=;
        b=EOkCpfvOJSFqMXLMjm4HvSWTgkkmwIt5rYJa+FHDz0UqVYIC+tprc5vyGm2IuoSGuc/OKX
        5+cTupFKM1shQZ17kO4GN19lm4YO9FaC1VsCnCFjO2WZglsY1uPOvThEyGZBXWxbedW5tK
        X0Zgm3v2R/oy78iRKV6iddr+2gLNL58=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-508-qKv03nECMLKf9l3HL1Yvtg-1; Thu, 24 Mar 2022 13:27:06 -0400
X-MC-Unique: qKv03nECMLKf9l3HL1Yvtg-1
Received: by mail-qv1-f69.google.com with SMTP id w10-20020a05621412ea00b00440d10d2799so4122179qvv.9
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 10:27:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OIJlhxZQII2b1Vl5R2eePvHRFchgJiZqPqucMSOZBVI=;
        b=Nih3iQItd2WkGj0phquuBmhBRzYPoxwY3ZlzmOSRUjPOtrTPdVr8S5R7bx/YVHrHCI
         X+KDuKapwA/w8/uszcvBbzGudKe0wMU6d5G1BdwMW3oRv7qZ3BS+vykAeataiYrIUjKw
         3gBqIZVgjIllzeSaTAKAJPbR0n8fkAy77tmRYplJ29npf12XVHOdKxZytqbsTXPw6JNm
         4+EaWjrM9b3gGHJUDTDju3Qc1Ljd6JuD/R/Q05LxkhvxFo2GqMF9d3RCONG7KKrARQNT
         kmsRPKg5CK2PVkddd141sCMa0HMSAMbOQtj5v2zYXSo5b0Doo5vGdnviQhO5ynkTZKoD
         ccaw==
X-Gm-Message-State: AOAM532ZpjXeweJOkgGGrdKgznIoIPeRXmNyCw736VmrwfEBLDHZGjL6
        JWzCjDWJt6655Ul0Edgpbt8Ji5MuhCnrY5kWfs4vDe5On2ewAhrMj5nr6saMreJcUXcP5VBpRpx
        omilB6Zfhm0w+V4sKTjxlQg==
X-Received: by 2002:a05:620a:a57:b0:67d:396a:8a9d with SMTP id j23-20020a05620a0a5700b0067d396a8a9dmr4150367qka.322.1648142825407;
        Thu, 24 Mar 2022 10:27:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxB5F5wgV7J5cTSYxSXNzkylFEPJGtGrvg0qTVvsWiiJ29lM4a+bp0esEG2VaB8Mu4hX9z7ng==
X-Received: by 2002:a05:620a:a57:b0:67d:396a:8a9d with SMTP id j23-20020a05620a0a5700b0067d396a8a9dmr4150351qka.322.1648142825215;
        Thu, 24 Mar 2022 10:27:05 -0700 (PDT)
Received: from fedora.hitronhub.home (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id bm21-20020a05620a199500b0067d5e6c7bd8sm1886515qkb.56.2022.03.24.10.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Mar 2022 10:27:04 -0700 (PDT)
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
Subject: [PATCH v2 2/2] staging: vchiq_arm: Use bcm2711 compatible string for bcm2711-based RPi
Date:   Thu, 24 Mar 2022 13:26:47 -0400
Message-Id: <20220324172647.167617-3-athierry@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220324172647.167617-1-athierry@redhat.com>
References: <20220324172647.167617-1-athierry@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
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

