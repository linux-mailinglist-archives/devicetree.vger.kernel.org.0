Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B997CC83F
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:59:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726840AbfJEF7U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:59:20 -0400
Received: from mail-qk1-f201.google.com ([209.85.222.201]:57022 "EHLO
        mail-qk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfJEF7U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:59:20 -0400
Received: by mail-qk1-f201.google.com with SMTP id n135so8736145qke.23
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=qa8lzqL1R0bb0ynaHlYSrIGdb8PV3M5EMBcQMQXD2v8=;
        b=hrALEg/HmJ+RBF4lWI2dLrqiBrrs7sZA/d7m0qrc+yGchyARzfncsLzaSzGBuIU8ZL
         UWpgcF3zP14DCRh/RWgRZG15US8Z6o5hnN8Sk60a5IufhHdiwY40G0e5VO6nALCLFBn+
         tSi0AWFUgslLrus5/5P3Je4gX0nLD96IGzBMvmDl3z8MRz9yDjFStJHjlSzbFBOovRwQ
         GdbNRZxFQxlvwUsTNTeLUrpN2vT1tdvfPoRdsAxpqNrBB4ch9vDvf01x20MIneIkhAlt
         /sLojDnfpPo45316rmbmfvE/MS3iTPke10abVjbfp90b9gVwBWPlSDWsM13wJIWfnOcC
         AUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=qa8lzqL1R0bb0ynaHlYSrIGdb8PV3M5EMBcQMQXD2v8=;
        b=t8iYBPKgAUKSxeLxpIPnNau3l5e65A3K8kDoTxUME/mO93Sr7ZvX9JGTM6sHAq0ux+
         nswEpzn5xoX3vaJUaB5fYBBYoANMEFx/W+6Mx3tO4UHNwgQqIJnI30WAjz9lF6OhtLHM
         uWYgIztZjSnXbMObuxdfeODn/oXjFcZ4tZD5h16ii6VEK++HFfx5zRVOHiqlVswHhl3S
         DcHlJ++0182NvOl/3xwBzfFp8DrX7OggX5nvT43ZFzbnBKK0khlNaJtDtRMnWTmTEQqo
         jV2ijTVnETtP1eC5/g1r0xO3EvB7DnLWy4WttqgWY2dXgK8wlj1kWsEi5v6dMNjEio61
         CY1Q==
X-Gm-Message-State: APjAAAWSzbvrZ6IOvlAK+YQUQDvwdA18iJhr7tQqurMRGiGporBOiPu3
        iPAf5pFz07mm5usz2Uo1ugRdcAv9xMQt
X-Google-Smtp-Source: APXvYqyADdkh+lHP8dRTBId0QoDCr/3kdmcRfZKzwDNBV8JzuoHxl6Bb9Z5JmrP7olAejzPd8rI8yjA0rUL/
X-Received: by 2002:a37:6789:: with SMTP id b131mr13603933qkc.314.1570255157630;
 Fri, 04 Oct 2019 22:59:17 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:58:07 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.9.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 09/10] ASoC: dt-bindings: mt8183: add ec-codec
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an optional property "ec-codec".  If specified, mt8183 could use the
"wake on voice" feature offered by EC codec.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
index 17ff3892f439..decaa013a07e 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
@@ -6,12 +6,15 @@ Required properties:
 
 Optional properties:
 - mediatek,headset-codec: the phandles of ts3a227 codecs
+- mediatek,ec-codec: the phandle of EC codecs.
+                     See google,cros-ec-codec.txt for more details.
 
 Example:
 
 	sound {
 		compatible = "mediatek,mt8183_mt6358_ts3a227_max98357";
 		mediatek,headset-codec = <&ts3a227>;
+		mediatek,ec-codec = <&ec_codec>;
 		mediatek,platform = <&afe>;
 	};
 
-- 
2.23.0.581.g78d2f28ef7-goog

