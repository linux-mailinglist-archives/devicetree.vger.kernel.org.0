Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01397454937
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:51:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234747AbhKQOyB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:54:01 -0500
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:35763 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233936AbhKQOxx (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 09:53:53 -0500
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailnew.nyi.internal (Postfix) with ESMTP id 781735808AD;
        Wed, 17 Nov 2021 09:50:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 17 Nov 2021 09:50:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=mLLzlElNt+foG
        XGUbWNPyrcc8VA72A241ZqZ42H44io=; b=YYiHpYbuZNVNZrEMylD4fazPL8e10
        5gucWGiPRXU8c0sHxgBNt++bwJf0PbRz2Dwv675dOzFz4zQCeXxWTR21igJMU1ov
        CLL+dJdOb//UD3Mkx801be/eEI4sNRd7PBXQWuvM+RuF6jI0RpAFOo4OAl6EvSxN
        tsErbtg0XviT6PYmjwzrlRiwGonoRn3d0LOmeffXowvlDRdPl19S3gK/Im1TqQwj
        YfyBgF3yjIwIeQ8oxb705pW7I8L3YrrjijVIvjRGnH8m0kCjqm1neYYpOVVP+wcT
        X41PdaaqSNiKjpS2UXsYsfgt5urqpFgLit9aekX75lLCB7iin1DFTa62w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=mLLzlElNt+foGXGUbWNPyrcc8VA72A241ZqZ42H44io=; b=NxMbvxvY
        t8aZw4YxbS5EkRTxORmcBGt8E30AhU2yL/HU/o3/jCs9r3VlkZ0zamBht/OZFcQt
        VNZ32RRmaCx8G1De1hcZPtcb1JyLIimghelz42WN1JMbyvf7M0hXdYYDcbp6J0Fr
        PlWjleifnMIJMj7/5jy747ZBZvW8qdnaZl3lhNR8D/xv/RygWB9ywTgu5BJX2rlc
        ODkVCJGtcIvFpR1vYIdWPTH2lnppeqwy7BlpP6e10mWoegYZPgGw41+feTkZeuyu
        jNEPahcLLLW9HGV8Ale0of8vHCh1sS1Km7Gibr1zZf5sd0d4tzK0i/g2r92df2U0
        C9dWy7MpgT6M+Q==
X-ME-Sender: <xms:zhaVYYeZv0o5i2O4BJfU_PoUYErdgX3rWWRxBBz6qkdJEWBzUKk5Ig>
    <xme:zhaVYaPE7dk2FjomC8KAPYaxjhniXszAhM_HkFfVIRlfx8HRfLNrV7lKF-p9O9YqZ
    N_ypGGgq5EQncfk1iA>
X-ME-Received: <xmr:zhaVYZiDiwC6RgLHD06QTc1k6-tknHwoyAft-y_9g-uoMkmOqi_Qqb-bxfaMka2OlJJlVBBJdvzXH3Ry7jQZ9KxvDbACHwWjOF5fAqhSYOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfeeggdeifecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:zhaVYd8Dpfh22jL5Sf-sG-iD8RTVkoEJ3ZLAEBDZt3d0jOg2zctIuQ>
    <xmx:zhaVYUvElE8u0h96OeCQ2LjKHAxuk9e8yQ5xGDN2iZZ-yWeMCn0q4A>
    <xmx:zhaVYUGSvQpN4r1ynYopdWQhUCW5BRSOLWVNGjkbmTMCuTaVtldwYg>
    <xmx:zhaVYfkiC5WWNlzdN1o0ausuGVGpvj7Z1umadGWY9BXnPeBbAXetsg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Nov 2021 09:50:53 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 5/5] ARM: dts: rpi: Add the firmware node to vc4
Date:   Wed, 17 Nov 2021 15:50:40 +0100
Message-Id: <20211117145040.334827-6-maxime@cerno.tech>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211117145040.334827-1-maxime@cerno.tech>
References: <20211117145040.334827-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the firmware phandle to the vc4 node so that we can send it the
message that we're done with the firmware display.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2835-rpi.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index 87ddcad76083..bc5dc51ba579 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -67,6 +67,10 @@ &usb {
 	power-domains = <&power RPI_POWER_DOMAIN_USB>;
 };
 
+&vc4 {
+	raspberrypi,firmware = <&firmware>;
+};
+
 &vec {
 	power-domains = <&power RPI_POWER_DOMAIN_VEC>;
 	status = "okay";
-- 
2.33.1

