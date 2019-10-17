Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9607DAEFC
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 16:01:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439760AbfJQOBW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 10:01:22 -0400
Received: from mail-vs1-f74.google.com ([209.85.217.74]:50555 "EHLO
        mail-vs1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437401AbfJQOBW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 10:01:22 -0400
Received: by mail-vs1-f74.google.com with SMTP id w22so468269vsw.17
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 07:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=8XXPJEKmRQHJ260AjlgjGDf0xJK5vMVAKae8lLscoNA=;
        b=GS4q6NINjE4xmnov9Tj1ZS/4JK8l9aGi1ykJcDV+DhEns0zPmLcnxU4YJ6gJc2Ugo3
         A2MOVp/YJUc0sSR4QcuGvH/N0d4R+2DSO3r13spwS9WCjhI3P8uEUPAi1PaT2ze0rznP
         ghjZD7kPcxtZ0A8INTl0VB/NmbEbUIPEbVnYp1uNf3rKmJIcVeBor4C0m/c36zUrn8HI
         PllDvLoHoaNTjKD7Dj/j9cfj65qLcUtvvw+9DaSQOzuXzulLyz2yjxNPaceMQERfeVch
         zqcOBFRnhvbZ+hRM944VMMGT1YZMxdXboF2s1zLnv2C31O5zH3cyMZJwNzCBOjbLgfRF
         pZgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=8XXPJEKmRQHJ260AjlgjGDf0xJK5vMVAKae8lLscoNA=;
        b=JAZ4Dw6wYEjH/nN90tNzrhfgseAQdWWUs/Y+YCAfASwDGs/rR/jlXxkBzx11FXzAa7
         JywFNwByA0kAIsjx5WLcwD/fkRnvnhyLIja82qadgthBiYENUxzcbV7SoOmFsPwkfLcV
         +Fh5ArSRYawvjltFVR8qLutfF1GP09SNto7bDjnQXFcNLkAK7AcIp59YAEaQX/Nymyar
         xzgXRuDT01hBh6CxMs9/eU+fE1kaj5ds/53yvhIeEIenLxteQn22mrrydglji4GPuihA
         fuIQUA6rkBGOTxraZ7HjntvVnJPKKUAUNJAaUb8hwj611IOvzik4YQ2dZEpGXBrquHUv
         UcxQ==
X-Gm-Message-State: APjAAAX513bM/5AiNKTAzjV5hXxmrN46Gb64tMxRmfSNBY9YPQ3Uq88J
        6UAzxBvyU6wu/pyu2QZtz+wYl/WGGrga
X-Google-Smtp-Source: APXvYqwpVGe41Ec51jUiFN3Y7Lw5cwYf7xP9Z7G806scmiFjMPVFlEkaDEETTRRW6AvS2uVmHPj6zSsS1l5y
X-Received: by 2002:a1f:3a15:: with SMTP id h21mr2067933vka.17.1571320879606;
 Thu, 17 Oct 2019 07:01:19 -0700 (PDT)
Date:   Thu, 17 Oct 2019 22:00:14 +0800
In-Reply-To: <20191017213539.00-tzungbi@google.com>
Message-Id: <20191017213539.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
Mime-Version: 1.0
References: <20191017213539.00-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 09/10] ASoC: dt-bindings: mt8183: add ec-codec
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an optional property "ec-codec".  If specified, mt8183 could use the
"wake on voice" feature offered by EC codec.

Acked-by: Rob Herring <robh@kernel.org>
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
2.23.0.700.g56cf767bdb-goog

