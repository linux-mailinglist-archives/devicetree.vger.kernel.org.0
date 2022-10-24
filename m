Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 428566097DD
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 03:37:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbiJXBhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 21:37:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiJXBhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 21:37:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16D0F6D56C
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 18:37:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9E85D60EB4
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 01:37:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4E6FC433C1;
        Mon, 24 Oct 2022 01:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666575465;
        bh=GCQAyxUQytwh9kPURoF62IP/Xfgn/Zm4SwIPMqHMliA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RU/3hFH75qs6+sV/1AUnnp13n5nQJQqQXhBwZc/6B7Gz+uf3Mp6duW1YF5AKp0QvN
         aGsVFIiHTVkBnIbbsMjD2ImwoXYjmVN5KOvqpoYP7Usz/bfGAg4BYJ0xNb9K9xgi/Y
         5FbwfGsngMyV1Wdcz7NL13F6L7QtxC+y7YRf/Nxt9tZPCDHk5aawUvUjqa0ehBDUoI
         Hs13Vu5snXwX7j1WAN/6vVz1GAHUgGKzHZLpzRy6p/6SJXm4nCA88UsWP/Q6ysPQpu
         epQ+dPA/Ygde2tvkAGTYRFV7UaofDSbsswFfWZQLAHKqtJkNN9yE3ggmyvbd3v4Ci9
         tszoP8G9hxtJA==
Date:   Mon, 24 Oct 2022 09:37:37 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Li Jun <jun.li@nxp.com>
Cc:     l.stach@pengutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aford173@gmail.com, tharvey@gateworks.com,
        frieder.schrempf@kontron.de, marex@denx.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        xu.yang_2@nxp.com
Subject: Re: [PATCH 0/4] Split usb otg1/2 power domain from hsio for imx8mm/n
Message-ID: <20221024013737.GW125525@dragon>
References: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 07:45:31PM +0800, Li Jun wrote:
> Actually otg1/2 power domain is for usb phy, which is required
> to be powered up for usb remote up(e.g usb runtime suspended),
> this patch set is to split the otg1/2 power domain from hsio,
> so hsio power domain can be off but otg1/2 is on for runtime
> PM.
> 
> Li Jun (4):
>   arm64: dts: imx8mm: remove otg1/2 power domain dependency on hsio
>   arm64: dts: imx8mm: correct usb power domains
>   arm64: dts: imx8mn: remove otg1 power domain dependency on hsio
>   arm64: dts: imx8mn: Correct the usb power domain

Applied all, thanks!
