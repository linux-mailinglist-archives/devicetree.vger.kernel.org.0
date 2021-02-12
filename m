Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D6AB319D2C
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 12:18:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbhBLLRx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 06:17:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbhBLLRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Feb 2021 06:17:52 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85474C061756
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 03:17:12 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id r2so2489655plr.10
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 03:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hv7MSJVHtHXztJBfrSH2Nz4awP2XcECwcmmy9ZhdyEc=;
        b=U7q1M4AUe1upYev75AvznpBzLqxHDrs6VH71WqHkutQDeQjhqE/ItVHv1YIo3kPjZx
         cxR2bl9eKMo4V+OqjQ4neNup/bok1cG0545eQg2BN6rK1oK9N84+NOwqklVTGm5s49vx
         PE37zK4yIEgoMfFYtFgZdjsW7yEwBSEYNC40M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hv7MSJVHtHXztJBfrSH2Nz4awP2XcECwcmmy9ZhdyEc=;
        b=QZr/Me2SXpzuynyB+HresouBx8REm2DqUL7wEo5M5duZX8Bh1L/ub4KUNcyEjJSnEY
         dvtAeW/0mSwLUT5RDMRzOhegkY26jSXEl5xatVzmNGqWlE9KFCKFXDOxu/DrYeV3SugU
         wrdtmjcG3oWS0nNbLegkAK0VNlIMlimX7uIuiu90ShxpnsJGJr4RrQ5aFU1nVY2NKyRO
         yyazi4HdEBCJlzMheIDe7SB5xoG/Kwy08JZGgzKlftt58fBGe7f18cAOfizCw5IBNjSG
         +2WgcNwiCw8OvgikpuMOnxwn5xq8jBwJfA0bWenxDD4PJlqrY0WTGzIdhbeuiewrP07d
         qlFw==
X-Gm-Message-State: AOAM531QXlb7zdVesJvT5+0yH/IJWdJNNJkau3aKevH6dzXaCURo1Wjh
        pGQ2yLWcmZXmgNxETvoL8N2efhEJ5C6GNA==
X-Google-Smtp-Source: ABdhPJxEuXqr7x4iyj35D8dZS/g8HLKTsn1k/I7QIfJPLc3C7aTm8jXEWF05G1Q2LzoSD9+BCGi9mA==
X-Received: by 2002:a17:90a:fe89:: with SMTP id co9mr2334345pjb.83.1613128631779;
        Fri, 12 Feb 2021 03:17:11 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id h20sm5752662pfv.164.2021.02.12.03.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Feb 2021 03:17:11 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Daniel Palmer <daniel@0x0f.com>
Subject: [RFC PATCH 0/1] Potential binding MStar clk muxes.
Date:   Fri, 12 Feb 2021 20:16:48 +0900
Message-Id: <20210212111649.3251306-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

While getting this driver ready to send I realised the current
binding I have is pretty unwieldly. I'm thinking of refactoring
the driver to work like this binding desribes and would like
some feedback before I rework the driver.

Thanks,

Daniel

Daniel Palmer (1):
  dt-bindings: clk: Mstar msc313 clkgen mux

 .../clock/mstar,msc313-clkgen-mux.yaml        | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mstar,msc313-clkgen-mux.yaml

-- 
2.30.0.rc2

