Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 233EB5070A2
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 16:34:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231671AbiDSOf2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 10:35:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353470AbiDSOfZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 10:35:25 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CE771E3CA
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:32:37 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id d198so10405692qkc.12
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=36yPd8hRpBAtwmc9BbcuXuK1dDwsE+5q9Lw2l5HaECk=;
        b=lJw2pvlf5aQG7lTxb1WHpUHmXI7wu12++VUnDtF7iQTo0YP6PZZAqKfan/wzxLJBPa
         ubZO1RNlY8QOiVU5ezQoVTJbW8GDo+Od40jOQ9Xh9qnkR1QbJnB7eaippGJQ0nhBbX8E
         JFABajXyG3bIJnBtw2wwPC39ZreM22V4EZJNPh90RzwfaeaY6GoQDLGeRAcUO758rXpv
         pPeygw9qyKEs7OP5oYCWeoZBlFy2wgTmRl/5tdbhi/Gybi3EqwptkbPzddC0mmtvIC3k
         ZcCgamkt0fJ4VFcjQxwOvZVgMIgvLVCzUcvyVjUOjsWDzAIExOduu+tcq7YDW4j0iDuX
         l37w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=36yPd8hRpBAtwmc9BbcuXuK1dDwsE+5q9Lw2l5HaECk=;
        b=nmYNdnLua8uhZUMVmvHL1RfI32C8ztKFs8DGEs4UzifX/dE8JtRqSg9V6lp5ZmnV99
         2bKtVeXfyC7gYT67laK+FIJJHhfredjCwJkqhQq+pPZlPXmhEoOUy40ndUyCXTt+p/BB
         xA4pb22bNV7y8Eur4yaQ7qcucGb56WcplRqZAcbldtMhv4wffOP7HfSalf/zGk4/K2Kj
         WkVi61XNGDA+VNbclibEiIJvhR3knvW09h8mRwM7QVuCUPmhKT+tZmJ1oCBcUIBM8DRM
         Jx9L4xagGKbHQ5tw1WGes0dkIPnrb1kbNxmufaRKE3kmzBrgZnNU1P58B0ekObOnpAYL
         nJuA==
X-Gm-Message-State: AOAM532WFd+0XsJ0vhF+CcFlK+U90PY0PpZpNEDD8tbYtXSPLahk9m+v
        DFrpFBcOemEl2su6opwQIfE=
X-Google-Smtp-Source: ABdhPJxklBlhUP98RmmfoZay7wo7kZBet7NflSGuzdroUiMAkEzE8+0o7c+2Trg6Mf1/zJK/j7bafQ==
X-Received: by 2002:a05:620a:147c:b0:69e:6f6b:872b with SMTP id j28-20020a05620a147c00b0069e6f6b872bmr9465644qkl.675.1650378756523;
        Tue, 19 Apr 2022 07:32:36 -0700 (PDT)
Received: from ?IPV6:2600:1700:2442:6db0:98ed:ab24:32f:21f2? ([2600:1700:2442:6db0:98ed:ab24:32f:21f2])
        by smtp.gmail.com with ESMTPSA id b2-20020ac87fc2000000b002f11f6dd5cdsm106551qtk.23.2022.04.19.07.32.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 07:32:36 -0700 (PDT)
Message-ID: <654db7b8-1254-88e9-f668-b1b14abc3e3e@gmail.com>
Date:   Tue, 19 Apr 2022 09:32:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] of: overlay: do not break notify on NOTIFY_OK
Content-Language: en-US
To:     =?UTF-8?Q?Nuno_S=c3=a1?= <noname.nuno@gmail.com>,
        =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Alan Tull <atull@kernel.org>,
        Alan Tull <atull@opensource.altera.com>
References: <20220404074055.95618-1-nuno.sa@analog.com>
 <01e77fbd-5c26-6b15-be1f-f962aa4190c6@gmail.com>
 <9bde64d0c05a37e72fabbeb39d8d2fe099526917.camel@gmail.com>
From:   Frank Rowand <frowand.list@gmail.com>
In-Reply-To: <9bde64d0c05a37e72fabbeb39d8d2fe099526917.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

(adding cc: Alan)

You just applied the patch at the root of this email thread.

Please either revert it and accept the alternate that Nuno
suggests below, or if you do not want to follow that path,
then Nuno please add a follow on patch that does what you suggest
below.

-Frank


On 4/5/22 02:19, Nuno Sá wrote:
> On Mon, 2022-04-04 at 13:10 -0500, Frank Rowand wrote:
>> On 4/4/22 02:40, Nuno Sá wrote:
>>> We should not break overlay notifications on NOTIFY_OK otherwise we
>>> might
>>> break on the first fragment. As NOTIFY_OK is not zero, we need to
>>> account for that when looking for errors.
>>
>> It's been a long time since I've looked at notifiers, it will take me
>> some time to
>> review this.
>>
>> -Frank
>>
>>>
> 
> Yeah, it was also my first time looking at of dynamic code. But it just
> didn't felt right to stop fragmment notifications if someone returns
> NOTIFY_OK. In fact, I'm starting to think that even if someone wants to
> NOTIFY_STOP on the current fragment, that should not mean we should not
> send notifications for the remaining ones. So, maybe the right patch is
> actually something like:
> 
> ret = blocking_notifier_call_chain()
> if (notifier_to_errno(ret))
>     return notifier_to_errno(ret);
> 
> This would also be more in line (not totally identical) with
> '__of_changeset_revert_notify()'.
> 
> - Nuno Sá
> 
>>
>>
> 

