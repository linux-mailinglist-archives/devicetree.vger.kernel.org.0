Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8557F72EF96
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 00:40:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231937AbjFMWkx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 18:40:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231742AbjFMWkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 18:40:52 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EF14127
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 15:40:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B3B766151C
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 22:40:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFC97C433C0;
        Tue, 13 Jun 2023 22:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686696048;
        bh=PMIam/vHxZ7nWfOa/QQgz7hgIDsI7bxQ1CI14IOTPXQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=P9IKzrDlp/dtn9K5GlquSFbFrl+6JYFtLvhc9uSRookdbNElWZ4sF4EOluj50I8Zl
         5WbPYYxRsgBvjgVhNsC3rokm3TFYk1hV2hUxmYMW9R5kT3+KXTpSTeBD8Qy0oDPt98
         gb8ComJDlSqs2dmJBGgjNGSVdTZIY06iJ5y4fqrgd7JiVYgOLQ5Ia2j7vOcGpHmegP
         Q//JqtFUoMVg4MPqmQ6v1rijJ50+yvKuMqv62/ueAGZs5cGwLM8vTKWdHnXXvCvDew
         K9zYEftcU8iIX4X7DA0d/ym6KsVf8QXad1S+8mAm3nQpZ2TuWpX9FDjqI5jqe/9+CC
         NmtD3JfxKJO6w==
Message-ID: <4dfff981-f786-f40a-5425-fc5275b68824@kernel.org>
Date:   Tue, 13 Jun 2023 17:40:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: Change pinconf controller node name to
 pinctrl
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Tony Lindgren <tony@atomide.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Wei Xu <xuwei5@hisilicon.com>,
        linux-arm-kernel@lists.infradead.org,
        Niravkumar L Rabara <niravkumar.l.rabara@intel.com>,
        devicetree@vger.kernel.org
References: <20230510103816.39015-1-tony@atomide.com>
 <d2e65698-8dcc-7d90-9239-cee38f496771@linaro.org>
 <20230510105350.GC14287@atomide.com>
 <d56d0441-2e0f-6280-7a2e-2a426690fb01@linaro.org>
From:   Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <d56d0441-2e0f-6280-7a2e-2a426690fb01@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5/10/23 07:10, Krzysztof Kozlowski wrote:
> On 10/05/2023 12:53, Tony Lindgren wrote:
>> * Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [230510 10:51]:
>>> On 10/05/2023 12:38, Tony Lindgren wrote:
>>>> According to the pinctrl binding pinmux and pinctrl are valid controller
>>>> names. Let's replace pinconf with pinctrl so we don't get new warnings
>>>> when pinctrl-singl yaml binding gets merged.
>>>>
>>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>>> Cc: Dinh Nguyen <dinguyen@kernel.org>
>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>>> Cc: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
>>>> Cc: Ray Jui <rjui@broadcom.com>
>>>> Cc: Rob Herring <robh+dt@kernel.org>
>>>> Cc: Scott Branden <sbranden@broadcom.com>
>>>> Cc: Wei Xu <xuwei5@hisilicon.com>
>>>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>>>> ---
>>>>   arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 2 +-
>>>>   arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi              | 2 +-
>>>>   arch/arm64/boot/dts/intel/socfpga_agilex.dtsi               | 2 +-
>>>>   3 files changed, 3 insertions(+), 3 deletions(-)
>>>
>>> These should be either split by subsystem or you will have to push it
>>> through soc.
>>
> 
> FWIW:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

For socfpga_agilex:

Acked-by: Dinh Nguyen <dinguyen@kernel.org>
