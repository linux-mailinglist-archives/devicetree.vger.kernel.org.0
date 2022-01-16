Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E132C48FEFF
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 22:16:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233721AbiAPVP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jan 2022 16:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbiAPVP7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jan 2022 16:15:59 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA83FC061574
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 13:15:58 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id v123so16507861wme.2
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 13:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:organization
         :content-transfer-encoding;
        bh=3QZ0N7OQ7WTbnu80qig6uAdTcqYmEl53ggaPSmqUeaw=;
        b=c1jnt9LObMrUYLGaIhqskWoP9sKHKhO+e8vAdgCBxcr97/HMrV89Ugr+xKinTUWW1Q
         aCMIV/0vOiwwwff9ehBOKeh8tnDDIfON/NnPuT/qfWlsWq7iLzgzwN2oBVQpNUmju8n9
         3+MJR/VpDIDJhgL4RcqZ9BC/Hx/Oo1jR/ha2DUZcIuisH5Lc2vhUWSCZbP2TDlFhRpPX
         6B2rWuopCf53HxJNRwMxq0zA5+fJpjnOGopmEmBON88zrY7I6R1qQhC8x4kVGk+DjoX3
         hifRlONifozSxXYF5cK/0Eez/TDiqtSKK+outWw8wDgmQin01ZM3pQLKfFxzjr2qpsfm
         a9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :organization:content-transfer-encoding;
        bh=3QZ0N7OQ7WTbnu80qig6uAdTcqYmEl53ggaPSmqUeaw=;
        b=cB3Ro8MWl6VmSlBNR6IahCKp0BvOyyewLV7zz4iDzcWNDCd9iu6JFTeU7MMG6BINbm
         +BXICjtlW5KVaBiwe1wXEy+wCVHqaMOmmCBm3opF/hwjie2wyWXiPTuTfNYBoLBdllnS
         BDawvHD8/cjcW+dHw8JPeCV+DR3ZYcPLU2vaeBjJMa7yeF+kEHwW+2yGmO49i0/tElGC
         cfImKUik53uN1zwskJFIyU4iRVnBWtVcb3l71fZVNcSrdIi/ekLwkWmZeMtGDzBdALI1
         nTNh5ULnpV9scf4Py6s8+UeG6UpfnFmPklcHmkJKF9eaHBfxtuZiQ5ceOFdgOUXbhW7T
         Mkrw==
X-Gm-Message-State: AOAM533qVgjuYVtil73DZX+Z8ec7hItDE0ZqLeuNsRXDcWN5j3tIRW3d
        HXv/TOpqbFJaPsLyy91LVqAL+A==
X-Google-Smtp-Source: ABdhPJzD1oP97IbwHbToBOTUMnI4ANtJ7cxAwXpeh+t2rnuTEo90nJq02h/TMXpn06Ykp+q1yuQe/Q==
X-Received: by 2002:a1c:f70d:: with SMTP id v13mr17481238wmh.133.1642367757045;
        Sun, 16 Jan 2022 13:15:57 -0800 (PST)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id l12sm8820445wrz.15.2022.01.16.13.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jan 2022 13:15:56 -0800 (PST)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     madalin.bucur@nxp.com, robh+dt@kernel.org, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: [PATCH net 0/4] net/fsl: xgmac_mdio: Add workaround for erratum A-009885
Date:   Sun, 16 Jan 2022 22:15:25 +0100
Message-Id: <20220116211529.25604-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The individual messages mostly speak for themselves.

It is very possible that there are more chips out there that are
impacted by this, but I only have access to the errata document for
the T1024 family, so I've limited the DT changes to the exact FMan
version used in that device. Hopefully someone from NXP can supply a
follow-up if need be.

The final commit is an unrelated fix that was brought to my attention
by sparse.

Tobias Waldekranz (4):
  net/fsl: xgmac_mdio: Add workaround for erratum A-009885
  dt-bindings: net: Document fsl,erratum-a009885
  powerpc/fsl/dts: Enable WA for erratum A-009885 on fman3l MDIO buses
  net/fsl: xgmac_mdio: Fix incorrect iounmap when removing module

 .../devicetree/bindings/net/fsl-fman.txt      |  9 ++++++
 arch/powerpc/boot/dts/fsl/qoriq-fman3l-0.dtsi |  2 ++
 drivers/net/ethernet/freescale/xgmac_mdio.c   | 28 ++++++++++++++-----
 3 files changed, 32 insertions(+), 7 deletions(-)

-- 
2.25.1

