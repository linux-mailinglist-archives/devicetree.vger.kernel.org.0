Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04D2C2F6034
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728757AbhANLgw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:36:52 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:57499 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727378AbhANLgv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:36:51 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 25A4E1615;
        Thu, 14 Jan 2021 06:35:45 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:35:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=voezPL6wATXNI
        hqV+PCs+CHr6Cr+ulGe8wo5s1aywyE=; b=bOn10P1AqSe0GP08wHZUjKn8RXyye
        KOtvV2Imf5FZ3jENAhXnyHOfX2FX+TIBa6p5uDFaJJdmfZSP6pgDGitk1rlahkFD
        cxKnJ6OMhomggw08Ww+VMEQTJMhHYIUIxNe+wmtDVlf0RgVhR4riyiQ9tCclrPdx
        SA5yDKlC/d8Pimg/P4Z/dVk1h3kNsSAJn9D4C0oHSC4a9rrEejcVzzBZN5McERgk
        ljg+kw9wOoOgFO0Aoi925seDeM5d2VpVx5jXdr6Hxd70MUayV6a6votLp3x0CpOU
        YgR5A2HXvts+4UOLZZ0rKVUsNM1CUq3RrNdRASN3gc/zD36pubhlTwnQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=voezPL6wATXNIhqV+PCs+CHr6Cr+ulGe8wo5s1aywyE=; b=MYtBIijQ
        WtQQ2QQ6B+k4ahJ0rHlJTeRpD4k8Qi3PlKm3TEd9MwTlpbciFlrhkNFSz7yl69mL
        xThfE7OX7euooMxumIBptDdmVB1u0uOf/9aSonQ9A5mtWWrdIdc/yWjVwNbuxUJn
        12T0CwCfkZHk4OWIoK82fWEfcmAyZgI/qsRQe4URj5+q1G5vnA0GSVG5nR58OaA1
        K+GPHRTAZaauikJQes1Nk41XAhp9CHr6WKgBx46FDUNzdB3H7a1qBcRGPmfaGgJ9
        5XYqqrr4Hwibw6o6JKaBiqeLlmNqBLfXI0ExKByOyaE8Dl6HJ3UrbliXZnH27Cvi
        zUAeRqo+3kXQkw==
X-ME-Sender: <xms:kCwAYJfjHMBUPWIB0GQJZeDpRk4QjToYUkZCU9VPne14ae4kgMspXg>
    <xme:kCwAYHOt8MkZyWesK21r_2QEhMRIgAYu75_mEH0L7h5vyIHZZ2lVwb0dA0UP0NWfg
    A5ZadM-QzYXekSdhmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:kCwAYCiEs85YOslLX1vCJV63jk4U3vknVSKTZCBTfXbXG-zqMiXwUw>
    <xmx:kCwAYC-h7hSq3GEzzTErcpbmZWlaVpwfHpzgA07bUaYNoaqki5QwKw>
    <xmx:kCwAYFufAuT3anwX7xIyGZy0TuLVoSlbzLQPNfw_Dg5wIVZJtg7gWw>
    <xmx:kCwAYG96_NEasryhwh1J7Qxz91TBngX6MqSt07-KwF4-jOFhNW5w0g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 244041080057;
        Thu, 14 Jan 2021 06:35:44 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [PATCH 02/19] dt-bindings: iio: adc: Add AXP803 compatible
Date:   Thu, 14 Jan 2021 12:35:21 +0100
Message-Id: <20210114113538.1233933-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AXP803 compatible was introduced recently with a fallback to the
AXP813, but it was never documented.

Cc: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/iio/adc/x-powers,axp209-adc.yaml        | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/x-powers,axp209-adc.yaml b/Documentation/devicetree/bindings/iio/adc/x-powers,axp209-adc.yaml
index 5ccbb1f81960..e759a5da708d 100644
--- a/Documentation/devicetree/bindings/iio/adc/x-powers,axp209-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/x-powers,axp209-adc.yaml
@@ -46,10 +46,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - x-powers,axp209-adc
-      - x-powers,axp221-adc
-      - x-powers,axp813-adc
+    oneOf:
+      - const: x-powers,axp209-adc
+      - const: x-powers,axp221-adc
+      - const: x-powers,axp813-adc
+
+      - items:
+          - const: x-powers,axp803-adc
+          - const: x-powers,axp813-adc
 
   "#io-channel-cells":
     const: 1
-- 
2.29.2

