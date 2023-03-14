Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFBF26B8B70
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 07:43:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjCNGnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 02:43:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbjCNGnT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 02:43:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2D6119B5
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 23:43:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4E713615EB
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 06:43:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1857C433EF;
        Tue, 14 Mar 2023 06:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678776196;
        bh=Re388gmDNJ2nigQbcyyA/3w5bjaxFt6izojwNm9qlkU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Fhp486JbEKPcmW46SQSIK4C3oCQXtqG6nnUrgTbxI6qrhwFqkG9V2kEkdDmL7/hPQ
         /f0Byf7JR6PmSlkcpXXz3mHsGTEhPBuqifWnM5cYPggr+8B6PUagEejs0ecmSUNsdp
         cw1qmgTFMBanzdetmr1qB1LALERZiWhcXKYt+UOb7g6NaDh2By0194cRZrj/iyQzMB
         qCoe0peJjs58x8aDQreFh6eoi8C5qNMaTUnyCXz8HGXgU7HtJE4V+FSxY9RJTVgrmx
         6e/CsZV6knrlrp84SUxthk17rPHrCZHvGjwBzOkwpE+xFM0qPwjHdqQDLZvddECFTk
         oiNdDlqURK7yw==
Date:   Tue, 14 Mar 2023 14:43:10 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V2 0/9] ARM: dts: imx28: Clean up older DTS files
Message-ID: <20230314064310.GS143566@dragon>
References: <20230307184007.10672-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307184007.10672-1-stefan.wahren@i2se.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 07, 2023 at 07:39:58PM +0100, Stefan Wahren wrote:
> Since the imx28 belongs to the early ARM platforms which has been
> adapted to DT, a lot of these DTS files are not in the best shape.
> So this series tries to address this by using label references
> and SPDX tags.
> 
> Theses patches doesn't include functional changes. The resulting
> DTB files has been verified with dtdiff.
> 
> Changes in V2:
> - fix alphabetical order of i2c label reference in patch 1
> - add Wolfgang Grandegger in Cc for patch 2
> - replace Anson's address in patch 7 with linux-imx@nxp.com because
>   his address isn't available anymore
> - remove Cc from patch 8 because the address isn't available anymore
> - add Acked-by for patch 9
> 
> Stefan Wahren (9):
>   ARM: dts: imx28-apf28: Convert to use label references
>   ARM: dts: imx28-m28/sps1: Convert to use label references
>   ARM: dts: imx28-apx4devkit: Convert to use label references
>   ARM: dts: imx28-cfa10036: Convert to use label references
>   ARM: dts: imx28-duckbill: Convert to use label references
>   ARM: dts: imx28-duckbill-2: Include base board
>   ARM: dts: imx28-evk: Convert to use label references
>   ARM: dts: imx28-ts4600: Convert to use label references
>   ARM: dts: imx28-tx28: add SPDX-License-Identifier

Applied all, thanks!
