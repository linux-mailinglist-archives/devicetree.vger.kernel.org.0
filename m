Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 182E4699947
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 16:53:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbjBPPxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 10:53:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbjBPPxg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 10:53:36 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE3BA5648C
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 07:53:35 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6E2EE61846
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 15:53:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 072FAC4339C;
        Thu, 16 Feb 2023 15:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1676562814;
        bh=ilDZWdmxTkP0GsYlXZmdGpCOnMMdldjnitTVhf5lSt8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=buBx4v1H85+LaKF9yno3PWlvg5GUuDSAhmT/Gz+kzb4n69dWxBp8L+s6cEhmpc6+2
         h+e5fZgTVvpCjyq+dk1rty5fYIDcaGgSgpCUpRXwFOyaix/QujQGTAcrkNbgegqhJQ
         HvCWFKV6EbdASrQcCrOeuI32nPKg1rnIOzGMxLPxnDA1k+gl+MswW2pbf/gZ2tOnKn
         7IpvR9icKfsKXOAE9Xa7iQWeQVUBvs3kvuUS0DakYp/fTAk6aLoqn/JCF6CMalVGOb
         lMF7pq+5TQ8wbbwVYSj0TCR5VNXJt61b6xs0tvZj14ZOJeWbllrvc0AdLgQudeUytn
         l1CxvJpTYnWOQ==
Message-ID: <27bfeca0-b5d3-7570-4945-37b9cb41c010@kernel.org>
Date:   Thu, 16 Feb 2023 09:53:32 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/2] ARM: dts: socfpga: Add enclustra PE1 devicetree
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
References: <20230207130812.17023-1-s.trumtrar@pengutronix.de>
 <20230207130812.17023-2-s.trumtrar@pengutronix.de>
 <739e5a17-2fa7-05b7-7517-6ac49c5b6504@linaro.org>
Content-Language: en-US
From:   Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <739e5a17-2fa7-05b7-7517-6ac49c5b6504@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2/7/23 07:28, Krzysztof Kozlowski wrote:
> On 07/02/2023 14:08, Steffen Trumtrar wrote:
>> The enclustra PE1 is a baseboard from enclustra GmbH for the enclustra
>> Mercury AA1+ SOM.
>>
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
Both patches applied!

Thanks,
Dinh
