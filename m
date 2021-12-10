Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 766994708C2
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 19:30:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245371AbhLJSeK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 13:34:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245372AbhLJSeI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 13:34:08 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89F1EC061746
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 10:30:33 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id j6-20020a17090a588600b001a78a5ce46aso10084993pji.0
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 10:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NX3dxtdtVCuddOAZXwoTv41Ke3AY/AL4bS0SlhPJQ/c=;
        b=KJasxjA2DuQL857nciXxgyAoXX8Zvlk0p7/GY3zStVz2lbcdWbwxmjd69hNGjJffXQ
         BsRJQCoU33o3+c6cNGQkmFNfR7MPCWC2L3wclHK0iMK3/PcrP5LSpU512Lqlq99pFOBy
         lpNaiDxoIQsczl/FGNuM6nPxl+YxDnLof/U64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NX3dxtdtVCuddOAZXwoTv41Ke3AY/AL4bS0SlhPJQ/c=;
        b=VW6C3aZ8u0ibmh17shtjAtn7KA+qNgANhkSReO/iPSH/iop36D9xsbRkjHxvT1borL
         WoQ0pPY53WLrlJLFSZh996x/L7w5Vnw26cwkCrekCh1y/xv8inddZEEmVd433l872Xsf
         2deR+4K3QraUmSsIzWgQa1cwRuCooVWWc/rNd0CBq939VV3jukPQ5+Cku98N2ApzaQws
         +U6jyLEBk5jTeF6OjrYW4kuZ58gO4nd+eRa0EpNPM4QhI+WtaKiYDzSjZDHxxYBezSBR
         41iAgcBCaVivQW/Q4q/J7YdHkI48JIwQglJGbC1gibe4veShOLSAOtixgR076P6yaIrF
         P/ZA==
X-Gm-Message-State: AOAM530xxxDVjAcSQfg7DRgp/6AnI4rnbWb+M3EdLaDP6FFbxvFCuwev
        dkfq3P5zaCBHvpJoNmh/ZQCWgg==
X-Google-Smtp-Source: ABdhPJzCgbEl8v8a5OVxjl4z8qN/jrANuTCcwiZ3tEdMdK4kiVvV5FaHkF4rUzgQgrIv0dhrZgAo2g==
X-Received: by 2002:a17:90b:3b45:: with SMTP id ot5mr25509548pjb.235.1639161033150;
        Fri, 10 Dec 2021 10:30:33 -0800 (PST)
Received: from localhost ([2620:15c:202:201:d386:8bb1:aaa7:a294])
        by smtp.gmail.com with UTF8SMTPSA id lj15sm3408617pjb.12.2021.12.10.10.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Dec 2021 10:30:32 -0800 (PST)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>
Cc:     Peter Chen <peter.chen@kernel.org>, linux-kernel@vger.kernel.org,
        Bastien Nocera <hadess@hadess.net>, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Roger Quadros <rogerq@kernel.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>
Subject: [PATCH v18 2/5] driver core: Export device_is_bound()
Date:   Fri, 10 Dec 2021 10:30:18 -0800
Message-Id: <20211210102923.v18.2.Ie1de382686d61909e17fa8def2b83899256e8f5d@changeid>
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
In-Reply-To: <20211210183021.3500376-1-mka@chromium.org>
References: <20211210183021.3500376-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Export device_is_bound() to enable its use by drivers that are
built as modules.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

Changes in v18:
- patch added to the series

 drivers/base/dd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/base/dd.c b/drivers/base/dd.c
index 68ea1f949daa..07eefddd4a77 100644
--- a/drivers/base/dd.c
+++ b/drivers/base/dd.c
@@ -370,6 +370,7 @@ bool device_is_bound(struct device *dev)
 {
 	return dev->p && klist_node_attached(&dev->p->knode_driver);
 }
+EXPORT_SYMBOL_GPL(device_is_bound);
 
 static void driver_bound(struct device *dev)
 {
-- 
2.34.1.173.g76aa8bc2d0-goog

