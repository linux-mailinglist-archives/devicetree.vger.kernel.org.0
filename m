Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA4224731AF
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 17:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238964AbhLMQ0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 11:26:40 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:42419 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240696AbhLMQ0k (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 11:26:40 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 77FBD5801BE;
        Mon, 13 Dec 2021 11:26:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 13 Dec 2021 11:26:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=ou27pVwzd7MS6
        Se+Px0HBJeVzAhbZZsK9+FkURLYL6U=; b=EDxEzaEHmwx9UwdUgpHC9DNsv+Owa
        YA+KYjeJTDUUrJPZvomH42uFasBSax5L7Uk1dTtK2itAdQhg4b2JHUO7mflN1T0G
        xdv83SGDbi7EGCdh4/gTUL8AHG1LdLF4ZWlkamefRPwVE5+Q1bUhMtdmDTELlAkC
        ha2c0vDSeaCPVcQy/gkoABV/fLiLqCZXWiw9xpntotM3WVjSyukFlCbrvMOJvhF2
        jeEEIxcWItNT0TZ1mk87Uidtd4cvwJfqG8J3HUVem1Z/JUJhg764uv8Opn4zfz0I
        Lupn+/rsp3qas/j7VLaXC6HCe64YMkWZE9hnyp/KHZ+ZazQ+NljSF8n9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=ou27pVwzd7MS6Se+Px0HBJeVzAhbZZsK9+FkURLYL6U=; b=lxCoNTZ6
        7tW5+DcRVb2RHgCN6Vo61BiATf2yhTzsPaO/uMx4xzSlJ1mTpdLjnUdUEwdERi1c
        nqT2Eic+5+0OnOWo3J6+F9zBKizAqCfdqPjTlN+8LcHup72lvKK4VGDoRG17OPHb
        pIqlFVAtWVtMqj3LcGcUYkUxlANJbsDrHpkRODkuFCPmvBIaNbxLSJLTCtaZfezj
        n3EiG2tY2dl+0OogYtKyJhZEJvivJw7LXtUoeAnJRI0HBmn1paQGunYSVHAlZ9gP
        kjp4suOn4Akuw+9xOzm7phR1uZ4SPyMtXKZ6jIxI3VGYYwhoZuFfLhKhd//Xt4Oq
        Yld+wSHFSifOPg==
X-ME-Sender: <xms:P3S3YQlSlleiV8BojvcTtnT2yE5xJFdFytbJD3Ki5EyifP8ij_Zo_Q>
    <xme:P3S3Yf0f9w6wj1Bp7_kY1otIGulq3U8g3DVtNacR7GRXQuCMtFlL8n6Szha4fExix
    Iu-qvWpil-5qSeZ7ow>
X-ME-Received: <xmr:P3S3YepEkkB0TWeIYfkWd_XKOnnDcZ9EuJq6nNSp2dPxnIItebww6rAGCXfLt-sF9-o-0_iPCrT3mwpm3kpfTqZNy7bKWdnCrXrQ3GPf>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrkeekgdeklecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:P3S3Ycn_zKC0ZsJlLvNL1761XzdpuKv8ouewk10tMSZ_VSm6rpikrw>
    <xmx:P3S3Ye1Cp_yLt9c3aYjrrnolvbpqobRvB8-qVSw5PJjbXrcgy9iVTg>
    <xmx:P3S3YTsJu5JGYIy9lJEJ0L2u0mTK8cqjuM1ttmE5nxb0YeET1my8ew>
    <xmx:P3S3YVsQhPWEbomcPM5MSiVzgPC2L2splA-C4y642BUjc-lK_9FRSg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Dec 2021 11:26:38 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Ray Jui <rjui@broadcom.com>
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH RESEND v4 v4 1/4] firmware: raspberrypi: Add RPI_FIRMWARE_NOTIFY_DISPLAY_DONE
Date:   Mon, 13 Dec 2021 17:26:32 +0100
Message-Id: <20211213162635.252582-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211213162635.252582-1-maxime@cerno.tech>
References: <20211213162635.252582-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RPI_FIRMWARE_NOTIFY_DISPLAY_DONE firmware call allows to tell the
firmware the kernel is in charge of the display now and the firmware can
free whatever resources it was using.

Acked-by: Nicolas Saenz Julienne <nsaenz@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 include/soc/bcm2835/raspberrypi-firmware.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
index 73ad784fca96..811ea668c4a1 100644
--- a/include/soc/bcm2835/raspberrypi-firmware.h
+++ b/include/soc/bcm2835/raspberrypi-firmware.h
@@ -91,6 +91,7 @@ enum rpi_firmware_property_tag {
 	RPI_FIRMWARE_GET_POE_HAT_VAL =                        0x00030049,
 	RPI_FIRMWARE_SET_POE_HAT_VAL =                        0x00030050,
 	RPI_FIRMWARE_NOTIFY_XHCI_RESET =                      0x00030058,
+	RPI_FIRMWARE_NOTIFY_DISPLAY_DONE =                    0x00030066,
 
 	/* Dispmanx TAGS */
 	RPI_FIRMWARE_FRAMEBUFFER_ALLOCATE =                   0x00040001,
-- 
2.33.1

