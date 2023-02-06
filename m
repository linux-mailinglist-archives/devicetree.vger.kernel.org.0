Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6114368BA9A
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 11:43:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbjBFKng (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 05:43:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229867AbjBFKnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 05:43:32 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7153193EC
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 02:43:18 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AC30C60E03
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 10:43:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4457CC433EF;
        Mon,  6 Feb 2023 10:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675680197;
        bh=mV/5QJoC95AQLIkKkSeULKOsYtE490OaOy68ZuGrL0Q=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SajHniSBI5PihrEClgXmzujN7YMxW3wDG1mOw74TQ4aJsgDGY1eLavzcRMgCu3QsN
         XAM9UAVbrH56c/SW+Vf0Xif5D4c0HAgEDXgZFkTZ2IW/FTDVxPcGjqy1sH67k+Gnjh
         r8LoI7AGyiZuEp8DEbbOi6TsleGUwXB1LVRa6rqiY4ovw2BHu0BNYwAQYS5AlsfRek
         b++mWFWtJz5Un8rUSO8itVe4cA7PfwnnmTWvUHNYxAYmS+C56vOKgQixxJILFLwao5
         9Z2krfSgmbI7aJIeIaw75gLJ7sA/2KsOSZ5xlr7c5UHTGNAmLqXJC14jEZ/2Re8xW7
         6Lm6AVwsb6mWg==
Message-ID: <1d6e7f32-fde1-5233-7edd-bf8b39509a3f@kernel.org>
Date:   Mon, 6 Feb 2023 11:43:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH RFC 2/5] dt-bindings: pci: controller: add pcie controller
 binding for RK3588
Content-Language: en-US
To:     Qu Wenruo <wqu@suse.com>, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     sebastian.reichel@collabora.com, heiko@sntech.de
References: <cover.1675498628.git.wqu@suse.com>
 <fe221481f4df1b552183648489a02ab5ac3216e6.1675498628.git.wqu@suse.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <fe221481f4df1b552183648489a02ab5ac3216e6.1675498628.git.wqu@suse.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-8.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/02/2023 09:47, Qu Wenruo wrote:
> All the properties are the same with RK3568 PCIE controllers, and in

Subject: drop second/last, redundant "binding". The "dt-bindings" prefix
is already stating that these are bindings.


> fact the driver can also be reused between RK3568 and RK3588
> PCIE controllers.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

> 
> Signed-off-by: Qu Wenruo <wqu@suse.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

