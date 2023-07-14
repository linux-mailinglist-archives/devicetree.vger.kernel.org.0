Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A5DC753DC6
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 16:41:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235868AbjGNOls (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 10:41:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236101AbjGNOlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 10:41:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 631522119
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 07:41:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E900A61D3D
        for <devicetree@vger.kernel.org>; Fri, 14 Jul 2023 14:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47644C433C8;
        Fri, 14 Jul 2023 14:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689345705;
        bh=v+hmI+E8CFdIbhaPE1cYJ5+Z9tHO+FMtoE5Rt2xNFs4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=KaySazSW4dAVye5Rx3jIjrpyFsxxWb121CCaz7nDXENbmARMFaZ4TAQCwliW2Kkmj
         hrxhsdYCQsxkOLIsWVl+YCyeYjVkb4bY/6pDnEYwhP3veOkCuhUEz9Jk3CbKKDibTp
         2xaV+f9PQrgRJ2IkZ8blE0te1inkgKWVz0q1x1XgNFpej/JGdezJWTM0CXBuPmEVBk
         NY/bN81BkReE3BF0oK8A5VECg3CHjUqyj+/CKKC/VEVGSd3594UKKIKr9rciRTh2U4
         /fQMSqeYC/cpWWCyX42/YVIoQ1rT60mjcSn29XuYRuOkPqZpnmhdABFaf2uVqhoruD
         /DJUADUGvmNvQ==
Message-ID: <26f27cf3-fd9b-462f-c337-a439e750dfb1@kernel.org>
Date:   Fri, 14 Jul 2023 09:41:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] net: dwmac_socfpga: use the standard "ahb" reset
Content-Language: en-US
To:     Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>, netdev@vger.kernel.org,
        davem@davemloft.net, edumazet@google.com, joabreu@synopsys.com,
        robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20230710211313.567761-1-dinguyen@kernel.org>
 <20230710211313.567761-2-dinguyen@kernel.org>
 <20230712170840.3d66da6a@kernel.org>
 <c8ffee03-8a6b-1612-37ee-e5ec69853ab7@kernel.org>
 <1061620f76bfe8158e7b8159672e7bb0c8dc75f2.camel@redhat.com>
 <20230713095116.15760660@kernel.org>
From:   Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20230713095116.15760660@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/13/23 11:51, Jakub Kicinski wrote:
> On Thu, 13 Jul 2023 14:39:57 +0200 Paolo Abeni wrote:
>>> However for ABI breaks with scope limited to only one given platform, it
>>> is the platform's maintainer choice to allow or not allow ABI breaks.
>>> What we, Devicetree maintainers expect, is to mention and provide
>>> rationale for the ABI break in the commit msg.
>>
>> @Dinh: you should at least update the commit message to provide such
>> rationale, or possibly even better, drop this 2nd patch on next
>> submission.
> 
> Or support both bindings, because the reset looks optional. So maybe
> instead of deleting the use of "stmmaceth-ocp", only go down that path
> if stpriv->plat->stmmac_ahb_rst is NULL?

I think in a way, it's already supporting both reset lines. The main 
dwmac-platform is looking for "ahb" and the socfpga-dwmac is looking for 
"stmmaceth-ocp".

So I'll just drop this patch.

Thanks for all the review.

Dinh
