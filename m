Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE25B475579
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 10:51:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236419AbhLOJvZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 04:51:25 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:55155 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241308AbhLOJvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 04:51:24 -0500
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.nyi.internal (Postfix) with ESMTP id DF7555800A0;
        Wed, 15 Dec 2021 04:51:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 15 Dec 2021 04:51:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=ou27pVwzd7MS6
        Se+Px0HBJeVzAhbZZsK9+FkURLYL6U=; b=NVlnRkm3pEGyt5bO7vWWKfphtS37T
        nuMxdqcp0qVacTli3qRSEX4fzBued8zzi60GuEGp04iJhH1i+2djXo/FiqSEaw9l
        xJSAIJ5guK/hRfWZT1+HIhGFytbYR+jWdqh3M7YUXvWjezYi/hkHGj5hr+RieaBb
        08z5sbl12NNTIzvik+O64gQIGgUb5z+/ZIyXvlXz48fwQ4aMhE4KlbIA6CHJ2AiQ
        Lrbx9uUlaaScy2mAjRGnc24T43EDKyakHct6dtPtcDM/OKyBwmUwzD8CSyvThgYt
        AZl1WFfPO152oIYRCHzjmg654euliyqGpkRvCap12A1KEbF6a9klDobOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=ou27pVwzd7MS6Se+Px0HBJeVzAhbZZsK9+FkURLYL6U=; b=ilE5x5hI
        7qot68lxNBZ9z2REUyVhaTjMlfpOr7znQ1K4bpWiBn5QsN8OLho0c2duKycHqw9Q
        9U9PEAwuvCp9LX/AnfCE3LogPVT/Bhjha+dMInhU+iNiAKAzRA2Rz0grfu7e1GYc
        PaWxqUe+nyjizgrl4yKdT4xa/FXxMg+9PHIu1Xaao2o+PI8pMuLUtFQmrYAywCK8
        Y2dfm+pHI7gmPtTAT1Cbjxo/66mYzso/VhgLP0oNTmmBjIvKu2WnU0rTwUGAoTnx
        EBrSWbY5IWbeHfBmpz45m/666cC4WTSBj1J7rUaBkcI7AwPbSYD/I7nFyGE7fyEY
        bqwimYgZxTfyEw==
X-ME-Sender: <xms:mrq5YfP6V5pr3RI5ELSL588kpJKfXgniGELlaGKNXQVfRlJxSbN9mg>
    <xme:mrq5YZ9H5hznwLTkdSQenBrADzOvrP8YgBf9tcd0PPLNxR5TuLmPF7IzVz8cz46Op
    W-HWuN-2KfyAJS7reU>
X-ME-Received: <xmr:mrq5YeSwWRK9fxJxAqV03ZDjCCRsXIs0UMt8HIxZO920WxFrPyfzWUwBhBUT2uiKp3C_FmRBPJW4rySkoLKvdUU0nF81xZMRw0k9ZAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrledvgddtlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:mrq5YTuVMHTHiskqNFkkqYw1IvQyyKW_IOkavGs5KwzZEs-ZBalPgg>
    <xmx:mrq5YXdQahfm7tPc4uEhfy7-PaouWv-fedZAXv39LQa4cavjqHtALw>
    <xmx:mrq5Yf3IKV0ScbiDUo81k69x9pNSfURIBtYv5PiYat3eu0DHgbVb1A>
    <xmx:mrq5YaVLUsPkERt9m_vHAILmekEzecLHPM68hAMMFoO9zxV90KuYGw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Dec 2021 04:51:22 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v4 v5 1/4] firmware: raspberrypi: Add RPI_FIRMWARE_NOTIFY_DISPLAY_DONE
Date:   Wed, 15 Dec 2021 10:51:14 +0100
Message-Id: <20211215095117.176435-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211215095117.176435-1-maxime@cerno.tech>
References: <20211215095117.176435-1-maxime@cerno.tech>
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

