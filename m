Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB4FD5FF8
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 12:21:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731393AbfJNKV0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 06:21:26 -0400
Received: from mail-qk1-f201.google.com ([209.85.222.201]:36939 "EHLO
        mail-qk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731305AbfJNKV0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 06:21:26 -0400
Received: by mail-qk1-f201.google.com with SMTP id o133so16542121qke.4
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 03:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=nmBXtRd1btomJP4ZZllwxH2lrIxzbkXaw1IqhxBhTF0=;
        b=Yr85AqAvJWBmDneXiupilpQx+CJWMAHGLVwqp+9mtGkG+M+8SNjBKyvtglcJoJ+v4g
         xAK5fQ93ys6lrzgSKpVVoidvYpfWsN5vzeNuQVI6TZIfFZbYT99RJLKfJykTh6mObtWu
         ICF0JN7qO+cc3hjN3uo+uOZFXt6D8oETVFwQ+vDXOnaGaP+vQ8bbjmObSUNtBCGD38gX
         AU4AQCWgKC/mIESbHX97LX+d3uUrLn7ftAnuArN+QxUoCu49efVRoPptcvjdvxXhDisL
         S4ufTsVPvIVu1tF3qKoFwJx4ilgq566mgVkklcv6SzBV1J7B84KZpVkhj1hemtwRqLTc
         a3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=nmBXtRd1btomJP4ZZllwxH2lrIxzbkXaw1IqhxBhTF0=;
        b=SNx+o36lame0tXas3JOzVa+ux0nSylhSkgBp/fviGDMoibWlhi2gMyDkhn5L5HTQfd
         YM9z3R2/H1I3Rrf2Ta1JCVeG+MnCV/4eb82H5k15fmKn3hdh+at9af88pg61paen1+EY
         UJjnmNYpOT3aGUGL6aTyMXxSIj+maJY00LfYjKj5gagJAbdgVpTtZSwWmwLvlDlTY4tE
         f2dLuBKR8zPdQN/gvaPtYEnbBs3qXqlgCc3feC+gkBFR8H/vGB3wFCKwm58MKFQu9Ohl
         T/u1WvwaGViyNZCje+uuQmd0mTEjgNUIX8bDkWMdphAx+Zc4zTmnaCW+Z/sv6m9AZ4xT
         8nAg==
X-Gm-Message-State: APjAAAVDYgkhET60dVqIA1IlEDAUZ+9htO+GrVZS1Gvo5ZZCUwL0Fiv4
        FXETiigcEoyh1vo4eawPy1j8bAE7vh/+
X-Google-Smtp-Source: APXvYqxCQxEF4WkRp3fE1f3Ve4rBD9HVpeROxjrJ3RzKYMNtIFWmpMLXZIcX7NU71OZRYFRGUS1onV06xzdL
X-Received: by 2002:a05:620a:a8e:: with SMTP id v14mr29790321qkg.215.1571048483769;
 Mon, 14 Oct 2019 03:21:23 -0700 (PDT)
Date:   Mon, 14 Oct 2019 18:20:21 +0800
In-Reply-To: <20191014102022.236013-1-tzungbi@google.com>
Message-Id: <20191014180059.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
Mime-Version: 1.0
References: <20191014102022.236013-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v3 09/10] ASoC: dt-bindings: mt8183: add ec-codec
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
2.23.0.700.g56cf767bdb-goog

