Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5417B35A7FE
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 22:40:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234187AbhDIUku (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 16:40:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234392AbhDIUkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 16:40:42 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83FBCC061765
        for <devicetree@vger.kernel.org>; Fri,  9 Apr 2021 13:40:28 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id e8so7246246iok.5
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 13:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kyEt1ksQ+JQPinifGRtvPHx9UK2YlW1JCIGqjukG2tI=;
        b=sHcIVLC1w2ibtu6NZ4brRofUXy78o2puktCiOlwg1UnwtL+5Tm1Rs7FG437vw3GC7I
         EUW/0JhXaoJ0TRTKWtR755vpYm0R4X2pOY3m0BRusCprKfIT/11h2wV7dft86cobpKWx
         V49I6nK189ua/IfhV4svmkVq7OvVAoDF0jWXY5focgnugz4Al8e3tCDwxwGF0NPt8zND
         p6WVsIFUWN2uu+HlSeM8xPuQXCnu64d8yxoMx4JRDs+CzrBSGF3TqAB1cLonPUtNCBfN
         Z7Fsg5AHMaS7V0bZyer7Dh1jwrlHX0jRtUuK1Fv+0Xww2uEv6+lqqLOBKHOBAzjdl3SA
         AJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kyEt1ksQ+JQPinifGRtvPHx9UK2YlW1JCIGqjukG2tI=;
        b=Q8oiJMV2C4w6oGPXz5Xrdes/T/Ad1bpze3O1zeOPwM4xfKhc5NjV2MG7Hl9gd+ljmd
         I2qc3h6imW+ZIy89JxYSGd2oEfCVfZl3Pljy3THx2WPqbRx9esGoR3A1f/y98UVXwloI
         gxSrGrOp3N65xvOiPyCrGpYM/t5FTv+P6V/pHtkGlhHubuGX3XURf3uUAJMUe+kQ5g4p
         +mBTXwYzv1GW82DC9Z3OQoZgAQhngs6X6gLKtesvGBf5dxnDHQKE10XwpR0nY9jrO+xO
         Pyjf/BLGL/d6Hvqu5s3XS+i0ieoNRxHQtLNGTuoEo2aMAdin5YH9wRyb1v+D9VHcvxK9
         xZqQ==
X-Gm-Message-State: AOAM530fIJsVcYF3oQDx6YyYXQb6LBSeeE6pOmMwIwUGjsb9NSiBlnF+
        pyD+bXsV5oaGr4xrl9RPb5P0/g==
X-Google-Smtp-Source: ABdhPJxJv6/aw1y/Gn66AfvT3KOZbNbU1Cs4ktQd8VlYobTFNdQkkc1IUELXGGpZDNKaAS3rUtTwlw==
X-Received: by 2002:a6b:500c:: with SMTP id e12mr12277326iob.190.1618000827805;
        Fri, 09 Apr 2021 13:40:27 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id b9sm1667212ilc.28.2021.04.09.13.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 13:40:27 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        elder@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH net-next 0/4] net: ipa: support two more platforms
Date:   Fri,  9 Apr 2021 15:40:20 -0500
Message-Id: <20210409204024.1255938-1-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds IPA support for two more Qualcomm SoCs.

The first patch updates the DT binding to add compatible strings.

The second temporarily disables checksum offload support for IPA
version 4.5 and above.  Changes are required to the RMNet driver
to support the "inline" checksum offload used for IPA v4.5+, and
once those are present this capability will be enabled for IPA.

The third and fourth patches add configuration data for IPA versions
4.5 (used for the SDX55 SoC) and 4.11 (used for the SD7280 SoC).

					-Alex

Alex Elder (4):
  dt-bindings: net: qcom,ipa: add some compatible strings
  net: ipa: disable checksum offload for IPA v4.5+
  net: ipa: add IPA v4.5 configuration data
  net: ipa: add IPA v4.11 configuration data

 .../devicetree/bindings/net/qcom,ipa.yaml     |   6 +-
 drivers/net/ipa/Makefile                      |   3 +-
 drivers/net/ipa/ipa_data-v4.11.c              | 382 +++++++++++++++
 drivers/net/ipa/ipa_data-v4.5.c               | 437 ++++++++++++++++++
 drivers/net/ipa/ipa_data.h                    |   2 +
 drivers/net/ipa/ipa_endpoint.c                |  16 +
 drivers/net/ipa/ipa_main.c                    |   8 +
 drivers/net/ipa/ipa_mem.h                     |   6 +-
 8 files changed, 855 insertions(+), 5 deletions(-)
 create mode 100644 drivers/net/ipa/ipa_data-v4.11.c
 create mode 100644 drivers/net/ipa/ipa_data-v4.5.c

-- 
2.27.0

