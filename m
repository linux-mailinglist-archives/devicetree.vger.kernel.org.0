Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A23F4FB092
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 23:54:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235581AbiDJV4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 17:56:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235085AbiDJV4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 17:56:05 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A5CDF73
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 14:53:53 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id DB56983B2C;
        Sun, 10 Apr 2022 23:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649627631;
        bh=rDk4YqaFWClbZiEqiOJn/EylFcY6wm9467QuB+/yLQk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=wrLnX+VFn45Y+C5Y4yq11SfCzg7xgcpYL828WcRsU/NjM3+wGe447xUFIiOfGogEt
         rVJZFCJvOSb9Mu195OF7T5za2ttpHFkVN+/kwNI2ENn84q3WtveITkC5S3nrDK00Ja
         uAJWnvAp9eYX0fQz7zWFe6q3wfSjJKjgWlOvhhmtENmS8GAYZSvIS7Wyik+9EXXOPX
         NSG7tg06GZmphuJU70Df0ozhx7c2219F0RZK8Gn+iCDu0GcUBFmTdA3IaFMQ7oWiFW
         uJvXV641XQP0u61vnqUk3U500MJIyPPabRJm2Pops+gvjurRpOeJ9U0qTm0WioMJJ7
         YcJBPpF95V18g==
Message-ID: <9f257474-3a77-8dc8-0cfb-325a79a7979b@denx.de>
Date:   Sun, 10 Apr 2022 23:53:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] dt-bindings: rcc: Add common clock properties
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Gabriel Fernandez <gabriel.fernandez@foss.st.com>
References: <20220408004412.663880-1-marex@denx.de>
 <YlCnZvdNbpVj/tch@robh.at.kernel.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YlCnZvdNbpVj/tch@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/8/22 23:21, Rob Herring wrote:
> On Fri, Apr 08, 2022 at 02:44:12AM +0200, Marek Vasut wrote:
>> Add common properties appearing in DTSes (assigned-clocks and similar)
>> to fix dtbs_check warnings like:
>>
>> arch/arm/boot/dts/stm32mp153c-dhcom-drc02.dt.yaml: rcc@50000000: 'assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>> Cc: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> To: devicetree@vger.kernel.org
>> Acked-by: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
>> ---
>> V2: Add AB from Gabriel
>> ---
>>   .../devicetree/bindings/clock/st,stm32mp1-rcc.yaml          | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
>> index a0ae4867ed27e..9bcf198bae170 100644
>> --- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
>> +++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
>> @@ -62,6 +62,12 @@ properties:
>>     reg:
>>       maxItems: 1
>>   
>> +  clocks: true
> 
> How many and what are they?

0 or 1

>> +  clock-names: true
> 
> Needs exact names.

I'll send V3 soon.
