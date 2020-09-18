Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AD0A2706F7
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 22:24:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726421AbgIRUX4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 16:23:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726174AbgIRUXz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 16:23:55 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC7A3C0613CF
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 13:23:54 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id l126so4157880pfd.5
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 13:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a0WzdzmvXqBL6C78B+KfrEF7AYTF4BXuovwhhy80AIc=;
        b=wxLFywGKKhY1DXT0vLBHQ5770kVzTJAE75BSj5s7gyB1wAHZ3AA6RSEUiVYOmkyKU8
         oDUoMr41cxzYTeg7tArApWIRPcyV0N4mElb0vGGIEwESdhS0v220oFmi57Pq0L8nONPE
         JOf3sRO/CDsbTWAGFPrDtza9Evghcgt9bl0oD9jNqk1ZKgvzqXdm+LiBe1di/2XsnDUp
         7D7gKoaamFTDeGDtrQYtn+K3m6zAfPziUfY3UApw1m3SNLLuM76Fh8iojfevryo86k2D
         zrFwgmNAJrvElTOtUgHgIZCV8HipXdqRLmVL3WixFifYNE9AzQwYOYAxPeNU9k3ydpQf
         OtxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a0WzdzmvXqBL6C78B+KfrEF7AYTF4BXuovwhhy80AIc=;
        b=jKCPPIFenmcifs/d50CGuZGvReVeVGHCrZQyav6P/8eE+SrfnHOcKdvbW3hxbxFvHt
         Wo0VRdYWtz7istGSWw8qpt051iIT12zxIfmvPfpo7xC38ivOUZ47bNzTGK540JAxL7cw
         aP487WsN2yvFD8Kf5v5XqO2EHj/NW1A5Z9KNzwZUbtVXm3Ps569z/hfI09ARDxq0ZtNP
         5AhsIEzdSGANtnWugEhHERs5Rg6O3LwpQgYoRmgdgSy9AeXzgJzN6wC4GWW6W53xlxmj
         s/cNR2N1bzbBA8Vpyq8NqkYCd1eU8eP3UgKJW11cNSjrjmT3dOvUIbmTSFoIzGvwSpN/
         Iu1w==
X-Gm-Message-State: AOAM5327VxLPmGqAMP+8QjfSpr1eU7duI+Q/SzcbN5b0YYBfy5q/u46a
        pwqGcB2hNm8nylxLSmLby5+H6Q==
X-Google-Smtp-Source: ABdhPJzF4bHwe4qeJ4MffdzGNuPNPMggDeTVQlEXQR1Xvp4iBoIFzuNV1j2NbGmzZ/0cvzqzflbEUw==
X-Received: by 2002:a63:4656:: with SMTP id v22mr11946668pgk.116.1600460634155;
        Fri, 18 Sep 2020 13:23:54 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id i1sm4208050pfk.21.2020.09.18.13.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 13:23:53 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: vim3l: remove sound card definition
Date:   Fri, 18 Sep 2020 13:23:52 -0700
Message-Id: <160046062721.27609.4386781014145624881.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200828154435.419561-1-jbrunet@baylibre.com>
References: <20200828154435.419561-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 28 Aug 2020 17:44:35 +0200, Jerome Brunet wrote:
> The sound card definition should have been removed when the common
> definition was added to the vim3 dtsi but this slips through.
> Remove it now.

Applied, thanks!

[1/1] arm64: dts: meson: vim3l: remove sound card definition
      (no commit info)

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>
