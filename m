Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5048F5EDD2B
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 14:51:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233735AbiI1Mvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 08:51:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233942AbiI1Mvb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 08:51:31 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E01BF2D74F
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 05:51:29 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C9103849E9;
        Wed, 28 Sep 2022 14:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664369487;
        bh=niFYU9JNexGdtrIEgwWXPtoMx2e+cBNGPmmVKn0J13M=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=R7YU3ac/gK49qktq9rmPGp64IHRMlOKKg7WA3GKBwUN1t4CjtOM1vyI44jbzihciD
         cBJqSRXsgkE6gqd/TuiTPDPCXL9RqvLroPgW+Yq/2e629dg5wb/x6YebP8ih50C0yL
         sDJ6yvdOK0glyz4dZlZHoXBNjY27dQ29ckQfrUCeniv0iPAEG8F6he6w1/QDHcF3i6
         5QDuUn4Y+cjb5inE0WXPMAOKteZAHhpMB93NHM2Zr4orDpemaP+W/uXY7EGJBx0wzv
         y9IFvIKI/Jzzl5zaeD/uPpzIXT3Zs6Lxnwl4pkKku+HB+mGEIL3KQJC8HlWnSe66Tw
         siApaUOq0+9Lg==
Message-ID: <58ce0d1b-d957-6d45-7436-a397a8426107@denx.de>
Date:   Wed, 28 Sep 2022 14:51:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] dt-bindings: memory-controller: st,stm32: Fix
 st,fmc2_ebi-cs-write-address-setup-ns
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     christophe.kerello@foss.st.com, robh+dt@kernel.org,
        mcoquelin.stm32@gmail.com, devicetree@vger.kernel.org,
        alexandre.torgue@foss.st.com,
        linux-stm32@st-md-mailman.stormreply.com, linus.walleij@linaro.org
References: <20220926222003.527171-1-marex@denx.de>
 <166434910296.10148.2597210651020575227.b4-ty@linaro.org>
 <c54f15a6-b4e6-d512-654f-28819eeaab4c@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <c54f15a6-b4e6-d512-654f-28819eeaab4c@linaro.org>
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

On 9/28/22 09:12, Krzysztof Kozlowski wrote:
> On 28/09/2022 09:11, Krzysztof Kozlowski wrote:
>> On Tue, 27 Sep 2022 00:20:03 +0200, Marek Vasut wrote:
>>> The property st,fmc2_ebi-cs-write-address-setup-ns should really be
>>> st,fmc2-ebi-cs-write-address-setup-ns (there is underscore _ between
>>> fmc2 and ebi and there should be a dash - instead). This is a remnant
>>> from conversion of old non-upstream bindings. Fix it.
>>>
>>>
>>
>> Applied, thanks!
>>
>> [1/1] dt-bindings: memory-controller: st,stm32: Fix st,fmc2_ebi-cs-write-address-setup-ns
>>        https://git.kernel.org/krzk/linux-mem-ctrl/c/587f9891ec9661e16df7e5268543416a7d8cb547
> 
> Just a note: it's late for me in the cycle to pick up patches. I applied
> this but there is a change it will miss this merge window.

That's no problem really, it's been broken for so long and nobody 
noticed, that one cycle won't make much of a difference.

> If that
> happens, I will keep it for next cycle (no need to resend).

Nice, thanks !
