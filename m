Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66C9B4365CE
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 17:17:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230283AbhJUPUA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 11:20:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230280AbhJUPUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 11:20:00 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED543C061348
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 08:17:43 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id j21so3045947lfe.0
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 08:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CtRyggFXcz/RI+RZSAJdFk1m/ZMHHugcxXkxvKPW+eg=;
        b=1qG4vDyIEQ/GiHT9Dihtt0I48ay0Jq/+nt45F0YctIhvvhQufvUitJXaEKil5bU+Dt
         7Lra4wO83C++jEi5A78olD8ZZWEmLxculPj35zh3t9gRGQiQNN51WIpZxZdKPSrFfVRE
         DYAryz9Db4P400gNNKUVn/sT7rd9SjxeMEc9Ei0FR83t7jhS4TIh++4/lm9u0dEPbVne
         rM/CR4Y/U9IcikiYTL4h8zYtkfDGS8MV2+E1DZ9EvZ/+rqR0fMgKLE0oFCWPq3MdPCog
         4YiZf5G+tNkOaQRIUgcmF46M2/g7QthZFwyTSjgI4yfY9e3G4X0mUiTHiezYrRwMgTFA
         xvhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CtRyggFXcz/RI+RZSAJdFk1m/ZMHHugcxXkxvKPW+eg=;
        b=WjpkBg54qrN0U1xLeGuuRUpXHzf+yJtgJ6+GQkRjtk4+dbP21VHXgLKLjJDRSjP96p
         trrIOsmxOLs5+jhPB3qffAUgf75cNqk9vGhB9wujn4NakjrS7QRHKppi9s9jqQTyHPQI
         i+oJLCdxBUsufamolj4mM4xbPQzCdGxSddsmuItduTzt6dOFRRkNcGAStlOcn1HrTsOZ
         T9tSrMv+1MBDi8DF64IYGfcnA/jJ3D8Za4hMn1Mz08s+J1V6lcCrYXc6LN32SNv7bfb0
         B/ICvgTX0bj0IqgULmYGitlJfsWZ7m7EKRNi2bEg52ik+SpnOG/pvrefGl8n0LLGwN+H
         VUBQ==
X-Gm-Message-State: AOAM5338y9jVMPAKWdsPciZ41dD/j67csRAahvqFDk97rEbLJQdNZ4Mr
        omQNZP6+6VJYpsZYwsAMPzwCXA==
X-Google-Smtp-Source: ABdhPJzNgwkkDcYkQqDEOGkiFxn/k0IglKMB0mXc7n/fXSmfIuyjyAuuDnQe9l9k9iouk+8WSIha1w==
X-Received: by 2002:a05:6512:3341:: with SMTP id y1mr5908152lfd.513.1634829462309;
        Thu, 21 Oct 2021 08:17:42 -0700 (PDT)
Received: from grasshopper.googchameleon.semihalf.net ([83.142.187.85])
        by smtp.gmail.com with ESMTPSA id bt10sm91113lfb.193.2021.10.21.08.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 08:17:41 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     arnd@arndb.de, olof@lixom.net, soc@kernel.org, robh+dt@kernel.org,
        dinguyen@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, upstream@semihalf.com,
        mw@semihalf.com, ka@semihalf.com, jam@semihalf.com,
        tn@semihalf.com, amstan@google.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v5 0/1] Add support for the Mercury+ AA1 module
Date:   Thu, 21 Oct 2021 17:17:35 +0200
Message-Id: <20211021151736.2096926-1-pan@semihalf.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The following patches add support for the Mercury+ AA1 with an
Arria 10 SoCFPGA.

This version is almost the same as v3, only difference is having
devicetree Makefile entries for arria10_* sorted.

v5:
* revert `move devicetree aliases to socfpga_arria10.dtsi`

v4:
* move devicetree aliases to socfpga_arria10.dtsi
* sort arria10 entries in arch/arm/boot/dts/Makefile

v3:
* replace i2c busno property with devicetree aliases
* reset controller patch added to Philipp Zabel's tree

v2:
* remove spi flash node
* rename memory and mdio nodes
* add gpio nodes
* add busno property to designware i2c driver

Paweł Anikiel (1):
  dts: socfpga: Add Mercury+ AA1 devicetree

 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/socfpga_arria10_mercury_aa1.dts  | 112 ++++++++++++++++++
 2 files changed, 113 insertions(+)
 create mode 100644 arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dts

-- 
2.25.1

