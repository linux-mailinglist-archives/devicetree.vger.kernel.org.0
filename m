Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89A7A2F4F63
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 17:02:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726693AbhAMQBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 11:01:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727245AbhAMQBk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 11:01:40 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82C49C0617A2
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 08:01:00 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id m25so3469217lfc.11
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 08:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/ANy3EnVb9IcVEdVPhsOA09k5SvZnXI3pFEuGXmbm50=;
        b=c1pxpyWbQJe20ivyenYuC0y6Q17/Y4RY9UJUqXw9nMrCwO7yVkkZGT0qTY/lly9gjE
         hNa2T6yByVeiZo5/ZvD2xicR/4LBWn+cs+Lhw/dAO1lJUSakFp78gF5XTtbSd1aE49iS
         LEfU2Y/vYc40dtgiw2WCRTjgmA4NwHjXBfJO07lJTWu3Zs+zIi7qHXdzzT1/G81oQRu7
         m2/JA4xwoIWdkWlafIMu0XOjI+1iow0SSyC3dnfrSEHptX5PDUxsQJvr7r3Nd1kP6X+o
         SJCUgP9lzt81HDiDDYMVhSq2Az25H8iyAts1jwywv6sTOm30KWPMlpQGL0M6ZA/5h+FJ
         hyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/ANy3EnVb9IcVEdVPhsOA09k5SvZnXI3pFEuGXmbm50=;
        b=nsNg8qTi+pU+qJ35sggzVx26FZyGmFT01n3S35drUX90PvlB2QxTXyDE57PTegME/w
         4eWQofW7zWbqFiGdfUx9i2jBVcdDVJtt2FpOczGXDoT95V7LR6nsQAOfmVeVwRegBdk/
         g92yw/gLxGKStzURhs4cq6ebWsi/6skONv5dER2GX52Ohmyu7cQlXcjrHJC5Fx6Bvlbz
         NU9VzPDCv999pvNM65wWhDD49y/Iezl8qlDNT5eW0k2mtt49wLElFHp0J+tkg4STsH8K
         PdqZxuavBGxaGMMssIYE3EkIzYu9L/QrZ2VRq9nevRafxAA4he+Dz32CXKEGL/leIKcC
         G55g==
X-Gm-Message-State: AOAM533V4Y0GnCNfVjK3WtvBMPqYLrNzJRqzznAg1MxWs3eXVFnAN55s
        46huSCO/wls9hDtcc2YzQ0R1hw==
X-Google-Smtp-Source: ABdhPJzr7xv7uPwvJjnXkDimoBn/HMV/NKUGPVdgw6bbPBFkN8nK6lUh8dcyAXtf613fgxpASab2rg==
X-Received: by 2002:a19:6553:: with SMTP id c19mr1261458lfj.266.1610553657378;
        Wed, 13 Jan 2021 08:00:57 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.189])
        by smtp.gmail.com with ESMTPSA id m25sm248559lfb.144.2021.01.13.08.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 08:00:56 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add support for Qualcomm QCA639x chips family
Date:   Wed, 13 Jan 2021 19:00:51 +0300
Message-Id: <20210113160053.3974229-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm QCA639x is a family of WiFi + Bluetooth chips, with BT part
being controlled through the UART and WiFi being present on PCIe
bus. Both blocks share common power sources wich should be turned on
before either of devices can be probed. Declare common 'qca639x' driver
providing a power domain to be used by both BT and WiFi parts.

While it would be easy to just add power supplies to BT device tree
node, for WiFi it is not that easy. The chip has to be powered on before
the PCIe bus is probed (otherwise it will be left undetected). Adding
power supplies to the PCIe device nodes would require changes to the
host controller driver. Thus it is supposed to be simpler to provide
power domain via separate driver.

Changes since v1:
 - Moved the driver from drivers/mfd to drivers/misc
 - Fixed compatibility string in device binding
 - Removed debug messages


