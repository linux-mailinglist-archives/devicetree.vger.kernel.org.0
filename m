Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BAF236D177
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 06:55:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234376AbhD1E4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 00:56:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232124AbhD1E4b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 00:56:31 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99017C061574
        for <devicetree@vger.kernel.org>; Tue, 27 Apr 2021 21:55:43 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id b17so6874966pgh.7
        for <devicetree@vger.kernel.org>; Tue, 27 Apr 2021 21:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=oXkcL1lHMS9/atp/1M+2S4oUJFLqrFv1wWQ5I09WWZB5DvznwYznRkUaU8SkfqTGEs
         UYeW43uZrTmQYfz++FpfwhzLxXJ4rtEN+on9zjE9ohFbgKvRHbzOENyfiyVyRz37eJiR
         BFTrFfuAi9YJzDjhgAmeckvfyV99TbMfYgsZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gt4pb5bT5mW/MToENIuo4Jt8VqUlSnyGRgKvmw6yKp0=;
        b=joNgSLmP/xJgSokmbcCamNcE+jtjdhKQbsg4tISv2j9kqw0Xm0BPbPu1AtJphHZGNH
         Y5u/YAwd5gG5oGE5Fa17aV9BvrLXqX/YgMTHQyCxvHs7lR/+Emu+bWPvpQJ7yryTQI72
         kYARwPY+ZOj0e+AwFsEgZ8L3ZhrDcD4b27qQ0iiJrPncZxBVCP6+Kv5nx8QV5ykNM/I0
         UDNUFsUfenebY0xnm7W0jPItDiDGofm/s6yim8U741AO8Shw9E3AZFIAkqZpgwCnISc0
         59nulYDYy7POMODKZyxIle04p7zr+NZkWaEcXTLW+ZaHPFhg/zBIlGjWjVySSNqzr+sn
         fJCw==
X-Gm-Message-State: AOAM531wQy8abBi1gfR5GMSMs6meso+UtKIeyrd9FBssWqYcYbYQEiIu
        H9Fv6jPOo3+SNC4RsSb8cvamHYtaIRLp5g==
X-Google-Smtp-Source: ABdhPJy6K5CdM/3nHF3p+/2eE4TdGymi9eYrEEqROe+kZTRJZLv9zhp0SI6/MmsV0uYFWsxTx8DpSg==
X-Received: by 2002:a62:1b88:0:b029:1fb:d3d0:343a with SMTP id b130-20020a621b880000b02901fbd3d0343amr26649171pfb.76.1619585743151;
        Tue, 27 Apr 2021 21:55:43 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:8076:36e5:2db0:967])
        by smtp.gmail.com with ESMTPSA id x13sm1193170pgf.13.2021.04.27.21.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 21:55:42 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sean Paul <sean@poorly.run>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v4 3/3] arm64: dts: mt8183: Add panel rotation
Date:   Wed, 28 Apr 2021 12:55:33 +0800
Message-Id: <20210428045533.564724-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210428045533.564724-1-hsinyi@chromium.org>
References: <20210428045533.564724-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

krane, kakadu, and kodama boards have a default panel rotation.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ff56bcfa3370..793cc9501337 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -263,6 +263,7 @@ panel: panel@0 {
 		avee-supply = <&ppvarp_lcd>;
 		pp1800-supply = <&pp1800_lcd>;
 		backlight = <&backlight_lcd0>;
+		rotation = <270>;
 		port {
 			panel_in: endpoint {
 				remote-endpoint = <&dsi_out>;
-- 
2.31.1.498.g6c1eba8ee3d-goog

