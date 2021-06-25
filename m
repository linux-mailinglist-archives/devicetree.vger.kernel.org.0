Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A4EE3B41E3
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 12:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231491AbhFYKu4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 06:50:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229956AbhFYKuy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 06:50:54 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 485EEC061574
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:48:33 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id ot9so13412482ejb.8
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 03:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WhOkJFhhcMCvG9eYnyjt7CnrRL/VDkD60CmDg5qW9qQ=;
        b=0UOZv1kJg5OVullQOL/2z7Z2f91Sa20xr6rC7Lkvxvlo/C7InWl5L25Kxu2zj5XNke
         JMAMjVznn//p0Cm45UOElhVW9+dtglXXFQ+jNYIJP2EZ0RW6joK6LkkHRTlUCtI35iVU
         Zmk+E3VO9roL5Du9cMY1OviNp77QIQy+fAiHZw5SzsbzjXN01yFqF2T1oZIm3Qmgqu++
         UT5Z5Xm0nioJhJuIMRRxu38V45s8D+BR3kb3GvMuXD7wpM9tzXWvOEio8PnQ3nQjUCXU
         eNf49OgRWCAMG0iaIek4l5NTtGwW/DQHbwafUJPaDu/G3eL8OuLy1YR9pV4OLWbjEZfS
         HfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=WhOkJFhhcMCvG9eYnyjt7CnrRL/VDkD60CmDg5qW9qQ=;
        b=tB62/50EW6nd1NyR+JyTnEHQWGVVxNQioux/hB7S0PkEO1kc1QEeejpVQUbTZmWSUW
         e5x6OVAxQ3uMXLmei7x+aXwsRTGQ886Z4318fyOzl2Hv1k3lMYuXIVxsKwSL2Dyw/uyw
         SNHcxTOWislp3PSXqoQAb2QKr9TuXy/T7BD/Ao9MS7cUl8pi1WFWrjaC+8nxiEu541Bn
         WY1/UuyCebX36Cy3vA1tuPsJyI/SnVANw+cYPzNnmyImqV3mfQXiQSIvd3dVMi1I9Vux
         10EYQWTveU09XHzTve6vA+rmt76eAVtVfWPYFBj3xVf4XOYxON7R/hdKf4ptye32x+tz
         8+gw==
X-Gm-Message-State: AOAM531S0V+8VY+kw+bFVfgg7Hh1aRH1n3BI3pogmre5jPs7HEduC9jh
        mNZv7TsWRZLmfmtkXz1o1IpqxA==
X-Google-Smtp-Source: ABdhPJyWv17CkFrPZyhAwT2UtrVpT95SIEZDss7AqBVx48NZh0LsFkNBBAX6d1Z6H81W1kERmmJl9w==
X-Received: by 2002:a17:906:3c56:: with SMTP id i22mr10280007ejg.369.1624618111901;
        Fri, 25 Jun 2021 03:48:31 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::f9e])
        by smtp.gmail.com with ESMTPSA id p17sm3653387eds.92.2021.06.25.03.48.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 25 Jun 2021 03:48:31 -0700 (PDT)
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
Subject: [PATCH v3 0/2] PCI: xilinx-nwl: Add clock handling
Date:   Fri, 25 Jun 2021 12:48:21 +0200
Message-Id: <cover.1624618100.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this small series add support for enabling PCIe reference clock by driver.

Thanks,
Michal

Changes in v3:
- use PCIe instead of pcie
- add stable cc
- update commit message - reported by Krzysztof

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

