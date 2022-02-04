Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 349764A9A32
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 14:44:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358593AbiBDNoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 08:44:03 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:60682 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1358957AbiBDNoC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 08:44:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1643982242;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FGn+B4gE3kkARtCZwbp34WsdN+cmoVNQCk7A1PY1HEE=;
        b=V8sYz3kerk612RAAe34VV4DkgYeqoYk7ePM5K/vwxruz3Bg823HQOhjRpb8mE8k0dBlxHN
        f5dgmmUcYR4fg4VQ6BveJrSohIhH8p2TLBEauixF7ujDCZqPb0HowBWoazZYtvFb+gyeQF
        aldspePTdcqwc+k+1OToGOzmNiz4D5A=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-601-VesDiL5YOCeISHWuTjwVNQ-1; Fri, 04 Feb 2022 08:44:01 -0500
X-MC-Unique: VesDiL5YOCeISHWuTjwVNQ-1
Received: by mail-wm1-f72.google.com with SMTP id t2-20020a7bc3c2000000b003528fe59cb9so2403121wmj.5
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 05:44:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FGn+B4gE3kkARtCZwbp34WsdN+cmoVNQCk7A1PY1HEE=;
        b=8D7od5Yb8c6ir4jhks4hUudv6PTuK/K+mgIoizQAvMddWalA02SpzdS+VKMVO6l2hk
         MCdNoan3imLKJqO4k8y8t2wqtRxz+grEUutE3K2l+qcxPp2TLr0aa5RQWrAqD0fDMEGG
         Vf/uTL8cSRWfHh5k67HsTP55s7xhPjOMjBJDO60FngWYuXWiz2GTx3bbvCzzki6iCojD
         ZVwD/VGCy2TEp8MmoZMV/1cqsVmQ43YLu1O5F5DOWAuG6jqiYN/ZBqEBQSXw7xyFjz4c
         8o0PzkF8m6piJPhCL2syqsVgh/+1+TH8NqZ+zQuD8ojY2YxJU11Oq1cqPpY9qZ/reQMz
         qo+A==
X-Gm-Message-State: AOAM532jbgyNL6n0qlLEdSE7SUIlII/JYaXM4eta0sWJ9tYyoci4+A4A
        KLieN8pexAiYxNZ4tRijiP/2A/uvdIvFha2nJumVPLtd8kWZ1SFXe3JKYf2zUF1uwFqBul0cQqO
        MlmWVKMvHbZhPbbfYq0My5g==
X-Received: by 2002:adf:db4d:: with SMTP id f13mr2526487wrj.329.1643982239873;
        Fri, 04 Feb 2022 05:43:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIH15SYdGMCJPbF9406dm+rwJsqjp0GPK+4c7vxU052qmuPNJJZFqWRduDtlttxDXm3iBi5w==
X-Received: by 2002:adf:db4d:: with SMTP id f13mr2526479wrj.329.1643982239695;
        Fri, 04 Feb 2022 05:43:59 -0800 (PST)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id r3sm1871692wrt.102.2022.02.04.05.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 05:43:59 -0800 (PST)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        linux-fbdev@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] dt-bindings: display: ssd1307fb: Add myself as binding co-maintainer
Date:   Fri,  4 Feb 2022 14:43:47 +0100
Message-Id: <20220204134347.1187749-5-javierm@redhat.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220204134347.1187749-1-javierm@redhat.com>
References: <20220204134347.1187749-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ssd130x DRM driver also makes use of this Device Tree binding to allow
existing users of the fbdev driver to migrate without the need to change
their Device Trees.

Add myself as another maintainer of the binding, to make sure that I will
be on Cc when patches are proposed for it.

Suggested-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 2ed2a7d0ca2f..9baafd0c42dd 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -8,6 +8,7 @@ title: Solomon SSD1307 OLED Controller Framebuffer
 
 maintainers:
   - Maxime Ripard <mripard@kernel.org>
+  - Javier Martinez Canillas <javierm@redhat.com>
 
 properties:
   compatible:
-- 
2.34.1

