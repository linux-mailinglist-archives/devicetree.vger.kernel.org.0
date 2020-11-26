Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52A442C552F
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 14:26:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389784AbgKZNZL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 08:25:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389756AbgKZNZK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 08:25:10 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67C3AC0613D4
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 05:25:10 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id r22so2266983edw.6
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 05:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V9ZHaFKKBeckNSWoLOmLErLJJKCJkg2AhOu6rYTvYf4=;
        b=aJ0a/EFDWsuwakDG8ZwjFKkKT1COTMwtWrZGPTk1xnJ1PL04J0HeYF1zsOuDZGZyxo
         5zgV6/XZqZ1o9snsENEukUsMLMZyHbUrn/myrgt1IyHigwHt+34seKf7+LfWf9pTNay6
         64ozu6w076ifcoZBrQDAVJpgg1YG3s/RLCcCsPb/MkFJxhGBkH5XsDL6HRvMnlFhLIZ4
         U735GNTTEgHIjTMH3HKpTlGTaadx0esMn6KEFGPL5f6Uh43YwKWYepdaODAJG72ASooa
         b8y7m+z0De2GnUShLd8GqYO1wQ5rCTrssXdZ1G9uiOSc1ipxqFqgt+c4tdR+q0QsPOTK
         Nibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=V9ZHaFKKBeckNSWoLOmLErLJJKCJkg2AhOu6rYTvYf4=;
        b=mkDpuOFHLu58ew2hfmjYCdKPqOC+PQCsfbSZiQz1GX3JR990wCvQPSnqxLqNZPZZCK
         d2buL73bfRisPZ3k2Fo4kJzznR/ScOwDBztBdRzotlIFLMpELhTubQfm2iRDAfjq8+/G
         uBqOBDFZ7cO+mtQuquRMPXMovAMJhvn4bXGdxf++9ERBRLyzw8moxRzsbQfOBdoYcJDp
         Bs/1r9CW8/TBbrk0qgwoUTMEGjCotMm8MdAYq7vitS6Tp0fJaezsZ7veIatji/g8ZpwZ
         arFuJSZTIjKWjMpOeq8KM1QmoDGgxpLyfAY/+Vsz45bgRsoKnSaF4TMZ9RDhCDul4LzH
         VWWA==
X-Gm-Message-State: AOAM532pGeSD17dEAwJL3e/tLxwz/iHvvnt0Qhngb2pjcewc9M4uiVOZ
        lYFJnOtTqKmVOR5MVXQhdaSGBA==
X-Google-Smtp-Source: ABdhPJxsTi/MID2ZG+lKAhTCJs9QPJ1yBGV+4AL1pUay95bfu6u0etQ3/E+4qaaKb17rSwdt1XICIA==
X-Received: by 2002:a05:6402:1a22:: with SMTP id be2mr2624155edb.102.1606397109122;
        Thu, 26 Nov 2020 05:25:09 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id d1sm3196262edd.59.2020.11.26.05.25.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Nov 2020 05:25:08 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] ARM: zynq: Update DTs based on the latest YAML checking
Date:   Thu, 26 Nov 2020 14:24:59 +0100
Message-Id: <cover.1606397101.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

several issues have been reported from binding check. The series is
addressing most of them.
Patches are based on
https://github.com/Xilinx/linux-xlnx/tree/zynq/dt

Thanks,
Michal


Michal Simek (5):
  ARM: zynq: Fix compatible string for adi,adxl345 chip
  ARM: zynq: Rename bus to be align with simple-bus yaml
  ARM: zynq: Fix leds subnode name for zc702/zybo-z7
  ARM: zynq: Fix OCM mapping to be aligned with binding on zc702
  ARM: zynq: Convert at25 binding to new description on zc770-xm013

 arch/arm/boot/dts/zynq-7000.dtsi         | 2 +-
 arch/arm/boot/dts/zynq-zc702.dts         | 8 +++++++-
 arch/arm/boot/dts/zynq-zc770-xm013.dts   | 7 +++----
 arch/arm/boot/dts/zynq-zturn-common.dtsi | 2 +-
 arch/arm/boot/dts/zynq-zybo-z7.dts       | 2 +-
 5 files changed, 13 insertions(+), 8 deletions(-)

-- 
2.29.2

