Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC51A5F77F4
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 14:30:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbiJGMa4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 08:30:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbiJGMaz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 08:30:55 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C76DC06BE
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 05:30:54 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id f9so5509734ljk.12
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 05:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sl0pmb3uiIXfqxJIrjyGTopaOTOA1QmL6GGeThbq/gk=;
        b=VreGiA1OECe4NiF0/XwhBtbi4eB9KZ+9NV6+f9Y8RfxwX8ca1jR97+cSqkuMYPqqgj
         yUCU3r9ibdxxQhDMirdHIlYloVqOygrknPwP9qYYeRJtN56J1U0HoR4yFEc2Ryr5wL86
         qmxLbiUXDmter6bhvWAytZijz1IJKvlJbclPVMa2ktQEhLMHTLewkyazDwq20AnXCk7M
         CcznWHFZpNAM4vT+Q0f0IeEebevPTi6lSXS5qFgo1A9K1Ux/pQPLtCeGqpSVeLozRir1
         wo69SiapPq+LsG3UszabHAfE9Jp5pbiQ/iRRLgzBH/jYfBCxOt2pSLUeTtDiEWhu9aWj
         EPSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sl0pmb3uiIXfqxJIrjyGTopaOTOA1QmL6GGeThbq/gk=;
        b=N25JRMJ9hjvihNVKmL1fH6J0EQdlUvsui1/qN+UGkM5O6qw6EYOnR+xtRTejLbx1Nd
         32s9szmjQwaTwboHbeW3CEl8BTGdKPRP6cEPzPg0YIkJu4JP9vuJd+USD6P5KVh66/I0
         AqoUgHs7K3t2fhfIXKZf3EtF4+csgZUaAF8IvTNmuJaGTGt8/4ZMbbs6BVBT9EpLnyeF
         VHrX4fYBjzaBR6gGbqmel/Oy0WbCMPdYUZrJ8QmjyfQIklwOD5Rv9Z5ZBS0m0SyTbnMt
         +zzXz/93pIaWtLhLpbDlpOaGXh4j4Hg2utqfz7hfpUnJyHZi7WxEZ6KaQT7BtCwHbJjm
         OdRg==
X-Gm-Message-State: ACrzQf1io/SY3vXo7oom9DoYx6M7VW1XZxTNklFSW9oIOx1+wwhffoz6
        4Gxwog0cCDI4eHKBGgz4rAGK1Q==
X-Google-Smtp-Source: AMsMyM5r2nYzPj6PjLR2AsCaxJAvVIodoql/ZB8ZdFLqj/nH2kD2KVdtp2g2gTuR2TniG3+VD3pEsg==
X-Received: by 2002:a2e:bd0e:0:b0:261:e718:e902 with SMTP id n14-20020a2ebd0e000000b00261e718e902mr1719392ljq.435.1665145852795;
        Fri, 07 Oct 2022 05:30:52 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u1-20020a056512128100b0049f530939aasm281434lfs.126.2022.10.07.05.30.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 05:30:51 -0700 (PDT)
Message-ID: <e1e89092-272e-3cca-6459-f129d8c5627c@linaro.org>
Date:   Fri, 7 Oct 2022 14:30:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [EXT] Re: [PATCH v5 1/2] dt-bindings: uwb: Device tree
 information for Nxp SR1XX SOCs
Content-Language: en-US
To:     Manjunatha Venkatesh <manjunatha.venkatesh@nxp.com>,
        Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Will Deacon <will@kernel.org>, Jens Axboe <axboe@kernel.dk>,
        robh+dt@kernel.org
Cc:     mb@lightnvm.io, ckeepax@opensource.cirrus.com, arnd@arndb.d,
        mst@redhat.com, javier@javigon.com, mikelley@microsoft.com,
        jasowang@redhat.com, sunilmut@microsoft.com,
        bjorn.andersson@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, ashish.deshpande@nxp.com,
        rvmanjumce@gmail.com
References: <20220914142944.576482-1-manjunatha.venkatesh@nxp.com>
 <20220914142944.576482-2-manjunatha.venkatesh@nxp.com>
 <78651e07-6b3e-4243-8e1f-fcd1dfb3ffe1@www.fastmail.com>
 <425858dc-59fe-2311-61ae-3b6dc77a2576@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <425858dc-59fe-2311-61ae-3b6dc77a2576@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/10/2022 13:39, Manjunatha Venkatesh wrote:
> 
> On 9/14/2022 8:06 PM, Arnd Bergmann wrote:
>> Caution: EXT Email
>>
>> On Wed, Sep 14, 2022, at 4:29 PM, Manjunatha Venkatesh wrote:
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - nxp,sr1xx
>>> +
>> You should not have wildcard names in the compatible string.
>> Make this a specific model number without 'xx', and
>> have the devices list their own name along with the oldest
>> one they are compatible with.
>>
>>       Arnd
> This driver is common for both sr100 and sr150,so we have used sr1xx
> naming convention or can we use name with highest version(sr150)?

In general each device needs its compatible, so you would need two of
them. However if one is compatible with the other, then express it as
well. IOW, driver binds to one compatible, binding describes both (one
as fallback). There are many, many of such examples in the kernel.

Best regards,
Krzysztof

