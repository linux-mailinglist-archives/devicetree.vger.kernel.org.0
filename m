Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AF8670EBE3
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 05:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230520AbjEXDb7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 23:31:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239161AbjEXDb6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 23:31:58 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458AA1B5
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 20:31:04 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 51C26847E3;
        Wed, 24 May 2023 05:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684899061;
        bh=63+BwPSimon4MRS/P8dtWFgnB/TQmzkO6B/o7+8B5iI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=LlJBDabmzGbXUm8K+eGUh9uBimKiz1PbmqvjbiqXaWgc0G8w5/J1GeGuPXCjRCiEM
         14JK+c9NPA+AQP1lC4Ex+orbpi/sSHlHi4CrYuE7nMP1mfUgEoKqq2Y+DilTKf+0Jg
         KrDukPUrI8VubMZg5VA9LpHKYK/rBW4JQUW+AK5QXSH4TJuuceTuZcl8uH90JMAbrm
         f7PiUabBNu/0Pj92CPW4oSsRLvCB11HrvXwGnZP/SGmQPx28oQayY79SPuFC2dRi2K
         TdSKlAa7SclQvRHtuMaJGk1nW+sZArxxWlzapq+yyrirg0Qsp0kpUge7SQDoqca0Tq
         t1ICDGVXJ1Z5w==
Message-ID: <2ff8d48f-c069-6ece-7865-4268296618fd@denx.de>
Date:   Wed, 24 May 2023 05:29:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Daniel Golle <daniel@makrotopia.org>
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <1ad00eb9-7bcb-b93a-191e-7673c835c31e@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <1ad00eb9-7bcb-b93a-191e-7673c835c31e@linaro.org>
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

On 5/18/23 16:30, Krzysztof Kozlowski wrote:
> On 17/05/2023 17:25, Marek Vasut wrote:
>> Add trivial bindings for driver which permits exposing syscon backed
>> register to userspace. This is useful e.g. to expose U-Boot boot
>> counter on various platforms where the boot counter is stored in
>> random volatile register, like STM32MP15xx TAMP_BKPxR register.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
> 
> Let me also leave a note here - cross linking for all parties:
> 
> Please propose a solution solving also mediatek,boottrap, probably
> extendable to range of registers. Other solution is what Rob mentioned -
> this might not be suitable for generic binding and device.

 From what I can tell, shouldn't the mediatek 1g MAC driver have a 
nvmem-cells phandle to this OTP/fuses/whatever area and shouldn't the 
driver read out and decode its settings within the kernel ?

That doesn't seem really related to this particular issue I'm trying to 
solve I'm afraid.
