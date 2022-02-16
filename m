Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB8894B8ACE
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 14:52:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234745AbiBPNwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 08:52:43 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233551AbiBPNwm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 08:52:42 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A2C2C66B
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:52:30 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7D0AD3F1B1
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 13:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645019549;
        bh=+u3G+MrAEMAW+mtUoAjTz+xCLc5uSGE/HUeUgcjxmOo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=nq+iRN/Hjl5Mc2ni1rrHQvYYvdBvlINV0u5ZBSfTSWk0pp9DYQlx9aWS8wGdxWaMv
         pGzMkMMBHxg79s66xRngzMCYehUmy+4j4jtifqGgE/q4sKQ773to/yT4Jxac/P8SLa
         yOnOxfnfEFzWwAmB4DbC8brBiJUMEWwPnpCTFINsEeVKsKXRUyWWrCImdwAsDxJONH
         FLZWdmddK54SuBDSeULpOsUhS3OSID//su4vYo+y4tunfNGznRsaqdPS4oGG2A0TqK
         POyw7AJjTUC3lWbMeScZz1+Et4OhrWLMsmzYk8GNSAggai0EuoT3GCnb9zdzaBgv2A
         1FAZR4fIuMjdg==
Received: by mail-ed1-f70.google.com with SMTP id n7-20020a05640205c700b0040b7be76147so1585260edx.10
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 05:52:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+u3G+MrAEMAW+mtUoAjTz+xCLc5uSGE/HUeUgcjxmOo=;
        b=pzq5nD6lYVLEau0Q4J9Cqp8BG6faGa5iGye1W+Bw675fYMtVuPzToZEAzmKt9fmhus
         V7JtYVZMYnZEmWhx2d/uyyqH31cr/qIC8Zk0UO5kTlRCULtsBkmAnYejxryPfcBJF7JJ
         XsSGIiASlIVJk5br7DfGbovLNcUC2KWAQWEIdPz1oYs/j8x4rUVxa8DvdNIEuX0bmhWN
         o/H/bp3Mhzd1r5Kvi5pXkyF/U69DMHB1tCnwYHmCFWlZcqSoftwlvdVJTj301Ym0DJ6Q
         AdiY6oppLJDIiWV1y92ZW8aHiqCKloPnXXJ/ZRAqjRZPtt+P5NtiR63xy8nLB280IYLg
         bOMQ==
X-Gm-Message-State: AOAM530AtcoU0vnMHv92PPLKNOCRkkKW5yhXc0XtAK5L87+lJLFoyFn1
        iNyYi6GB+dKFZ7UYVCVLJ7upFxuYKk/HoeMLvNgyFCw3wm2EJj6bzmBcLVbmapmFEIunB9dQBqp
        uuVihSTtHMR56rzSOtOICJUbm5gH2pyGX5HRqSFc=
X-Received: by 2002:a17:906:19c6:b0:6ce:98a4:5ee6 with SMTP id h6-20020a17090619c600b006ce98a45ee6mr2281090ejd.567.1645019549169;
        Wed, 16 Feb 2022 05:52:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzW2HrTL0uringouCMD72CnotetELfh4Fjh7yW1sonUt6QsRLSa5CjdTsYI7/InWwk6SfSpPg==
X-Received: by 2002:a17:906:19c6:b0:6ce:98a4:5ee6 with SMTP id h6-20020a17090619c600b006ce98a45ee6mr2281080ejd.567.1645019548973;
        Wed, 16 Feb 2022 05:52:28 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id q8sm1679538edd.10.2022.02.16.05.52.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 05:52:28 -0800 (PST)
Message-ID: <d888abdb-95be-9e7c-cbce-ea583780eb22@canonical.com>
Date:   Wed, 16 Feb 2022 14:52:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: firmware: arm,scpi: Add missing maxItems to
 shmem property
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <f6d1ea27e8b8dc47fbe849661cc5a843bc2f1ba5.1645017656.git.geert+renesas@glider.be>
 <e6ddc2fb-7753-ae89-e9fd-f2b9efd91881@canonical.com>
 <CAMuHMdU03=jkL0EkupBQmSDGOO7WHz7JtwHQWZpbFOwAB4pXhA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CAMuHMdU03=jkL0EkupBQmSDGOO7WHz7JtwHQWZpbFOwAB4pXhA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2022 14:42, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Wed, Feb 16, 2022 at 2:39 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>> On 16/02/2022 14:21, Geert Uytterhoeven wrote:
>>> "make dt_binding_check":
>>>
>>>     Documentation/devicetree/bindings/firmware/arm,scpi.example.dt.yaml: scpi: shmem: [[2], [1]] is too long
>>>
>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>> ---
>>> Exposed by commit 39bd2b6a3783b899 ("dt-bindings: Improve phandle-array
>>> schemas").
>>> ---
>>>  Documentation/devicetree/bindings/firmware/arm,scpi.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
>>> index 800417a76bda0bd9..3735f221fdf24e0a 100644
>>> --- a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
>>> +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
>>> @@ -51,6 +51,7 @@ properties:
>>>        be any memory reserved for the purpose of this communication between the
>>>        processors.
>>>      minItems: 1
>>> +    maxItems: 2
>>
>> The same should be done to "mboxes" (I mean 39bd2b6a3783b899 and what
>> you are doing here)
> 
> Indeed, thanks!
> 
>> and the maxItems should match both, shouldn't it?
> 
> No idea, I'm not familiar with SCPI ;-)

Neither I am. The driver though counts number of mboxes and then loops
till that number to get each shmem device node. The driver does not
limit number of mboxes or shmem to 2, but will fail if they are not equal.

Best regards,
Krzysztof
