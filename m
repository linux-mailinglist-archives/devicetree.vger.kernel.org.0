Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98C9A3B1B04
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 15:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbhFWNZx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 09:25:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231168AbhFWNZw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 09:25:52 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E7E0C061574
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 06:23:33 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id r7so3415805edv.12
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 06:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=icz3yVZaBKoKX5vfFzNoQ1deA5c6HrQTyBzJ3S/dmpU=;
        b=Nd8BGvHG4fkZSwrvHa0V54ds3E7zPyQ5lfq56LFsxQUsJR+m+XtJRBJVEEMNKehrjQ
         dHlHp8TgEwSXX0e/IpLjB2csGXnZ+bvWy8R2VIldz/oaoebFRfRLHIBxzJF0VybbrgWw
         POWSTxS2tTDWN25hCnLhwb7bDHhY+VznvfubBIdwh/dWK7CCXdGelLyQxRM6XjlyOAbb
         0t9u53ys5llAj527SRTdmk0wd/hp3tVipUTRXyVLHsRFcU3Jy2WlUvZDtUup/86qFvm9
         iyyUzk3MdplNg4FbpcpTVqb0skmLm8ZucI0+NXcgLhkWakVwvBdotHfNL8iXAWHYJbFA
         uznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=icz3yVZaBKoKX5vfFzNoQ1deA5c6HrQTyBzJ3S/dmpU=;
        b=WdWtDyux58k+OvSX50Sy7nbEZB+C2HtOz/KFhHKOW/sHPZ4W2cz7u9hjF7qZw+oRJV
         2ss7hi4lsAhTIglPuzSX9FhFjUrBiO+5mb2mCHglFBH2B8PhQd5e3T4KF2CLivsfpa1W
         qrGgYHjA/SuTtc4Di14Gnt9ezGFY1gyDMphO6eQHxUZCoGf9KXzEMWfuLKNQzmv5iz5L
         OTljEm3ZFLRlWrFzaTN5HDnxQFQhFlXR9ZVHqUDoRXhoNHqlHvvVYQO0ycru0k+ee7S/
         Go7AdsNzHPzGul8MvQOekATLf0NBmgNWlXzsMUClrHVUWy100pB9Fllws1Q0gIDs9l9u
         oiog==
X-Gm-Message-State: AOAM533sPfzOzY9xs62PzNIYqeAuxCFTfjyJLjkWstZD48/AwkJn7cAO
        V2ESUC07Bn8l2XbuKaQULtcdDA==
X-Google-Smtp-Source: ABdhPJyhXeGkzrD7cnNNDLRAfHQBWl7KLjfXWEQOkdCJPTp+0+bGmwSyem9kK6cjSI+v6rQFtDRwmA==
X-Received: by 2002:a05:6402:53:: with SMTP id f19mr12470179edu.200.1624454612307;
        Wed, 23 Jun 2021 06:23:32 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id b24sm1814916ejl.61.2021.06.23.06.23.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Jun 2021 06:23:31 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        bharat.kumar.gogada@xilinx.com, kw@linux.com
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Ravi Kiran Gummaluri <rgummal@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org
Subject: [PATCH v2 0/2] PCI: xilinx-nwl: Add clock handling
Date:   Wed, 23 Jun 2021 15:23:28 +0200
Message-Id: <cover.1624454607.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this small series add support for enabling pcie reference clock by driver.

Thanks,
Michal

Changes in v2:
- new patch in this series because I found that it has never been sent
- Update commit message - reported by Krzysztof
- Check return value from clk_prepare_enable() - reported by Krzysztof

Hyun Kwon (1):
  PCI: xilinx-nwl: Enable the clock through CCF

Michal Simek (1):
  dt-bindings: pci: xilinx-nwl: Document optional clock property

 .../devicetree/bindings/pci/xilinx-nwl-pcie.txt      |  1 +
 drivers/pci/controller/pcie-xilinx-nwl.c             | 12 ++++++++++++
 2 files changed, 13 insertions(+)

-- 
2.32.0

