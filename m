Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0CA0481D98
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 15:43:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730529AbfHENna (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 09:43:30 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36510 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730190AbfHENna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 09:43:30 -0400
Received: by mail-wm1-f68.google.com with SMTP id g67so68960663wme.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 06:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cGMV7QhC8DNNZSd4DygDFTwAShSfi/80pVWOD2ZlzJ4=;
        b=KQy8WXqzt+GT9Ms3PweAVyKX7a6Hz4OupUPGYZHWgTfDcqep0bpg+Ae519mvu3I1hg
         e7D3VkMTXiDn6NYIBOHYnO98ca4Un2PjNk4qlQGrPJmMjCssBy4fnjw1zMBLLVi4o03t
         UoSPskgV31NkcygwDhsvZJLmfTwD1XQOCdxLp6plgpCUgL3Bgqh68dfiHOCZ8/6dBoN+
         kvHN3X/WTRCXQX552Cg9EIV5FM80awl2WLwGgAnRA+3tTtMRBYQ+GSuZknWw76zvdVFo
         4L4qGFV/M2HNbRXP+0ZYaAWfuLPYsR8W/ACFQaq6f8r3IqsnmGp58pjlpV28OaAKLLCz
         XrgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cGMV7QhC8DNNZSd4DygDFTwAShSfi/80pVWOD2ZlzJ4=;
        b=llIMNJE8Y2km5p7MZqYYKI2ZYq3E8l9aTbIsBlch/aWY/Wi5V3PdyhD2BZFrrXD8e6
         Y2hW9o45iINs6SgzZ7QKqNO64ZwFRvK4O/Vdxa/Qc5R31OqVBXAp/V1rIEu2mMI+uyFm
         xwafnkUb7KmDzbJL4GJMNtHfTlS3q34tQt9qDQPQHeACApTkC0P/erIdRE0PNm082qLi
         3bYQRJ+voskgtNiQGy8JaXrMFJAEftE/aLMDdRDXvdYG4vaxYgRzlM8NW0J3xrUMdHkS
         PrIdgrDglrspKJP88W+w3IO4Hhs7iLPrdf0NOnfJabH91Ki1JntAd9GdORUPRJTRFLtr
         Qu7A==
X-Gm-Message-State: APjAAAWPQAb/DhdaeOL/mRKTJ/ktX4mqiVX9WBj1SZMcWSPUPZ97azEU
        i3BXtSyOzt+P3h624OX92ovEBg==
X-Google-Smtp-Source: APXvYqwwWryXK9vXOEQg9N4QQcQMr9Yj0vLdZlzKaPKS8EdfFo7G7Jmuqo5lcERdhsA70RGznVFIiw==
X-Received: by 2002:a1c:cfc7:: with SMTP id f190mr17881896wmg.85.1565012608012;
        Mon, 05 Aug 2019 06:43:28 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id t3sm67835842wmi.6.2019.08.05.06.43.27
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 06:43:27 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] MAINTAINERS: Update with Amlogic DRM bindings converted as YAML
Date:   Mon,  5 Aug 2019 15:43:19 +0200
Message-Id: <20190805134319.737-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805134319.737-1-narmstrong@baylibre.com>
References: <20190805134319.737-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The amlogic,meson-dw-hdmi.txt and amlogic,meson-vpu.txt has been
converted to YAML schemas, update MAINTAINERS to match them again.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 MAINTAINERS | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5198f0..c55c18531cd1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5318,8 +5318,8 @@ L:	linux-amlogic@lists.infradead.org
 W:	http://linux-meson.com/
 S:	Supported
 F:	drivers/gpu/drm/meson/
-F:	Documentation/devicetree/bindings/display/amlogic,meson-vpu.txt
-F:	Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.txt
+F:	Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
+F:	Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
 F:	Documentation/gpu/meson.rst
 T:	git git://anongit.freedesktop.org/drm/drm-misc
 
-- 
2.22.0

