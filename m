Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B79167601C
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 23:22:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbjATWWo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 17:22:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjATWWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 17:22:43 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 213E9762C2
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 14:22:26 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C837DB82A97
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 22:22:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9C46C433D2;
        Fri, 20 Jan 2023 22:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674253343;
        bh=9OjnS/bRAi/5W+hIXcDofIIjRCnP/2WUXpYZhPCsffI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=r8c+Vgbg0gXKK2v++cEaCOiFG9cw8sctDwGC/5pwtDUk9Vm446YSQY9Ks6s43+nuJ
         8Y5mblJKCof5iiySfzNGqJXzdnUtXVMHbBzd/lulNRgVEUN8cZcD6Zmlb0C3twNMlD
         P1uMVv4YnazpQzTzsd1eTFWQ7CNzW490ZbHTr2nzzNrTnFx1zBlBvvHKRtkhIgk7ui
         sw3YvgV9jlXw7s+9hTEMapRzTgLGyDskQGu80kQm7KytkZl5CmsLcORge5vjK2Gdtq
         dFmL+LyJ5pFHaTwX+v1KYAK9SFyZtob7Xe96bcZmY1X/8TCqCQ/ivtQLt7815u1Exa
         VaCCUfNRi+yyQ==
From:   Conor Dooley <conor@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     conor@kernel.org, Daire McNamara <daire.mcnamara@microchip.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Add a devicetree for the Aldec PolarFire SoC TySoM
Date:   Fri, 20 Jan 2023 22:21:52 +0000
Message-Id: <167425300253.196995.16704364734432203770.b4-ty@microchip.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111124106.2417152-1-conor.dooley@microchip.com>
References: <20230111124106.2417152-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=775; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=DSR4h5iLz5L38SehBa0AiU9UxY1CKS3u7gABR27mr2o=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDMmnhf+89rUw155YOOW93NLnu8Q217Kq/HZNPOZVKupe6ZJy gHNvRykLgxgHg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTACZy5xHDf38jhqreDe+euBbm96n6NJ tIqtnWbovIurS8tGr1d7kWF0aGv9d25whnHul8wrw76ujiDScVr2t0PJoTs/z+8yfXrs5fxgYA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

On Wed, 11 Jan 2023 12:41:04 +0000, Conor Dooley wrote:
> Hey All,
> 
> The board has 32 GB of DDR but the DT I have access to only has a small
> bit of that mapped. I tried accessing more DDR, but it was not possible
> with the FPGA design as things stand. I'd rather have the devicetree
> match what the vendor is shipping, so left the design/DDR as-was.
> 
> [...]

Applied to riscv-dt-for-next, thanks!

[1/3] dt-bindings: vendor-prefixes: Add entry for Aldec
      https://git.kernel.org/conor/c/f6beee9118c3
[2/3] dt-bindings: riscv: microchip: document the Aldec TySoM
      https://git.kernel.org/conor/c/ea913d8865fe
[3/3] riscv: dts: microchip: add the Aldec TySoM's devicetree
      https://git.kernel.org/conor/c/4f7d64156292

Removed the PCIe that I forgot to remove before sending in the process...

Thanks,
Conor.
