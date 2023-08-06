Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2E177714F8
	for <lists+devicetree@lfdr.de>; Sun,  6 Aug 2023 14:21:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229530AbjHFMVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Aug 2023 08:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbjHFMV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Aug 2023 08:21:29 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F1983
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 05:21:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 393516108C
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 12:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35A25C433C7;
        Sun,  6 Aug 2023 12:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691324487;
        bh=fbjcFykUkJBnpeEkR8d9BnlfSB94hALWfbSB0c4SurY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=e8GDl/kn1M2vWlHLX2mnWDb5gMsVAAoaFbxwvK1XDwYQrvtKcYLu/JMguyP7RSGK4
         pt3pgMsJXhZhnii7VxmUUUgNDz3qMf04xb4ayP9jMrg7SEA9HGIO/na/B2foYXiZ7v
         nCPTZwnoQeZc4J3ck6Ws1Gbax0ztybl3kd5SrtzorU6Sp12UumS1kQ+nsLUrUF0dii
         +7JUnnVP6Xyjwf5p6/vHNs+RSqWTZz8gtXCihWG2squ/lRoy4CvfoYgMoKEYv80kR4
         JdkxhkVft3ZhgJCLM/9c+4kBis2BakraeGenIQPlvSVhEyYH27VVvLAMFJ/74fRZb5
         pcsnCzXZzYivQ==
Date:   Sun, 6 Aug 2023 20:21:17 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 0/3] TQMLS1021A support
Message-ID: <20230806122117.GE151430@dragon>
References: <20230731092331.358427-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230731092331.358427-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 31, 2023 at 11:23:28AM +0200, Alexander Stein wrote:
> Hi,
> 
> thanks everyone for the feedback. This is the fifth round of this series to
> add support for the TQMLS1021A using the MBLS1021A mainboard.
> Removing the 'dma-coherent' property was a workaround carried on from older
> downstream kernels and is not necessary anymore.
> The same goes for adjusting the size for 'scfg' node. Removing this also
> fixes the node label ordering.
> 
> Changes in v5:
> * Add newline for include header grouping
> * Put status property at the end of properties (lpuart0)
> * Do not remove 'dma-coherent' for sata
> * Do not adjust 'reg' property for 'scfg'
> 
> Changes in v4:
> * Dropped display overlay for now as DCU patch is still pending
> * Rebase to next-20230721
> * Move status property to last position
> * Rename stmpe811 node name
> * Remove superfluous #address-cells and #size-cells for stmpe811
> * Add missing interrupt-controller properties for stmpe811
> * Remove superfluous ESDHCI compatible overwrite in SoM .dtsi
> 
> Best regards,
> Alexander
> 
> Alexander Stein (2):
>   ARM: dts: ls1021a: add TQ-Systems MBLS102xA device tree
>   ARM: dts: ls1021a: add TQMLS1021A flash partition layout
> 
> Matthias Schiffer (1):
>   dt-bindings: arm: fsl: add TQ-Systems LS1021A board

Applied all, thanks!
