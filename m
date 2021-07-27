Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED9163D7272
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 11:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235990AbhG0J5Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 05:57:25 -0400
Received: from mail-4319.protonmail.ch ([185.70.43.19]:39457 "EHLO
        mail-4319.protonmail.ch" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236106AbhG0J5Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 05:57:25 -0400
Date:   Tue, 27 Jul 2021 09:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail; t=1627379843;
        bh=Xx2hPp+rARWkQyYqiOSekgFmEd40zMegs1BvCzMdVhA=;
        h=Date:To:From:Cc:Reply-To:Subject:From;
        b=stAfgrgnbIcXHG6ZQY4mYfxPeJpj0J9Dsp5yKtc2r4qhhKHvGcK/wiSkSsltH0aqz
         tZuDu9mp7Fk2VttPUwh2iC/6Zu0D1aETFW9XWO9XeCZ3EA59q3GfTnfMFqhMqeSrxq
         sHUFmVQxNo+a+uyDK8EEYb15ih/XW2hEWEJWoUVo=
To:     Michael Auchter <michael.auchter@ni.com>
From:   Yassine Oudjana <y.oudjana@protonmail.com>
Cc:     Yassine Oudjana <y.oudjana@protonmail.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Reply-To: Yassine Oudjana <y.oudjana@protonmail.com>
Subject: [PATCH v2 3/3] dt-bindings: extcon: usbc-tusb320: Add TUSB320L compatible string
Message-ID: <a4rEWQfScKM8Y0B7u0NXSAdvKC6Xzesp1OWGUYjeWaA@cp3-web-016.plabs.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
        autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
        mailout.protonmail.ch
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible string for TUSB320L.

Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
---
 .../devicetree/bindings/extcon/extcon-usbc-tusb320.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/extcon/extcon-usbc-tusb320.y=
aml b/Documentation/devicetree/bindings/extcon/extcon-usbc-tusb320.yaml
index 9875b4d5c356..71a9f2e5d0dc 100644
--- a/Documentation/devicetree/bindings/extcon/extcon-usbc-tusb320.yaml
+++ b/Documentation/devicetree/bindings/extcon/extcon-usbc-tusb320.yaml
@@ -11,7 +11,9 @@ maintainers:
=20
 properties:
   compatible:
-    const: ti,tusb320
+    enum:
+      - ti,tusb320
+      - ti,tusb320l
=20
   reg:
     maxItems: 1
--=20
2.32.0


