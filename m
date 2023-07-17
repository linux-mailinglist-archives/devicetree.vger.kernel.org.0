Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1E3755FFB
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 12:01:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231339AbjGQKB3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 06:01:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbjGQKBW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 06:01:22 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 449A9194
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 03:01:15 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id C7E8B240027
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 12:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1689588072; bh=cGdADOGHy3QeQCyvjOMz+FvDAOetEKi2ZS2r9cKyFpA=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:
         Content-Transfer-Encoding:From;
        b=XQYzLEDKwB83woG3KCXBZOH3ID2Sugfg8iyBIoZYtoL4sd9YjrW0SAdU7Ou/gAPaV
         AxePR3aPb0tEvEip8WUFuR3xjmlY6MrEwM3/DWjzZuaCWArNFPtljiyNd18TygDUi2
         K70AIimbpLivgPCItTIw6AiZzwmzgFJ9tVaJC5i7eLOKYokBnfuSKV5e7iDz9MkdFK
         pC+rF6oYj6+9WFSuHBbCWHwhAA4JRwSJgmwlO34OBWo2hcxzOBnFLDa2iQg9UFWyrn
         +0+DPl/jo+isX/njAibJebHYfgeuVcK3dTNDr21HjjBA3/xCY5zg8RI7Zrw1omWuTD
         5sj+OUhiG3n0A==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4R4HfG3xfNz6tvw;
        Mon, 17 Jul 2023 12:01:10 +0200 (CEST)
From:   Martin Kepplinger <martink@posteo.de>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, kernel@puri.sm,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v1 0/4] arm64: dts: imx8mq-librem5: description updates
Date:   Mon, 17 Jul 2023 10:00:52 +0000
Message-Id: <20230717100056.4047292-1-martink@posteo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Martin Kepplinger <martin.kepplinger@puri.sm>

hi Shaw and all interested,

This is another small but important round of hardware description updates
for the Librem 5 phone. The first allows to use the display stack in
the first place. The other 3 patches improve diplay-blanking when talking,
enable fast charging when system-suspended, and faster system-resume.

thanks,

                         martin

Martin Kepplinger (1):
  arm64: dts: imx8mq-librem5: set audio-1v8 always-on

Sebastian Krzyszkowiak (3):
  arm64: dts: imx8mq-librem5-r4: Bump up proximity sensor's near level
  arm64: dts: imx8mq-librem5: Mark tps65982 as wakeup source
  arm64: dts: imx8mq-librem5: Reduce usdhc2's post-power-on-delay-ms to
    20ms

 arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi   | 5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

-- 
2.30.2

