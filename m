Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C852F6252E9
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 06:02:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbiKKFCb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 00:02:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiKKFCa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 00:02:30 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 184FA66C98
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 21:02:30 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id C0AD7B823EB
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 05:02:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 929D1C433C1;
        Fri, 11 Nov 2022 05:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668142947;
        bh=aZDIOqxpQvQG6Hs2so0XpyNijNQhsYxZz50X+9SQlSk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YMB/8IlH0prk/oi4MiksD7NeRYJgvtufuvSrSAJb/xrpvuMAoVyzKQld7H/V7fzRA
         dXHR/H8pVZy+wFSfJANBPulsEFQ+2sqeAB06c7xiHSv6/gNz5KhArQ7ij3Ohm/O2mE
         AK0Rjj5GWQ8mMFZMNgjppoXNFHT0CZ4wvXw7kVgmucU/4rI70CU/aR8KOcp8+A50hP
         z7gOwERPV9jbLv8YGfoP5Dn7WB9Uwn1uCVwLHYmF71ZEKlbXRNoEco3GAYSbpyBGj5
         KGA1BfT+opHI0WQ47vDaM18nF5VErbsn6k/ZFEe15Nr/OXTns+urvLJuntahRW6SIS
         oORJX8RrgZodA==
Date:   Fri, 11 Nov 2022 13:02:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm64: dts: tqma8mpql: add PCIe support
Message-ID: <20221111050219.GA2649582@dragon>
References: <20221101092130.273651-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101092130.273651-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 01, 2022 at 10:21:29AM +0100, Alexander Stein wrote:
> Add PCIe support on TQMa8MPxL module on MBa8MPxL mainboard.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied both, thanks!
