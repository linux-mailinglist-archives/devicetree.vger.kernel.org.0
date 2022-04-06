Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DE9E4F63CA
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 17:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236474AbiDFPq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 11:46:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236632AbiDFPqK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 11:46:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8A594B7DEF
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 06:07:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E3F8761BE6
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 13:07:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A684C385A3;
        Wed,  6 Apr 2022 13:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649250457;
        bh=rs/HXfC4A3mEHhIvuw+AFmkQQWrPIQCtnTbaN7X3xFQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qgYvQGEqIYZAg3CnSyYg8VA9fV1iZ7m4EFE7hl49wN2AVMyjrTu3WYGQ4gfapAHpi
         tIxiZsfT2vNiijPnh3Aj45hU1yf9Elpdje2XQZ7SpmqBObw90VY7o30mvN5m8rNQSW
         y2NWYqou0YuTEpHOpAMVOsrwbTyGq5fipfDS6kkLRyw74kAljH6pFYtzYPQ8AOJkhh
         lLog0QoJlRm+wBHb82ZR9nzRzeau2pbDQAGg0qJ2FK8q3IOsbMTqw3LaZ3WOQLycz2
         yN4jXJ4rEk7ZvusA1EHOBGabILe51yIvFSpsV9x3IJASNGlTGRcDvwNX4/RAcEYTln
         n1F50QXfLuyzg==
Date:   Wed, 6 Apr 2022 21:07:31 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Andrej Picej <andrej.picej@norik.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, kernel@pengutronix.de, leoyang.li@nxp.com,
        krzysztof.kozlowski@canonical.com, festevam@gmail.com,
        linux@rempel-privat.de, arnd@arndb.de, linux-imx@nxp.com,
        y.bas@phytec.de
Subject: Re: [PATCH v2 0/3] PHYTEC i.MX 6UL/ULL devicetree patches
Message-ID: <20220406130731.GQ129381@dragon>
References: <20220222091606.530581-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220222091606.530581-1-andrej.picej@norik.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 22, 2022 at 10:16:03AM +0100, Andrej Picej wrote:
> Hi all,
> 
> this patch series contains PHYTEC i.MX 6UL/ULL devicetree patches not
> yet upstreamed.
> 
> First and second patch add devicetree for relatively new phyGATE
> Tauri-S, which is based on i.MX 6ULL.
> 
> The third patch moves from using 2 pwm-cell to default 3 cell pwm
> property.
> 
> Changes in v2:
>  - dropped the patch: "ARM: dts: imx6ul: phycore: Change USB LDO voltage
>    for usb compliance" (LDO regulator shouldn't be configured as
>    always-on, it should be enabled/disabled by consumer),
>  - other changes are described in the corresponding patches.
> 
> Best regards,
> Andrej
> 
> Alexander Bauer (1):
>   ARM: dts: imx6ull: Add support for PHYTEC phyGATE-Tauri-S with i.MX
>     6ULL
> 
> Andrej Picej (2):
>   dt-bindings: arm: fsl: add PHYTEC phyGATE Tauri i.MX6 ULL
>   ARM: dts: imx6ul: peb-av-02: move to 3 cell pwm

Applied all, thanks!
