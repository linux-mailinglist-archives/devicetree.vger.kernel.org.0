Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C808E2FEA32
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 13:37:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728800AbhAUMhF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 07:37:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730994AbhAUMgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 07:36:52 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FDC0C061575
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 04:36:10 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id ke15so2322337ejc.12
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 04:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=48e+OLm0ER6iWCSKD8u4Ws9vRmX1gNHTsb3YXOXSYS8=;
        b=copFDABFS89Vhx33PEDHJHERGoFy2Vuqtucq5WJKiGGcsc6yW/ffOxkjxFEXAPXdfe
         8+cgtzDqhgsG7JI1DRVhGIJA70TV+ge7RU3kREubDrzlqkYrF62abD+ZKO+fPzmIw8iA
         B1lzfhO1Ru5q9xfXx1tlyZwobE7K/Al2snjPrNxk7GOb2lBTzVUSqh2Anv3G0VfDYFPa
         U3g/vHoKT+eh4l7Pwl2ZnX5qximeGen1MD7I31R2DH9HhLEqAU3UfZ+nFSNeLpX/7FxK
         vb29cekjaXkEadfyLXrpZ7Vv4wiZoJt4KaYUzUy8XaDeqnYHwmJwantaL2ioWKXDlttt
         F76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=48e+OLm0ER6iWCSKD8u4Ws9vRmX1gNHTsb3YXOXSYS8=;
        b=eCvi0QSA9DKAfvNvf9br40CH93BSC4hDUYyWOHLdPpGr5eXjutysavOyAI66umy9vf
         Xb+cqFGmfwxVMTsTFYrbHVhgok+gieH8XsCrkX7dvFMV0FckF0otyp7MrzUMp78b0CRG
         Ldn0OAd1PehBdzByL84SRlkNNrn69jLeyPSAPMRCq9OZRzrHWCjvF23NFYXjBhIuXjR3
         rBTlbnA1WP+rKKEz1S4gvcb5euIXGS3JeWYLj54y7gbL8cgBR40DhJgZvHTWvmxWuEe9
         1NcM/tLt0CYMm77LNVvztq7DJwyEV48WLqALMKmHXLrRYwUyaZXgiWyO88NqYicXA3od
         U10g==
X-Gm-Message-State: AOAM531Za0QMD6b+JdVkSsVlRLoLuRtp/I1p70UXTlGier+QRaxfjQ+r
        bToIeB2EFlfoFYfacj0rr5lsLg==
X-Google-Smtp-Source: ABdhPJxA0ioWQq2rM25QOBXr65kL+/AQPugIlhse28klBj9oVCJOq84+cEEgbISNMspGQBBBX+HkfA==
X-Received: by 2002:a17:906:94d2:: with SMTP id d18mr9045527ejy.94.1611232569099;
        Thu, 21 Jan 2021 04:36:09 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id z25sm2180530ejd.23.2021.01.21.04.36.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Jan 2021 04:36:08 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64: dts: zynqmp: Enable and Wire DP
Date:   Thu, 21 Jan 2021 13:36:04 +0100
Message-Id: <cover.1611232558.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I am updating DT patches which were there part of DP v11 series sent by
Laurent in past [1]. Patches have been removed in v12 [2].
The series is rebased on the top of [3] which wired si5341 clock chip.

[1] http://lore.kernel.org/r/20200318153728.25843-1-laurent.pinchart@ideasonboard.com
[2] http://lore.kernel.org/r/20200718001347.25451-1-laurent.pinchart@ideasonboard.com
[3] http://lore.kernel.org/r/cover.1611224800.git.michal.simek@xilinx.com

Thanks,
Michal


Laurent Pinchart (2):
  arm64: dts: zynqmp: Add DPDMA node
  arm64: dts: zynqmp: Wire up the DisplayPort subsystem

Michal Simek (1):
  arm64: dts: zynqmp: Add DisplayPort subsystem

 .../arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 10 ++++++
 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    | 31 ++++++++++++++++++
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 10 ++++++
 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    | 11 +++++++
 .../boot/dts/xilinx/zynqmp-zcu104-revC.dts    | 11 +++++++
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 11 +++++++
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 11 +++++++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        | 32 +++++++++++++++++++
 8 files changed, 127 insertions(+)

-- 
2.30.0

