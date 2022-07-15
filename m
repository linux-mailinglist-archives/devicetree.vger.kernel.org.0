Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58EA9575DF6
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 11:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232575AbiGOI5x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 04:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232336AbiGOI5w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 04:57:52 -0400
Received: from mail-40137.protonmail.ch (mail-40137.protonmail.ch [185.70.40.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 478C42AE5
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 01:57:52 -0700 (PDT)
Date:   Fri, 15 Jul 2022 08:57:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail3; t=1657875470; x=1658134670;
        bh=qN99dfKRGxS2+v9Nz/7Ggz4BuM5f6Pz4OGFZbarWolY=;
        h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
         References:Feedback-ID:From:To:Cc:Date:Subject:Reply-To:
         Feedback-ID:Message-ID;
        b=oBoWlAcITQkZxyl09HLRyPdX5JtAYyv5AgLODDYdQ34GpHbZ8TzXzLC89CqX2cakB
         TWxH3sWTPaQNMRffjsiLNftyNCdp8Jon652YAr2+Y7uIdo3F+RcN6U++dpJuyBG5d5
         Iqh9QtvGIVkUmfPH3pXngsfGJLAl2dk6LqFrk3Tlou8+NE91uuV0XN8u9r0WYDjd+8
         pccRDlvv5x+5Z6caxtpbdvhTWBvc28EmeEPRtFyxP0jHn1olKnHiAhc9v6Y9GQCJ7B
         t9Mypd9ABu0jQggX7z7SPqeTvIIDKK/LCyKN2l3boUB6XChrZGiKsgIQ6HHWO7OBya
         iQa6k4GuC0mEA==
To:     devicetree@vger.kernel.org
From:   "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
Cc:     Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>,
        ~postmarketos/upstreaming@lists.sr.ht
Reply-To: "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
Subject: [PATCH 3/4] dt-bindings: qcom: Document bindings for new msm8916-samsung-e2015 devices
Message-ID: <20220715085712.54098-3-linmengbo0689@protonmail.com>
In-Reply-To: <20220715085712.54098-1-linmengbo0689@protonmail.com>
References: <20220715085712.54098-1-linmengbo0689@protonmail.com>
Feedback-ID: 40467236:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the new samsung,e5/e7/grandmax device tree bindings used in their
device trees.

Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentatio=
n/devicetree/bindings/arm/qcom.yaml
index 5c06d1bfc046..b004f42bc277 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -164,6 +164,9 @@ properties:
               - longcheer,l8150
               - samsung,a3u-eur
               - samsung,a5u-eur
+              - samsung,e5
+              - samsung,e7
+              - samsung,grandmax
           - const: qcom,msm8916
=20
       - items:
--=20
2.30.2


