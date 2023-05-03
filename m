Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAE7C6F5A36
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 16:38:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjECOiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 10:38:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbjECOiR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 10:38:17 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5F4E4ED2
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 07:38:16 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1a50cb65c92so39391875ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 07:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=landley-net.20221208.gappssmtp.com; s=20221208; t=1683124696; x=1685716696;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MqmgaF6XuhoP3wVySW9wMw/5e4e5ZeEPQvDfp5gqtPc=;
        b=iS606Z5luysqGmnm8LiWHEq33H+J8gFsDpuK0cQnXPDYwlekDNMUT5maEar7AwIbEp
         PWR9gz0TKhZuJ6zPNGznrmHwGe4XYTroBbIzljyh7xvXtnzjb5fRKUHrY8FaqyePK1IW
         wa9MxIKBOr5V4whrygrCEsq8h6hbalIob7riuQ9QPD+gB+Ap3Q6Goln9CqjBPGHG6hgW
         385NRCRWVhZM6BhezJloBCcAPF+CA2rUUrDCEXIlXoOCcwID6usVdUBHwzUkfcKBojOW
         Mva/LMDi6Keq1ROfD6N24Es5HNoq8vwouy+0dh/IuQDZ5DmWy9zn04LigovB1h6cYgYS
         bUzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683124696; x=1685716696;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MqmgaF6XuhoP3wVySW9wMw/5e4e5ZeEPQvDfp5gqtPc=;
        b=kMdGXkxSWUz+GeOpSYiDIDlUsuX8gDofXOtrp+WtrVODGSAYptXW3eLfp86lEWCJqs
         tj7q2vIQu33EB/Axh73VLaaAMsgGizcE3/EN9mjvPa4xkcwXqIIgDIaL8PYvaPylQbVU
         XP0cYxF/Ei/x6T3od1BofY6Z0NB4dy3ScrBswaoy9RA5mo1edz1hKqbVJFLo6BD8++Up
         VevcgXrIl6bBX6FmbsyKZpbwh/IJznTlkHNZk002i8zhdpdMcr3jnhh67QE9jR/fSzhs
         9+5QJY037mPMhfsjZSlSjT5xpFW6ceXQYOLZwM4/UIm3vOz5QkZJVK4GAk5OkOhHS86l
         wnlQ==
X-Gm-Message-State: AC+VfDwlNJMEOVGgjqlIQ+plHtaJjeKEnvW/1toQ3VIFOlguz5Th1oFe
        V9RwXDwx9hloWojdeYSXc4HasDuOOVD+fgHMC5mogg==
X-Google-Smtp-Source: ACHHUZ7LKWeDu4mNX/UGZvHWj1REv9YZWjc+UocrEOkZjtIoLd6PzrjIYhy6tzdYnU2wb98xcV7eyg==
X-Received: by 2002:a17:902:edc7:b0:1ab:220a:9068 with SMTP id q7-20020a170902edc700b001ab220a9068mr268982plk.42.1683124696040;
        Wed, 03 May 2023 07:38:16 -0700 (PDT)
Received: from [192.168.33.147] (124-110-25-102.east.xps.vectant.ne.jp. [124.110.25.102])
        by smtp.gmail.com with ESMTPSA id u8-20020a170902bf4800b0019c13d032d8sm21708371pls.253.2023.05.03.07.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 07:38:15 -0700 (PDT)
Message-ID: <fdcef275-c4ca-5c12-3906-ba32db1386f4@landley.net>
Date:   Wed, 3 May 2023 09:53:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Fixing "int-to-pointer-cast" warning in J2 code
Content-Language: en-US
To:     John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
        Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     linux-sh <linux-sh@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, "D. Jeff Dionne" <jeff@coresemi.io>
References: <eed749a0ec500edf4f70a50578eaa50803fdaf3c.camel@physik.fu-berlin.de>
 <CAMuHMdWOJn97KMBa0YoQo+a7tGDwMTTQ8YPHT7VJ2zJjEYEV0Q@mail.gmail.com>
 <3a42b3b3da5499f1ec1e24f618dd46a75503da16.camel@physik.fu-berlin.de>
From:   Rob Landley <rob@landley.net>
In-Reply-To: <3a42b3b3da5499f1ec1e24f618dd46a75503da16.camel@physik.fu-berlin.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/3/23 05:50, John Paul Adrian Glaubitz wrote:
>> BTW, "jcore,cache" does not have any DT binding documentation.
> 
> Jeff or Rob should look into this.

I'm looking at Documentation/devicetree/bindings/cache... (yaml files?) but am
not as of yet enlightened. I can poke Jeff in the morning.

Rob
