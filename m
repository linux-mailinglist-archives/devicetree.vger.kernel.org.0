Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 102BB4FDBBE
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 12:59:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237580AbiDLKGp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:06:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385414AbiDLIvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 04:51:39 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0993E6352B
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649751157;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=zFHlbK0japjHffg40bdXVsPfsdU3+EFcf4YoUEiJmSg=;
        b=Kqb2l7gBcGEFiUfxKjagipWfiXpQ8b3lnau5+NHFSDT71QxyVQi2W0GIb2hgUKN9DpCtuq
        RqffnswzJ4meLzeTrFTxJ4s9vvZZ+5OPDCEQsXj/ILFbyzidqGnR75crf4wiFgyzDMttS6
        U0lNNXY0w+nu8d6HXgqE4UmS19Du2XE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-59-t3RW8QIjNkyNCP3MCorZQw-1; Tue, 12 Apr 2022 04:12:35 -0400
X-MC-Unique: t3RW8QIjNkyNCP3MCorZQw-1
Received: by mail-wm1-f70.google.com with SMTP id 129-20020a1c0287000000b0038ec2634900so1270258wmc.6
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:12:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zFHlbK0japjHffg40bdXVsPfsdU3+EFcf4YoUEiJmSg=;
        b=qs14Qz/C9FHtAV9nJQVTPgNrRzgwkyWwwdH7VI8bpu6yuRdjGGSbfOsBtxrRJO9DuG
         hMMvc2RVrti3JGHrJyTpaeA09alFMvnPZ5EgXqf0sDvMddY3E4oik/rqzjaT9/XIQbjC
         IUs+mkE5a0yGfI/XSDiyBwpNAPp6YJrmWnYpBEhVjbRKTmmN/oIu+4j9ISygCvuvA1dD
         pAfXSBBXAlPV3HNyGwHCYRTauHP0L3t3TdkPqnBEOwaZptgX0d673aCKNvuWtSdZnRnZ
         9sC3DMzGf8fOOzoL0Alz/MsvmcyExtqc2NptG2tTl0snBSIGktmVBH4Wj3mQb82JhIeH
         t1XQ==
X-Gm-Message-State: AOAM532LpWtnh+K9rUwuYmQ6pThsjHqCq7frSngn4m9Gb31jf4JNkj/+
        lqjfp5ssCJfThZw/jsFnqDmGxLRaZPECb+DJzaSl37wLdZekBmmptVm67I+ffSoSc2Tu7Smjmvf
        8TAq+QmWHQNbyFeHKSuSnFg==
X-Received: by 2002:a05:6000:1d82:b0:207:adeb:b797 with SMTP id bk2-20020a0560001d8200b00207adebb797mr1928059wrb.324.1649751154630;
        Tue, 12 Apr 2022 01:12:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxt98E//kt764pUHc3CVnmZDCrv78xLuC2Tfbz+tDxYuSTUqiaZB/q3FZcTJYIYyWPsTk0KGw==
X-Received: by 2002:a05:6000:1d82:b0:207:adeb:b797 with SMTP id bk2-20020a0560001d8200b00207adebb797mr1928045wrb.324.1649751154440;
        Tue, 12 Apr 2022 01:12:34 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p3-20020adfaa03000000b00207a1db96cfsm7503196wrd.71.2022.04.12.01.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 01:12:34 -0700 (PDT)
Message-ID: <c3287f86-636d-33dc-c763-1f28803704f5@redhat.com>
Date:   Tue, 12 Apr 2022 10:12:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/5] dt-bindings: display: ssd1307fb: Extend schema for
 SPI controllers
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        DRI Development <dri-devel@lists.freedesktop.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20220411211243.11121-1-javierm@redhat.com>
 <20220411211243.11121-3-javierm@redhat.com>
 <CAMuHMdVuivPSRooR5CqTX6GQtxO6RQYwKUqfOK36zsiN8-v6kg@mail.gmail.com>
 <d37de4b1-55f7-ff4d-6230-6f0b6e65799c@redhat.com>
 <CAMuHMdV_4Gp2fqfCTeUigVxK=J4NF=SqJVd1hKAWpyuUv0Pnzw@mail.gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAMuHMdV_4Gp2fqfCTeUigVxK=J4NF=SqJVd1hKAWpyuUv0Pnzw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/12/22 10:07, Geert Uytterhoeven wrote:
> Hi Javier,

[snip]

>>
>> Do you have any hints here on how I should enforce this in the schema ?
>>
>> Or if you think that a comment is enough, then I will add it in v3.
> 
> I don't know how to make it required for SPI, if possible at all.
>

I see. Let's go with a comment then and we can later enforce it, if someone
knows if is possible / how to do it.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

