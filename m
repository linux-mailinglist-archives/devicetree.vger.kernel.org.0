Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6925C34A5F7
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 11:58:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbhCZK5t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 06:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230095AbhCZK5d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 06:57:33 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50466C0613B1
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 03:57:33 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id f26so6848042ljp.8
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 03:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version:organization
         :content-transfer-encoding;
        bh=Jf8FZdbyjNU6eaBlE9QftKSE9jOzdF0f4sdvULOmE+w=;
        b=e0KfUMb4WXOAtiV7DVd8eRGTQ0gz8uyRIe24jwbIjFWaEOPUb6v+wPlUiUZPsbofR6
         U3+Ybi/+8uavks8P5zjM62FhBXZbu0OjLCRIHq+jdsmfoEuc1CRdyFo0tuNLncfZERlu
         uwICO8FdtmHHfm5lJ2A9GiRcHZL2d0VoGPHo1W/OBNSjWiYPMYtgXUh7TF0KrsJ4cews
         89lYxUv0OWygJr+48mvyb8yq3zixhHTig1kg7D5QGIFmKoHFByZ26GsZxoo5gUG2/X0T
         Z2LyNc+cfe9VxCDhqI86pknSTLwyAm54ULAMTVq+zXSSl3xLr8UOTQFT4PudgDnSeDwr
         VpWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :organization:content-transfer-encoding;
        bh=Jf8FZdbyjNU6eaBlE9QftKSE9jOzdF0f4sdvULOmE+w=;
        b=aPcuQlSaAL8THdV+rNHE055+3tkCs/nFihSMxbsPEc3zmqCIq30My+SvBSVOfW6XFW
         wXI93PBMQWRzgT5/lJnzyZQ+Cc3Km8b5DnYoWwoL60CVmF6CVZaQbyhOJCs+GXYZ0+3C
         NkTD/YTs6cle90eDF9e1ngSsVCpB8Zl23byxKUsVQMNxvYlJJ/4lXqLh0SR9WEl0D5xk
         Ui3h1i3JiU9juX2x9KqHA962gJuYfqwpMdBpbIQvIrwzyGWu++1w7tMKPhQ60qYYpMNG
         +4rEilTgYg22oh3xxv9aPaw6VkebLnxASIIH4nN/fA4HVbf11wnkOAIchVY+1zUcAAJu
         XYdA==
X-Gm-Message-State: AOAM531rZGFp8gp1Wgmb/wPHpM+d/BLMwpw8u2F/VOC4zGDK/uMn8Sy/
        qBhmGDDaPyyoR/ZNCx+YXplsBw==
X-Google-Smtp-Source: ABdhPJxcm6ZT6IJ3F4EkFhG30WnEG4heMfwZ4A6m7KgipfMXp6M4XuZBnNIbQokEVJyYSwpwELCvNQ==
X-Received: by 2002:a2e:6e1a:: with SMTP id j26mr8656206ljc.171.1616756251748;
        Fri, 26 Mar 2021 03:57:31 -0700 (PDT)
Received: from veiron.westermo.com (static-193-12-47-89.cust.tele2.se. [193.12.47.89])
        by smtp.gmail.com with ESMTPSA id n23sm832629lfq.121.2021.03.26.03.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 03:57:31 -0700 (PDT)
From:   Tobias Waldekranz <tobias@waldekranz.com>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     andrew@lunn.ch, vivien.didelot@gmail.com, f.fainelli@gmail.com,
        olteanv@gmail.com, netdev@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH net-next 0/3] net: dsa: Allow default tag protocol to be overridden from DT
Date:   Fri, 26 Mar 2021 11:56:45 +0100
Message-Id: <20210326105648.2492411-1-tobias@waldekranz.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Westermo
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is logically the v2 of this patch:
https://lore.kernel.org/netdev/20210323102326.3677940-1-tobias@waldekranz.com/

In addition to the mv88e6xxx support to dynamically change the
protocol, it is now possible to override the protocol from the device
tree. This means that when a board vendor finds an incompatibility,
they can specify a working protocol in the DT, and users will not have
to worry about it.

Some background information:

In a system using an NXP T1023 SoC connected to a 6390X switch, we
noticed that TO_CPU frames where not reaching the CPU. This only
happened on hardware port 8. Looking at the DSA master interface
(dpaa-ethernet) we could see that an Rx error counter was bumped at
the same rate. The logs indicated a parser error.

It just so happens that a TO_CPU coming in on device 0, port 8, will
result in the first two bytes of the DSA tag being one of:

00 40
00 44
00 46

My guess was that since these values looked like 802.3 length fields,
the controller's parser would signal an error if the frame length did
not match what was in the header.

This was later confirmed using two different workarounds provided by
Vladimir. Unfortunately these either bypass or ignore the hardware
parser and thus robs working combinations of the ability to do RSS and
other nifty things. It was therefore decided to go with the option of
a DT override.

Tobias Waldekranz (3):
  net: dsa: mv88e6xxx: Allow dynamic reconfiguration of tag protocol
  net: dsa: Allow default tag protocol to be overridden from DT
  dt-bindings: net: dsa: Document dsa,tag-protocol property

 .../devicetree/bindings/net/dsa/dsa.yaml      |  7 ++
 drivers/net/dsa/mv88e6xxx/chip.c              | 41 +++++++-
 drivers/net/dsa/mv88e6xxx/chip.h              |  3 +
 include/net/dsa.h                             |  5 +
 net/dsa/dsa2.c                                | 95 +++++++++++++++----
 5 files changed, 132 insertions(+), 19 deletions(-)

-- 
2.25.1

