Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87184673D7B
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 16:27:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230271AbjASP1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 10:27:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229844AbjASP1p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 10:27:45 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5372D457C4
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 07:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674142063; x=1705678063;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Fan4CH7rMTs971QPB7GBxYLxAh59SKl4VCqfYSc+19Y=;
  b=nOZ+oq1su/uVZQU5y4lleJa7VAfgCO0fZ9tROwYUZ+91JRQBfqIqF+BC
   r+8wFxDQmsJ0uhZ9nCBaaqjdYMS/RkK1i3hXhuVrm6o6VKSORkJP7IjT0
   5y+DnuDZTdsRoI+ucyY5GW66RVbn2f41zAEDepuNu+WzcNWbxQlAENmOZ
   1Ez++1lbwlKMDsFvZNSmxr+T5+artvNWjyEpPsD3lBCRD9h1C9zI/Gb4K
   wSbxFjh9rX0lyBs0zhdtDAqZu1FDEceKeM8fwmIXxIq6p1OiyXruFYeY8
   KccWSelQYelTQq52Pset7A03GHeZhDZNiD/lH85GdMEHi7YKVOK0bDHX+
   A==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28538910"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Jan 2023 16:27:41 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 19 Jan 2023 16:27:41 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 19 Jan 2023 16:27:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674142061; x=1705678061;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Fan4CH7rMTs971QPB7GBxYLxAh59SKl4VCqfYSc+19Y=;
  b=Y4ZXSfPsmou0BqtmC/HsSTlVirenHbure0fK64PMB2e7zhGlocBbFGlc
   sX7432u5lFS/Va/Nk0HlIxGPqW1QxCG5edSCmA/+IGRh4s6Qmrpbk23Zl
   uLjQEV6hL3V14Gj//zZ77lwR8JTW7Khq3dz6WibOmsn+IOm8g3GjAzhrF
   2NOZWf6r/Ahv5YRLQQ/b7Q06KagHQ4KMojVwpxSua+hGbD513/HnKN6Ti
   PS2RBKZFzSqKKRrdDt5N19DcigYVJeDcWP9Vpd/5WHnucuK0t8X+9IWLp
   mU8YaPocdX3ZasBz06ZSj89rNTJRaZvpcmE3AyCws7H+O5NSiNqiitOjp
   A==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28538909"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jan 2023 16:27:41 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4F701280056;
        Thu, 19 Jan 2023 16:27:41 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Arnd Bergmann <arnd@arndb.de>
Cc:     soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 9/9] [DNI] ARM: multi_v7_defconfig: Enable CONFIG_ARM_LPAE for multi_v7_config
Date:   Thu, 19 Jan 2023 16:27:39 +0100
Message-ID: <2617470.BddDVKsqQX@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <f1de9cd9-a163-4b56-adf8-319eaf85e38e@app.fastmail.com>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com> <20230119144236.3541751-10-alexander.stein@ew.tq-group.com> <f1de9cd9-a163-4b56-adf8-319eaf85e38e@app.fastmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

thanks for the fast response.

Am Donnerstag, 19. Januar 2023, 16:09:05 CET schrieb Arnd Bergmann:
> On Thu, Jan 19, 2023, at 15:42, Alexander Stein wrote:
> > This is necessary to support PCIe on LS1021A.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> 
> Can you explain why this is actually required? I can see that the
> ranges in the PCIe device point to a high address (0x4000000000,
> 2^40), but I can't tell if this is hardwired in the SoC or a
> setting that is applied by software (either the bootloader or
> the PCIe driver).

The RM ([1]) memory map (Table 2-1) says that 'PCI Express 1' is located at 
'400000_0000', 'PCI Express 2' at '480000_0000', so I assume this is hardcoded 
in SoC.
It also explicitly lists in that table PCIe 1&2 is only accessible with 40-bit 
addressing.

> If you can reprogram the memory map, I would expect this to fit
> easily into the 32-bit address space, with 1GB for DDR3 memory
> and 1GB for PCIe BARs.

I'm not sure which part of memory map you can reprogram and where, but I guess 
this is fixed on this SoC.

> I don't mind having a defconfig with LPAE enabled, I think this
> can be done using a Makefile target that applies a config
> fragment on top of the normal multi_v7_defconfig, you can find
> some examples in arch/powerpc/configs/*.config.

Ah, nice. This can be a good starter. Thanks.

Best regards,
Alexander

[1] https://www.nxp.com/webapp/Download?colCode=LS1021ARM



