Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69494701421
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 05:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231664AbjEMDPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 23:15:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjEMDPl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 23:15:41 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6B534C10
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 20:15:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 657A66531C
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 03:15:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBC19C433D2;
        Sat, 13 May 2023 03:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683947739;
        bh=wBhVOl6QDE41lzr61LE+gNzVFFfBoPgk1Tfdb2RhpII=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lIU3/nazDzpHxd4w/3dLYIgUGsu7Apfv+5cEvFQDWmM8u7RYxwVZ5h8jLmrYqPHLh
         cMLLIU+MTYNA523si+7aVK1gWHRNcDD4H/1bugMf9K3tWyGcPAht6iz5Yg4TDHU2X1
         HqSVwAnl1hxJR1UqsLMC7uwLWarvPSjS4gn4WWy2G0efArxyepLEQWLYa84/9EgKok
         Z2nNh34qfrzeUMS78K1EOYHveOMGD/pIq65HU8vkP484DWyn88tKOTdMSAtP6ZGq33
         ZGiwEfyO34D6Pg9abQFUguSShqI5bxN9JGdaRH3i9//UZOdCqrmL0eydLHxwCo7ThP
         0ILcv8v45ITxw==
Date:   Sat, 13 May 2023 11:15:29 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Fabio Estevam <festevam@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 6/7] sARM: dts: imx28-tx28: Replace deprecated spi-gpio
 properties
Message-ID: <20230513031529.GB727834@dragon>
References: <20230407161444.1682038-1-festevam@gmail.com>
 <20230407161444.1682038-6-festevam@gmail.com>
 <1f877bb4-e14a-fd29-ab97-228f9f11e7b4@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1f877bb4-e14a-fd29-ab97-228f9f11e7b4@linaro.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 10, 2023 at 07:24:11PM +0200, Krzysztof Kozlowski wrote:
> On 07/04/2023 18:14, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> > 
> > As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
> 
> Typo in subject prefix (ARM).

I fixed it up and applied the series, thanks!

Shawn
