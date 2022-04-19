Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F1AD507194
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 17:21:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353767AbiDSPXi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 11:23:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349921AbiDSPXh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 11:23:37 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 134B122B2A
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 08:20:55 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id d198so10565374qkc.12
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 08:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vkYrrmqPcGmgSkkkQEksrt68tTlBgE3AudQ0SAaErG0=;
        b=ZNvF8FXU6m+z11Sjgrwqys9u038NIP3gNgbpU1lRBvUcYm5EoTZthq/agsavfzXXfa
         uNdLsThxdoSNs/0zYBigyw+1NnXcJCI+HLcCK6nt1jjkO1iauq/FhB/bInFhAgRRsHpd
         e8oCH6z0dXgZuWVu56tn/W4suEkQDA24X7RBVmhGJPJS5I9NRRKYyQ6A02LPasFJOrRy
         iG47ym3g1Kix0kA+0/wzhORZzBHhME4vTfFyo6EVdF5F7aXhE9OpO2brMJ1KjJDUU9p2
         cpbFHjwVmcB3cituaVdeTE8xQA+jrxe/5RxAoaoSCTuUA+UosRjv7ybitsEPf/A1pG0Y
         m15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vkYrrmqPcGmgSkkkQEksrt68tTlBgE3AudQ0SAaErG0=;
        b=ZMk8brfJ108O1890PHsxWFGEdDfENm+IseHNHkOtQoksl0yhCMWpIH0XwctPXuv53z
         x/UC5bJlxw72P6+N2IIf9/p79BG6jLTBY3Quqma4vvUkfRRVxG/4liXwDtc5gKrT+kkD
         CffRL87UUVt2HXpbrgIkIAffWQxJfhjQ1tQgPzXj/bHicMKv09mlG2PHLlz1FzUuSoyV
         QxH6akxZ/yn8luZgyPHKb0JFE2AueAQnMefX50sEFi3+nNAq7BS8aLEzVVPPsd/7ntVn
         F/+y6iwFM+5zRbOgB/LAZJUec5AtB9X/bkKblQA8ExJ8avAcuJHF+4AlU8qPY4KaLsk3
         soRg==
X-Gm-Message-State: AOAM530Sd/ohNqeCecbih5OqQ4XcYgW0BICH29RP39zyYNHxlNSWHF/m
        nJiPpln5KE/eaPj7+rRsnjQ=
X-Google-Smtp-Source: ABdhPJwhA0KyWmTUFXUfn8c8ZebpFY2Uk3fDo4IOHyxGShY3Retk4XzGf+8fseiVR67DpoHfAOJx3A==
X-Received: by 2002:a05:620a:4154:b0:69c:6976:1ee4 with SMTP id k20-20020a05620a415400b0069c69761ee4mr9942754qko.463.1650381654240;
        Tue, 19 Apr 2022 08:20:54 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:98ed:ab24:32f:21f2? ([2600:1700:2442:6db0:98ed:ab24:32f:21f2])
        by smtp.gmail.com with ESMTPSA id k9-20020a05620a0b8900b0069c24c8d329sm134937qkh.87.2022.04.19.08.20.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 08:20:53 -0700 (PDT)
Message-ID: <c3e31c55-01c2-5784-1e97-5af083c1a0c1@gmail.com>
Date:   Tue, 19 Apr 2022 10:20:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] of: overlay: do not break notify on NOTIFY_OK
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>
Cc:     =?UTF-8?Q?Nuno_S=c3=a1?= <noname.nuno@gmail.com>,
        =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        devicetree@vger.kernel.org,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Alan Tull <atull@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
References: <20220404074055.95618-1-nuno.sa@analog.com>
 <01e77fbd-5c26-6b15-be1f-f962aa4190c6@gmail.com>
 <9bde64d0c05a37e72fabbeb39d8d2fe099526917.camel@gmail.com>
 <654db7b8-1254-88e9-f668-b1b14abc3e3e@gmail.com>
 <CAL_JsqKjuOEdzB4SH6MB0bH58D5ys3RLhi=T8DhWQRuwMhbJOA@mail.gmail.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <CAL_JsqKjuOEdzB4SH6MB0bH58D5ys3RLhi=T8DhWQRuwMhbJOA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob, Nuno,

On 4/19/22 09:48, Rob Herring wrote:
> On Tue, Apr 19, 2022 at 9:32 AM Frank Rowand <frowand.list@gmail.com> wrote:
>>
>> Hi Rob, Nuno,
>>
>> (adding cc: Alan)
> 
> Alan is not active and Altera doesn't exist.
> 
>> You just applied the patch at the root of this email thread.
> 
> Well, no one had commented further after 2 weeks and the patch looked
> like a move in the right direction as-is.

Agreed.

> 
>> Please either revert it and accept the alternate that Nuno
>> suggests below, or if you do not want to follow that path,
>> then Nuno please add a follow on patch that does what you suggest
>> below.
> 
> Okay, Dropped as it's not pushed out.

Thanks.  I thought that might be possible...

Nuno, can you please create the alternate patch you suggested?  It
also fixes the additional problem that you noted.

-Frank

> 
> Rob

