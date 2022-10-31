Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02AEA613A14
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 16:33:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231854AbiJaPdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 11:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231875AbiJaPdd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 11:33:33 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75845F9
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 08:33:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 30B25B81898
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 15:33:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1F66C433B5;
        Mon, 31 Oct 2022 15:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1667230408;
        bh=h/+JCTmlrsjghVE0LlnUjhPmL9cFgBIRnc6KSZcYsok=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XyYJKOrL5fN1oRZC5eyqhrJ+M7V4N+c6e+sY3o++MWuGEf3CmLEfXg5whYTIlp7vM
         8BmukAOnP5MIDOzayHJvYNYa1r3XIqgNzF8yKASbGvCB7qfmIlw8T/3Q0cqP20zSHS
         LyjwvbWJ6njZD+2bl59e38Z+n42+bKZm4m15feJ0jMZqyH0RrFEy/vA1o6L2SFDfr1
         0aGo8wiiCMjdmPigq6X/m9HS8zOLJ4YRTVBM5kcP596NHQRgoLW2w0cForawl8dy86
         tvNoUdy5UUhgUfqWzvraKlRP4sxnspf1sLUA1p1nNcAk1IQOEbJzd4k3A4b8Y618Dc
         0JAIPMETgIYGA==
Date:   Mon, 31 Oct 2022 15:33:22 +0000
From:   Lee Jones <lee@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] dt-bindings: timer: add Broadcom's BCMBCA timers
Message-ID: <Y1/qwh5+lA75fXrs@google.com>
References: <20221028115353.13881-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221028115353.13881-1-zajec5@gmail.com>
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 28 Oct 2022, Rafał Miłecki wrote:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCA is a big set / family of Broadcom devices sharing multiple hardware
> blocks. One of them is timer that actually exists in two versions. It's
> a part of TWD MFD block.
> 
> Add binding for it so SoCs can be properly described. Linux (and
> probably any other OS) doesn't really seem to need a driver for it. it
> may be needed for bootloaders (e.g. U-Boot) though. Especially for SoCs
> with CPUs other than Cortex-A9 (which contains arch timers).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Limit to 1 example (they were almost the same)
>     Drop "," in "e.g.,"
> ---
>  .../devicetree/bindings/mfd/brcm,twd.yaml     |  8 ++++
>  .../bindings/timer/brcm,bcmbca-timer.yaml     | 40 +++++++++++++++++++
>  2 files changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/brcm,bcmbca-timer.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
