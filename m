Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2187B8EEB
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2019 13:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393606AbfITLXe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 07:23:34 -0400
Received: from mail-ua1-f73.google.com ([209.85.222.73]:37355 "EHLO
        mail-ua1-f73.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393566AbfITLXd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 07:23:33 -0400
Received: by mail-ua1-f73.google.com with SMTP id h15so1331443uan.4
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 04:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=hep84HJPFRulrNlOvjkEVuv4ZKit6N15wB3bwjarbgk=;
        b=Z/emBQL1DqYbcp89S3q7t12kkucc+TJR6Lf/05JnghF/PmEjCjm6ecHsL5yTFcDSkk
         BuZcZESP6hEYAJHAcAW9Yp0e3tPaBerzbVNJk2nlRgXIHArx9Iys8CbyGsPuB5Dt44kO
         coRvhwGfh/dDhPwPmPGe1FQMbd7ajJPPxnsa/4DS9RMLxt94ozQhTiffhJJjr/FVjCFu
         uz07pZ6ZeipethCmcPoLGJwl8B14I949pfK9ETmLU3DSXShuJG3ccwSR9OKSeuo8f2nl
         B5R8oB0yUfwYKuRosjJ2+okFqRTADxxPdFCOW8E1XvO00Wyy7iCv9u0WAG3jSFcuuc9/
         pUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=hep84HJPFRulrNlOvjkEVuv4ZKit6N15wB3bwjarbgk=;
        b=mkHz1tXYGUf3HXhrg3v677Ov1fan0oGCzW4JtjkiGcViDGeg7y0sc2km5FDORlRXTg
         e1DeqGkqi9O8Qbk62mjDM+aW1bWGMPEJo8Rs5Q9nF6vNTEs6dOwVIgS7eqxsPH4aB9Va
         PqltlMSZ74lf8fma5wLV6t0eGv0SO53eBAKbyGV/Yy/7XxcEaredRoPUlzzgvjY6qWB4
         nEXKIDptYD+F3j7tRjRlXDUasKBMnA6w2+/UfZesvfsl5bixYdkUaq8zl6m80JGlXUAZ
         VckaMY0VK/63Q+TgVnDIP5zgiFvindoDkvj79NiAGgqkrDMzi8kG24GYukEWuf20HFBh
         l7NA==
X-Gm-Message-State: APjAAAUUE2HpsJlnIZjLSKSTaP4sA9MpjQH+R5YnH8BCm1mMXv6uwCCw
        Pj8VK5cBUREtbjb6lgH0ocUJPC5JC+8q
X-Google-Smtp-Source: APXvYqzASBzoQOQzUuQD2pzeJ0aIjJs/JADydCufHOaFm1ObLphSnJcLphvmcVNa2p092vV8ySNsPfFUGDOT
X-Received: by 2002:a1f:ec5:: with SMTP id 188mr7841727vko.90.1568978612490;
 Fri, 20 Sep 2019 04:23:32 -0700 (PDT)
Date:   Fri, 20 Sep 2019 19:23:20 +0800
Message-Id: <20190920112320.166052-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
Subject: [PATCH] ASoC: dt-bindings: mt8183: add missing update
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, cychiang@google.com, dgreid@google.com,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Headset codec is optional.  Add missing update to DT binding document.

Fixes: a962a809e5e4 ("ASoC: mediatek: mt8183: make headset codec optional")
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt         | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
index d6d5207fa996..17ff3892f439 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
@@ -2,9 +2,11 @@ MT8183 with MT6358, TS3A227 and MAX98357 CODECS
 
 Required properties:
 - compatible : "mediatek,mt8183_mt6358_ts3a227_max98357"
-- mediatek,headset-codec: the phandles of ts3a227 codecs
 - mediatek,platform: the phandle of MT8183 ASoC platform
 
+Optional properties:
+- mediatek,headset-codec: the phandles of ts3a227 codecs
+
 Example:
 
 	sound {
-- 
2.23.0.351.gc4317032e6-goog

