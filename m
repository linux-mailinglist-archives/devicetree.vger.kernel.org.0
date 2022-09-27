Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F6825EC022
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 12:51:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiI0Kvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 06:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230443AbiI0Kvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 06:51:42 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C947311C06
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 03:51:41 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id D122984A73;
        Tue, 27 Sep 2022 12:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664275900;
        bh=3ewozdLEQlhQmZ3Bns2Zl5WX79hSFw5CgIFBudDQgBc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=uOIaUlBT3Um1DSnZtgXwlvgjopyw0wuBcbgZ5Na5fXgzQD1telN5jbVxrK+KArzWP
         6+7sIjZHGH7wXpaOungjXmCdvHk8VGdheDIygY57is/ZlJvZJjlgnbvD0MILGt++OO
         ln8up93LLLPoSEQT7n0/ImNKVZ/dL4IDgjCeII6zoiglPkZgbd1+3ed25XMyvWvDFN
         KeXnkuWSkYeN7GQ4BdOFkBAjxMNrbB0BR4ljlnwDopxWRmGRGtkKT4rjDkw5z5wRoU
         XuIqOXdmAoi4iHynZO3Gc1kMIk/mX89R3zpfvYYFhr3c3ZtuGzBz/vzx84C6QqOdJM
         0fvZRZ4CL5qpw==
Message-ID: <336df874-2c22-c2cb-9565-75fe697ca473@denx.de>
Date:   Tue, 27 Sep 2022 12:51:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] dt-bindings: sound: st,stm32-sai: Document audio OF graph
 port
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Olivier Moysan <olivier.moysan@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20220927002004.685108-1-marex@denx.de>
 <YzLST/bYxqd0S/i4@sirena.org.uk>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YzLST/bYxqd0S/i4@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-6.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/27/22 12:37, Mark Brown wrote:
> On Tue, Sep 27, 2022 at 02:20:04AM +0200, Marek Vasut wrote:
>> It is expected that the SAI subnodes would contain audio OF graph port
>> with endpoint to link it with the other side of audio link. Document
>> the port: property.
> 
> Please submit patches using subject lines reflecting the style for the
> subsystem, this makes it easier for people to identify relevant patches.
> Look at what existing commits in the area you're changing are doing and
> make sure your subject lines visually resemble what they're doing.
> There's no need to resubmit to fix this alone.

Will do, and I updated the patch tags locally in case a V2 is needed anyway.
