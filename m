Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCE09639D7A
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 23:05:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiK0WF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 17:05:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229758AbiK0WFW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 17:05:22 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FCE7FCC9
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 14:05:21 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2C65885031;
        Sun, 27 Nov 2022 23:05:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1669586719;
        bh=6zaI66jEeO2Fjsy03JP69qs+QC38B9jJX0DMJRTYeDY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=zyWoJ1W6DsrSoQzl66yxjLFXzMSS3NxxZxHvZqJwdDGZc9YItyJJ0Q3FTpfFw0wcy
         +ZR+oCg5KxewS7r+f9KbBkGVray26YrNUPbtoQDo8+8sWWJzK5AwoNbU4lDlhDwgop
         ceSp83O6XaAlNK6HvDsbZqLnAfPUPznbzSdD/awzRTZSA6cvQozViCIZ2MdxXUOLwC
         qkhfNsEzrtl1fHQlCxN+QhlHpSzCnaXfHr+HIJhbbrRqz0C4G0oacpEMptsIMZem8w
         UA+Ceff/+edn7l+ueMN6mELbE1BJCgYHW+K8ne+0oy+bjggyiQRZQWjA+AB7K1GNUW
         +LQmo3YDd1f4w==
Message-ID: <f54b0c3f-07c5-32bb-b64f-b2986c35d7c3@denx.de>
Date:   Sun, 27 Nov 2022 23:05:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/3] [RFC] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20221027225020.215149-1-marex@denx.de>
 <20221028212838.GA2286583-robh@kernel.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20221028212838.GA2286583-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/28/22 23:28, Rob Herring wrote:
> On Fri, Oct 28, 2022 at 12:50:18AM +0200, Marek Vasut wrote:
>> Add trivial bindings for driver which permits exposing syscon backed
>> register to userspace. This is useful e.g. to expose U-Boot boot
>> counter on various platforms where the boot counter is stored in
>> random volatile register, like STM32MP15xx TAMP_BKPxR register.
> 
> Generic bindings always start trivial until they get appended one
> property at a time...
> 
> What happens when you have more than 1 field and/or more than 1
> register?

If it is a continuous register array, the user can use the size field to 
describe such register array here.

If it is a sparse register array, multiple nvmem-syscon nodes would be 
needed. I haven't seen anything which would require one node for sparse 
register arrays, like boot counter distributed across multiple 
non-continuous registers or such.

>> +properties:
>> +  compatible:
>> +    enum:
>> +      - nvmem-syscon
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    tamp@5c00a000 {
>> +        compatible = "st,stm32-tamp", "syscon", "simple-mfd";
> 
> This is very common, but personally I think "syscon" and "simple-mfd"
> should be mutually exclusive. "simple-mfd" is saying the children have
> no dependency on the parent, yet the child nodes need a regmap from the
> parent. Sounds like a dependency.

So what exactly should be changed here?

>> +        reg = <0x5c00a000 0x400>;
>> +
>> +        nvmem-syscon {
>> +            compatible = "nvmem-syscon";
>> +            reg = <0x14c 0x4>;
> 
> How does one identify this is the bootloader's boot count?

The user has to know where the boot counter is stored (by hardware 
path). I wouldn't attempt to assign any complex logic here, since the 
boot counter could be implemented in various ways. Besides, this may not 
even be a boot counter, but some other variable exposed to user space. 
Maybe a unique node name can be used to discern the different 
nvmem-syscon nodes representing different variables if needed.

> How does the
> bootloader know it can write to this?

The bootloader implementer selected the bootcounter register based on 
hardware knowledge .
