Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36670260C96
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 09:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728479AbgIHHzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 03:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729750AbgIHHyp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 03:54:45 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B61CC061786
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 00:54:32 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id l9so16152390wme.3
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 00:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/f+R+j91elfFPYf4zfHO7Bzdv43BgZ5CODvbZ0Vzlb0=;
        b=MxNjfFU5x28KJlZdrPqrtuP/t/v6fpMsOEGKTByYw9wYcIW0u58tAcThwi5E3fhxqB
         h21f/DHXzKl4OvbTBs3aSplhH2HVm6KfAHFRK5SZUmHpJR1dta3Aj0gP5K5CbBkPqK9z
         0x2pd1lMp81JR0y7njeN0eyfuVcHKkSKMFviptB0N2mLXjOWQ4tpYGJGg9BgWrEGv740
         Q1lfR/LQhdaE7+f41hH2B4x8Zm9GU2tWmojTn1qlBm3qzwcRnyR9ySDG+xvRyZ6DtsDw
         vxtKdPOFunXKV4iEh70MZOt8aCBPi89cWCv7xWN6VH0CoLMosxpvCCF4nyG2bA2GK5iM
         vAPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/f+R+j91elfFPYf4zfHO7Bzdv43BgZ5CODvbZ0Vzlb0=;
        b=YCgNUvaGcwRmYe9wNk1pPmC0ro8nMJWVpiRVPjHK3XFYggSv26ACktZLEp/Q8m0ojI
         bsqQYt7sOs6AT6xSTr0GtbSgkPVTzvxMpTM1WTf59+6KqPKi182g1BLiQzvaheWY99Gy
         4IHpnZbgQ/o8fWPvyNmI8t9cUbvnDD2eastmvfHb4dot6ayfW68Xyl/q1n4bEVS/w3w4
         PrdCK8wIti096b7laJexUGbFHlcSou11oZDmkdrd/PDibiEgphApG4NtMehep0iK9Zce
         5A5QLDynVbt5oql6PQiU3S+yn0r2NatPmvEhoIKsHxQNLwAvMvdbCHh3dTL+MPqJQaNN
         iy2g==
X-Gm-Message-State: AOAM533aEhknlWrmTu8sKuXmNU15mN1UsEu+t7clJHowEGswuQW+l8kw
        VV2acT2uMSANUprUkItBTBiQCg==
X-Google-Smtp-Source: ABdhPJw2+vRPCVSoCJ8uTyZkM4qdXjUF9o+idDfbH3aRRZ1MhJ6/KLpRbqP0cqmVYb5dpgJwHdOuUg==
X-Received: by 2002:a1c:4303:: with SMTP id q3mr3013678wma.158.1599551669694;
        Tue, 08 Sep 2020 00:54:29 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id f14sm33788291wrv.72.2020.09.08.00.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 00:54:29 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org,
        devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v3 2/4] dt-bindings: display: panel-simple-dsi: add optional reset gpio
Date:   Tue,  8 Sep 2020 09:54:19 +0200
Message-Id: <20200908075421.17344-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200908075421.17344-1-narmstrong@baylibre.com>
References: <20200908075421.17344-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simple DSI panels can also have a reset GPIO signal in addition/instead of an
enable GPIO signal.

This adds an optional reset-gpios property.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index c0dd9fa29f1d..4d08e746cb21 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -54,6 +54,7 @@ properties:
 
   backlight: true
   enable-gpios: true
+  reset-gpios: true
   port: true
   power-supply: true
 
-- 
2.22.0

