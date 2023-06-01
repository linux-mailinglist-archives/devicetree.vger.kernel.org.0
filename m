Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B50671F3E3
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 22:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232160AbjFAUcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 16:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232009AbjFAUcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 16:32:23 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B5C7198
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 13:32:20 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 84854862D0;
        Thu,  1 Jun 2023 22:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685651538;
        bh=AK9VM70TADXJgbWRfDlF3HDtrVkMIteUeHxrQkzA16A=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=IcMCF7o+F2UgoVjdkE5faJIArtY/hCwYh5iuxpH0t6mxZqluA8mLv525J/OXerd7Z
         DBnQ2258DsThcs8vm4ML8CJzBxAcKVMvbFZcX4asCBSW1Mi1U1tiyATisYWwHABrMq
         8aKm7SOSRbeYQhiLjQaqrauQfF4HNNlIpW85kVmZ2ti0fSzWBqWITfn4JW3VuU60fh
         rCV96wx6k+XksZEdhn36ZMUqWCx7RcHAE8EFj89eV+CpKwg3niqQyFAqPnzo5uMSnA
         vv3e5JbCJgVTvL/WRNpQXwl4DZm1/klKeRoWpYkSyC12r/8g+rjIR3+D8RxNOtATW7
         MAwc30VUXXrcQ==
Message-ID: <94a89ca7-bc29-5a2e-f99d-9b2577882c92@denx.de>
Date:   Thu, 1 Jun 2023 22:32:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: stm32: Deduplicate DSI node
To:     Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        linux-arm-kernel@lists.infradead.org,
        Philippe CORNU - foss <philippe.cornu@foss.st.com>,
        yannick Fertre <yannick.fertre@foss.st.com>
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230531231044.574541-1-marex@denx.de>
 <b343ab21-2787-4602-57f8-4c2bf62db523@foss.st.com>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <b343ab21-2787-4602-57f8-4c2bf62db523@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/1/23 18:46, Raphael Gallais-Pou wrote:
> Hi Marek,

Hi,

> On 6/1/23 01:10, Marek Vasut wrote:
>> All boards using the DSI node duplicate the same pattern common pattern
>> in board DTs, that pattern is ports with endpoint labels and the same
>> in-SoC regulator connection. Move that common pattern into stm32mp157.dtsi
>> instead.
> 
> I think that is a good idea, while it did not crossed my mind implementing it
> this way on the first time.
> 
> I'll let my peers Philippe and Yannick review and ack it this time. I tested it
> on DK2, it seems fine.

Thanks for testing. There's no rush, so take your time.
