Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4818A4F899B
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 00:14:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230394AbiDGUly (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 16:41:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbiDGUlm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 16:41:42 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F76721A0EF
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 13:27:39 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id z7so8303238iom.1
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 13:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=l+TbYpgeuoLDrMZa9SWqKkghfMiQ60t6M55ctbBoK0w=;
        b=FblYg6b7haKeyVaW2Cro9B6uHGMP5AIO8oLq4Q0PMdZbJ+ODlyJWC1qVb8Wedka1J9
         b6hvYEaFEIoz4VfNmXeYfXx1yBYXfwoolwNqU0JWJyVMbIAeXSC9xuwsYpindhziaZZc
         37uss+QuMHXfg2YtW+eSakXraeyNglUJyscIwLSh75rsiNuzzkiGaw3jJwskvLbq66Q3
         X7qakd/JTLPn5hZ127uHqCDsD7fIPVoJpluNrhM6jZfY2qx/V5+bC1elSqzRIYJ7g7sl
         XNxlCI6YvMowEoJRcvz+HmY/bosk7X4Oz9SThD1NL5EtVzE2gD6/7sIG5OfeKN+Dhztz
         nvdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=l+TbYpgeuoLDrMZa9SWqKkghfMiQ60t6M55ctbBoK0w=;
        b=yUbiCb3uPsSB6CXg+p/gSWw8ZNHUfQkc5xqcuyNDZDMZFV/X/lGSwk5bdk15qUczKU
         EpFQssIZUuHs+Ry32xFCU8yEafSoGTYMQUQuZRxYtbtHbVCt7PUDIwZwwv3eUgk4MJmY
         7sFNz+sLPYspz4u517e8i3ADpKjO6KaaL4Ub1pyL/II1hIeICBDMJ7Wm0KHbMi14Oz9t
         GE8y/2zjtkb/LBWEN/FGNRyExYFSxIOi/lMVn7I0ouWaDGxiq72v2VfYPIxP8nk7BNR7
         pYjjG4Ynojcjq/Nh6hItzL7dEIP60CJlZSelzlqLjnMBO0Zg7fM0XUW5BRunmAf1reCZ
         2xLA==
X-Gm-Message-State: AOAM532iqSl/ARMaLcddlkR1427vRmbBq/zMwajK3hJmSfDOs8PqcvpA
        pU4GgThspPFAUp/6CIgqgmmbAH99jcw=
X-Google-Smtp-Source: ABdhPJzBabf15zT5dcJpoLdeg/y94dXA3GHi6n4FoMj5QFP6z3+BVemZ2GICekEVdKQj+mI2D7PFsA==
X-Received: by 2002:a92:c545:0:b0:2ca:1066:3d6 with SMTP id a5-20020a92c545000000b002ca106603d6mr7625710ilj.229.1649361189716;
        Thu, 07 Apr 2022 12:53:09 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:b950:63fd:79c2:9641? ([2600:1700:2442:6db0:b950:63fd:79c2:9641])
        by smtp.gmail.com with ESMTPSA id m7-20020a056e02158700b002c61541edd7sm13228525ilu.3.2022.04.07.12.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 12:53:09 -0700 (PDT)
Message-ID: <2f5b4459-3fbe-a2b1-def4-e45475599c28@gmail.com>
Date:   Thu, 7 Apr 2022 14:53:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] of: overlay: set 'overlay_tree' and 'fdt' fields only on
 success
Content-Language: en-US
From:   Frank Rowand <frowand.list@gmail.com>
To:     Rob Herring <robh@kernel.org>, Slawomir Stepien <sst@poczta.fm>
Cc:     pantelis.antoniou@konsulko.com, devicetree@vger.kernel.org,
        krzysztof.adamski@nokia.com, tomasz.medrek@nokia.com,
        alexander.sverdlin@nokia.com
References: <YkV60TQ+d3sltkNU@t480s.localdomain>
 <YktXKR0kI+Aq5sW/@robh.at.kernel.org>
 <4375072d-abb4-6ff6-d1a0-4c2fca54cf39@gmail.com>
In-Reply-To: <4375072d-abb4-6ff6-d1a0-4c2fca54cf39@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Slawomir,

 On 4/4/22 16:02, Frank Rowand wrote:
> On 4/4/22 15:38, Rob Herring wrote:
>> On Thu, Mar 31, 2022 at 11:56:33AM +0200, Slawomir Stepien wrote:
>>> From: Slawomir Stepien <slawomir.stepien@nokia.com>
>>>
>>> Before this change, the memory pointed by fields 'overlay_tree' and
>>> 'fdt' will be double freed by a call to free_overlay_changeset() from
>>> of_overlay_apply(), when the init_overlay_changeset() fails.
>>>
>>> The first free will happen under 'err_free_tree' label and for the
>>> second time under 'err_free_overlay_changeset' label, where we call
>>> free_overlay_changeset().
>>>
>>> This could happen for example, when you are applying an overlay to a
>>> target path that does not exists.
>>>
>>> By setting the pointers only when we are sure that
>>> init_overlay_changeset() will not fail, will prevent this double free.
>>
>> It looks to me like the free should just be moved from 
>> init_overlay_changeset() to of_overlay_fdt_apply() where the allocation 
>> is done. Frank?
> 
> This patch is next on my list to look over.

Thanks for finding this problem.  While investigating what you reported
I found that there are additional related issues.  I am in the process
of testing a patch to fix all of the issues.

-Frank

> 
> -Frank
> 
>>
>> Also, I believe there's a bug that of_overlay_apply() should be passed 
>> new_fdt_align rather than new_fdt. It's only a bug if we expect 
>> overlay_changeset.fdt to point to a valid fdt rather than the memory 
>> allocation.
>>
>> Rob
> 

