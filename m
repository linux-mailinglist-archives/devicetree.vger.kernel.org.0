Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97EE42D0D76
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 10:55:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726727AbgLGJyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 04:54:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726661AbgLGJyq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 04:54:46 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40030C0613D0
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 01:54:00 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id c1so155328wrq.6
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 01:54:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NDl1SiUqs+tVTq7p6TpRFwWPM2gXn3fAWwGDnQ0ZJLU=;
        b=WU4qUfu46oPI3fbmoBdkehsFavNQIcLZ6Z8f9WKZh8y7/XyV6R5XFUsTZtE8tzBdpX
         /MmV7hdj4l6FNZCQuIDrPCIb0s26w1/M8K1iHtVqVDOhLk1hwL8rrsmCpk/6Vp84Jgro
         JIzhlt47WU53MK7Hr3+VvptTIJzHawkrRDL3UW93QhMdc8qBJOAVn2au0KRb6fa1L/RK
         inZC37yfXxtHHNcdDwlwhIfQ09JI9r9cAqe/yA1SAeA7KisLbQwiZQ1H7e7XSSgJDfwp
         tk02uk5LhGyG70Dqtte5GhLowAqMwr7W+DQiFEwIK1NvR9U529p8ixx8RTKZKw7ZJMls
         Ghbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NDl1SiUqs+tVTq7p6TpRFwWPM2gXn3fAWwGDnQ0ZJLU=;
        b=mslQydEBBvzy/DLXpimCIPT7iRWgCFxIVhhVPPSBv877293BMj+46qrMcpDLCGzIqz
         KrvgIMzePj7FBVBZTkQY1frgvDu8seaVpoEu3Zy1DV5y9C8CuPedrfi8vQQSMWDKv7dS
         s2R8x2B9tlU9jBWsZhXI3nozQLQWmS6xTv4T7DBoto6XlWp5yIb/MSb4jQZ1PBAGzop4
         eRtbsyxVrYCmioOyborFoCNFJ4mBlDWX3IcNZu7HFwPQc4Ol/EwyrHTRZJtxFvbjFhu7
         0Gsulp/IbJttjL+T8hi2fpC9nmCp5k5TbwhMggODQBfMRTcN0QuM4piA24IEh77rhLn+
         nhQA==
X-Gm-Message-State: AOAM532yL1wlcKKzFExThpl6g+E/N9K/oz6J8LILaUWy+i4B/Qdw9VQc
        SJ8OLUrUnWo1IpUcrDPnwGvWiA==
X-Google-Smtp-Source: ABdhPJzwba7QWJxQRgsk6T64b2mRfYcmawrDO8+x1mYbwtOsc9yi5zyvuvGhVirCO3gg+GM7xSgSRg==
X-Received: by 2002:adf:e490:: with SMTP id i16mr18527870wrm.337.1607334838975;
        Mon, 07 Dec 2020 01:53:58 -0800 (PST)
Received: from starbuck.lan (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id t188sm13558066wmf.9.2020.12.07.01.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 01:53:58 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: vim3: enable hdmi audio loopback
Date:   Mon,  7 Dec 2020 10:53:44 +0100
Message-Id: <20201207095346.26297-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset enable the hdmi audio loopback on the vim3 and vim3l.
I found a few whitespace errors while doing it. This is sent along to
avoid annoying conflicts.

Jerome Brunet (2):
  arm64: dts: meson: vim3: whitespace fixups
  arm64: dts: meson: vim3: enable hdmi audio loopback

 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 60 ++++++++++++++-----
 1 file changed, 46 insertions(+), 14 deletions(-)

-- 
2.28.0

