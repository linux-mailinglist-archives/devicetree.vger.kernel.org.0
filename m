Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B8C92F3A7C
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 20:30:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436860AbhALT3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 14:29:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436806AbhALT3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 14:29:16 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A47AC061786
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 11:28:36 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id n4so6441025iow.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 11:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rORmSbbkYnjOXkXNHImy1jyycuqSzJytw/vpKnRFSJg=;
        b=mNExTS/FTOiWSa8KoCoP3uBJD/5ud8gqdVcmD0xgMuWzccWWeb2h3Pz4Mg3aD89kDD
         9Jw3VCf557djRjGv9ZDBn/h0s9o1xgF5BHWYn/9lJ2sHC5zKttBWGQVTPLPqJMvaMl/P
         lrGsLzXBSVwS8rAwIICjlLwIoOF2mBtFMifZO+zwY2ui/mTY516DDSoRm+smh6w4e+U6
         EAQBN/uMwTTVhhl33t42aJqWTIGRlLRxJwfpSIvaadNQ+EX9qYcmHPuVaiiePOpdx/BG
         VVuUq5uJVjyUzOlgbLfXcbENnktgi2IRBzQnHGN2BD2W9zKvjypBU2lnem4u2FysSY/C
         BEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rORmSbbkYnjOXkXNHImy1jyycuqSzJytw/vpKnRFSJg=;
        b=R5Z4SEcYJ6pKRokNi+BCIVtaKAijxcaSwORJulfRjB8M/mybrycb189P2WourPNQ2H
         2Qx1M4KKoV2LIpTpXbef6UAofOWBAQjlJ6MWdD3lrNrXoN9zkoZ364W+2zR4hxZmdQpi
         91R1ARyClprMzMYrtz3EwfmE/VFd3KjednCQshIek1a4jHIm7+6Ihbg77SqwhJV1Louo
         M6x2F+0VTBO4lsLHUhW/Ee3m7o7k3nAjlZI9RDXVsw7E7/7IjK5LY56xBmcZUFptndpA
         U5GfG2KkUYN0QBxBuO+rYjTjXPmcJf3osa7Tytt1lleCB4Vm0H+miVXNX7o4LyfJExCa
         MyTQ==
X-Gm-Message-State: AOAM533fBB8/vUn9ibzLbnCKmL76LYCeXFKeKj1zMPtVcnTbc6b4vHJ/
        KGTcugGJD9dgnrqDpVDkzcQKPQ==
X-Google-Smtp-Source: ABdhPJwT728+imi1D00jobtxvkaOFQzQrtxH4DZe5bRoZCJPodzo0tTYcW5GLeHvdd9JHHog7v5W5w==
X-Received: by 2002:a92:5e1c:: with SMTP id s28mr611905ilb.86.1610479715663;
        Tue, 12 Jan 2021 11:28:35 -0800 (PST)
Received: from beast.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id q5sm3191892ilg.62.2021.01.12.11.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 11:28:35 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     evgreen@chromium.org, bjorn.andersson@linaro.org,
        cpratapa@codeaurora.org, subashab@codeaurora.org,
        robh+dt@kernel.org, rdunlap@infradead.org, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH net-next 0/4] net: ipa: remove a build dependency
Date:   Tue, 12 Jan 2021 13:28:27 -0600
Message-Id: <20210112192831.686-1-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Unlike the original (temporary) IPA notification mechanism, the
generic remoteproc SSR notification code does not require the IPA
driver to maintain a pointer to the modem subsystem remoteproc
structure.

The IPA driver was converted to use the newer SSR notifiers, but the
specification and use of a phandle for the modem subsystem was never
removed.

This series removes the lookup of the remoteproc pointer, and that
removes the need for the modem DT property.  It also removes the
reference to the "modem-remoteproc" property from the DT binding,
and from the DT files that specified them.

David/Jakub, please take these all through net-next if they are
acceptable to you, once Rob has acked the binding and DT patches.

Thanks.

					-Alex

Alex Elder (4):
  net: ipa: remove a remoteproc dependency
  dt-bindings: net: remove modem-remoteproc property
  arm64: dts: qcom: sc7180: kill IPA modem-remoteproc property
  arm64: dts: qcom: sdm845: kill IPA modem-remoteproc property

 .../devicetree/bindings/net/qcom,ipa.yaml     | 13 +------
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  2 -
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  2 -
 drivers/net/ipa/ipa.h                         |  2 -
 drivers/net/ipa/ipa_main.c                    | 38 +------------------
 5 files changed, 4 insertions(+), 53 deletions(-)

-- 
2.20.1

