Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B1556CC8DF
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 10:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727478AbfJEI4N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 04:56:13 -0400
Received: from mail-vk1-f201.google.com ([209.85.221.201]:47380 "EHLO
        mail-vk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbfJEI4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 04:56:13 -0400
Received: by mail-vk1-f201.google.com with SMTP id h186so3816190vkg.14
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 01:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=qa8lzqL1R0bb0ynaHlYSrIGdb8PV3M5EMBcQMQXD2v8=;
        b=UraZicHwjCEtlcAcIlTe6U/OCfDrPJuOUT15Bs5ywid0E9tY6/NA6zYE6ek4sII0+V
         ZH4WsO2y2mQ0N+zgfx6xzFBEDbWCXLtjTyY0CyMYLt2U1oqThRk1YPVgC1/GMRVMF+aK
         7Ja6+J3vzQk4PykixTC5Lm1ETCss7R/mqN5Q7+dBmBbRHQY3EOlcvwIZQ/5UJdgQM8d1
         l/6RZibDM2z4E3W64TNi0jDw9ioFQ2o2pjmYtpe1/MFNkQ/7tnp5zjWmp9wk67/PFoCA
         gH6SCJscRPCYyuXtg+f5Nhg9WZ4sXGie9oJqM/+tjya4DUOXp3Y6BHbEM1WvLF/KMPjh
         jVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=qa8lzqL1R0bb0ynaHlYSrIGdb8PV3M5EMBcQMQXD2v8=;
        b=pjrFqtyryHl0yt4+DFK4E0MuxLK3BMT1w42/t6sQFLNkZyhw/rpl66CZI7VJPuq5Q9
         CQ5q7UXIYs3wvcMORfVIsUEza05inXX4ghqRP40mgKfzg5OT4rGEHU0DhnodIadkKUmd
         iJTbmOsTo8rebsXBNX6Zk8HECoJax8S4jbYco2NRbh0cjOo6eZdDicqS+n1+fIhIrwt6
         WOXR1nE6E0PH4I7ikWf+mTFF3Az40om4Abj8b2v83QH9gagYsn+LRm+cJ5YrzgaC1PE1
         NZMtPujbwtedFXOb53VBCzDtNM+dxXdCPxNN1kIGEfdQ6mDabjMVBp+R5g3kmmMKWhHz
         Be+A==
X-Gm-Message-State: APjAAAXZYpc+Fw/wfFbP3XnhbzbrSgTDL2PIDxl/aUA59hQsltTgJdmX
        HJB4Dje7R/QfurzV+/cSEZLXIT8o15fP
X-Google-Smtp-Source: APXvYqyjwL8MOE9N8yRaRWFpyHtPJoChFMKlMx/LTpE0kY6mCotQO59jomg21CrtUgtdWcFZQ0TtiitA4jKg
X-Received: by 2002:a1f:4342:: with SMTP id q63mr10068217vka.69.1570265770569;
 Sat, 05 Oct 2019 01:56:10 -0700 (PDT)
Date:   Sat,  5 Oct 2019 16:55:08 +0800
In-Reply-To: <20191005085509.187179-1-tzungbi@google.com>
Message-Id: <20191005164320.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
Mime-Version: 1.0
References: <20191005085509.187179-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v2 09/10] ASoC: dt-bindings: mt8183: add ec-codec
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

