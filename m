Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9100E6FC27
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 11:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728286AbfGVJ15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 05:27:57 -0400
Received: from mo4-p01-ob.smtp.rzone.de ([85.215.255.50]:35320 "EHLO
        mo4-p01-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728284AbfGVJ15 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 05:27:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1563787675;
        s=strato-dkim-0002; d=gerhold.net;
        h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
        X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
        bh=H1gWY6IE7LGNkWVyXPI5Uoz/3tQSH/9wfOxoFpAOzxQ=;
        b=EU1bAS8TqSqmTojcLBIEKG82vv5eON7DmnwLqxqT3KYl0Q6/100jJhntQYGukVOCnn
        PBPTUJyU7yigAzVHoYABswhGQwdYXx4ApFZDmb7gZkCfkY91B1fAWM+JJEpEJFitTCCp
        MYRarIQd6/l90YnNTOxRpAlHXpSJgw7EPyKS+pFJIct3VLUV/FaVhZWaDSZc9OK1Olyo
        hwu40Y/ywcv8r0mgfWGgRfFdt1XhytrO7BS58O6bX9Zm2eUSlsQfkRZjnxX56viE2fYa
        6jPWvoRxQ48bhgYjx/WLZ1d7Yc48DzyidxX5a52yHvI330+N4v2c83Ba1n0tkW1EAtHT
        LLKg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxP4G6N/EiB"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain
        by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
        with ESMTPSA id m0a13fv6M9OmObx
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with 521 ECDH bits, eq. 15360 bits RSA))
        (Client did not present a certificate);
        Mon, 22 Jul 2019 11:24:48 +0200 (CEST)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Andy Gross <agross@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>
Subject: [RFC PATCH v2 2/4] dt-bindings: qcom: Document bindings for new MSM8916 devices
Date:   Mon, 22 Jul 2019 11:22:09 +0200
Message-Id: <20190722092211.100586-3-stephan@gerhold.net>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190722092211.100586-1-stephan@gerhold.net>
References: <20190722092211.100586-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the new samsung,a3u/a5u-eur and longcheer,l8150
device tree bindings used in their device trees.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 54ef6b6b9189..e39d8f02e33c 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -45,6 +45,7 @@ description: |
   	mtp
   	sbc
   	hk01
+  	qrd
 
   The 'soc_version' and 'board_version' elements take the form of v<Major>.<Minor>
   where the minor number may be omitted when it's zero, i.e.  v1.0 is the same
@@ -115,6 +116,13 @@ properties:
           - const: qcom,msm8916-mtp
           - const: qcom,msm8916
 
+      - items:
+          - enum:
+              - longcheer,l8150
+              - samsung,a3u-eur
+              - samsung,a5u-eur
+          - const: qcom,msm8916
+
       - items:
           - const: qcom,msm8996-mtp
 
-- 
2.22.0

