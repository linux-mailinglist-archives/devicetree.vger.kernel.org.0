Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1283827072F
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 22:40:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726252AbgIRUj7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 16:39:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726218AbgIRUj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 16:39:59 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79AB3C0613CF
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 13:39:59 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id x18so3590898pll.6
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 13:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7AneX3Q6t9WnVcMWg3z8DFQA8bgEvGwpeuWE77g6/FQ=;
        b=E4qKAGZaO0N1RaSvlxcy0M2gkjiUws0KeGww0wt94xT8okM+bO5at02o4hbHtGicp/
         1kghus1KDRJvmh7+OXI0eXr1mPlL3l19ovwWEEZsP4aL81XuS2SQIJrRJ5RmjOr4umwL
         Ixp0S0vYX0oMNfhY3hXjUDz+KGUr2R70Z8J/zhOFOF15+6z2Pjbn0Lwb8vizESYfRiYY
         yZyDJouBXPmDZ05u5LMb3C3vSEIhoJMdFK2ZtmIhWVjtV+qKcxU9cOhHQg8faCc0a/3D
         r2jvPXuQFMheuZ6qma+Vc7w4aJMt/ampCp6XINorY67gF8ajSADtN4ODVoe/lfHCFFC4
         9sfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7AneX3Q6t9WnVcMWg3z8DFQA8bgEvGwpeuWE77g6/FQ=;
        b=igJmn4PTKAoYseT3BbOx2ZElOEvnzUncTYcTrXLJOVPrYrVUD35pIbf7muKZt1hBp8
         kcjYyPzUr8rel+NrOQXVx1bUzUZJmNCeIJd6+YnCsSetFSnQM2aD4WEO4Yj+QfdK0q6b
         +LVJecFFXO0O5bCFNwaGFsxHmYkKopIOT1WUXADjRNLKYBTakXROuc8Azi5+fIe1crdo
         P9s6o044lYmib5urJ44ufOEykj/rDf73PCVGuRXiGAZg+wJOzShlERPbiiBia49NpUVu
         RxIRzZ7/Bi6LLePifzbpGMjLVb8ohSdTogmM1YSTTE/BVFhpphNTqdtYLdnU3Cr36wTA
         73bA==
X-Gm-Message-State: AOAM532Bprb3ggPXlV4YaUqxCVJeLs3ijPeB+JcFRn5tknKTXCGJ07z5
        BWS/LB9j394vksHmdknIftJhJg==
X-Google-Smtp-Source: ABdhPJz8hk0ivJdLpk6wnP0zzcjbIGe9NnuofGDnq+q1egBRoYW2uCgOtoPsSPkLfDc+AvYJ4ZVyQQ==
X-Received: by 2002:a17:90a:4802:: with SMTP id a2mr14094057pjh.5.1600461597809;
        Fri, 18 Sep 2020 13:39:57 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id k7sm3687272pjs.9.2020.09.18.13.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 13:39:57 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: meson: add aml-s905x-cc v2 support
Date:   Fri, 18 Sep 2020 13:39:55 -0700
Message-Id: <160046158476.39596.11410761986578760376.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200915141921.57258-1-jbrunet@baylibre.com>
References: <20200915141921.57258-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Sep 2020 16:19:19 +0200, Jerome Brunet wrote:
> This patchset adds initial support for the libretech aml-s905x-cc v2.
> 
> Jerome Brunet (2):
>   dt-bindings: arm: amlogic: add support for libretch s905x cc v2
>   arm64: dts: meson: initial support for aml-s905x-cc v2
> 
>  .../devicetree/bindings/arm/amlogic.yaml      |   1 +
>  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>  .../meson-gxl-s905x-libretech-cc-v2.dts       | 318 ++++++++++++++++++
>  3 files changed, 320 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts

Applied, thanks!

[1/2] dt-bindings: arm: amlogic: add support for libretch s905x cc v2
      commit: 0748c77fc8dc6bb20f9af395872ea35d8ac85998
[2/2] arm64: dts: meson: initial support for aml-s905x-cc v2
      commit: 63fafc5a046b1e21756de691b48f0c70c25e1426

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
