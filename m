Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C984FE187
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 15:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354846AbiDLNF4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 09:05:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357642AbiDLNEw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 09:04:52 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0B43B2AC52
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649767773;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=6aZBKTB5BdnestxMdj/07bW+IS1GqohyMIbIwvT48vw=;
        b=WHuZBdrokSJ+Qlz0hzQYsEXGsa7kr2s522yjSMAuwa9qjSOk7wECwxISIreNbPMPfEt8A+
        /wKABg1B8EstxjGv6qWE2QyiprTU5DfC99i9N+k9IdZ7eRdgFzXLDa4KYNYJmfuAARZktJ
        kbXQ1RP5vRpQEa6KlTItzOuLtt9CI7I=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-547-oXjFdtMIOFeeCUcIAVD-Lg-1; Tue, 12 Apr 2022 08:49:32 -0400
X-MC-Unique: oXjFdtMIOFeeCUcIAVD-Lg-1
Received: by mail-wm1-f69.google.com with SMTP id g13-20020a1c4e0d000000b0038eba16aa46so1232118wmh.7
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:49:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6aZBKTB5BdnestxMdj/07bW+IS1GqohyMIbIwvT48vw=;
        b=1uPRKMS/5kXXn7DvCcwnoWCrEOVQoNE4ukyxKOrrC2+q+KiSboK+6DqrTwCXJ1W0DE
         cuY36u8QkRqK681G9GSKX1a7KY3W6m66uXs3cNiKvACWp1xuf7UIBNXDuAwnt/dh8ikH
         rgFIMxHgd07kaEazi3WeUiMGHIZJboMnwgoWpzZbGAckPsFB5yPWjdjIV7WsRLpPmrmU
         MPwSn8D4ZxF+Xog0f7Ma4fSKi3gQBFz49/TACe90Vk1yuxZX6jQie3V3HhRYqZ+9nEr4
         RtUwzpRW/gQKxCzj9mUK43K3zOodzsf7prP4UX+ihmF6prvMxBbfdgLoolYimeQpsyD7
         otJg==
X-Gm-Message-State: AOAM5316O0gG0f8NUuRqd0Ssio6jEAzrzmJD2h2tlJ+lrSFVjJiAfOHP
        Ew7lVMaAaftajunEqSW1PP2O27LC9/lIfmeRpqdgUsyNvgVc8IAYBhvXIRfWlD4HCTCsDH2kZWL
        eQrmnQKOanyHP3m1suiDEhg==
X-Received: by 2002:a1c:35c2:0:b0:38e:c75d:90a3 with SMTP id c185-20020a1c35c2000000b0038ec75d90a3mr3401932wma.98.1649767771390;
        Tue, 12 Apr 2022 05:49:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJygjYoMGC2lgYeBF5Ke4bl1SzKCjpQSFH5jCLjSKYAGIYkoI4H+oTt5pffQRoaBBQWPPpiY7w==
X-Received: by 2002:a1c:35c2:0:b0:38e:c75d:90a3 with SMTP id c185-20020a1c35c2000000b0038ec75d90a3mr3401912wma.98.1649767771190;
        Tue, 12 Apr 2022 05:49:31 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id 2-20020a056000154200b00203ee1fd1desm31172443wry.64.2022.04.12.05.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 05:49:30 -0700 (PDT)
Message-ID: <60bfa30c-35d7-7853-5741-b7a1ec9e0441@redhat.com>
Date:   Tue, 12 Apr 2022 14:49:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/5] dt-bindings: display: ssd1307fb: Deprecate "-i2c"
 compatible strings
Content-Language: en-US
To:     wens@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20220411211243.11121-1-javierm@redhat.com>
 <20220411211243.11121-2-javierm@redhat.com>
 <CAGb2v65CBZp3DZFGX0GMTaQQPYMKJTJMNoU2V5u7MxsLN7ONKQ@mail.gmail.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <CAGb2v65CBZp3DZFGX0GMTaQQPYMKJTJMNoU2V5u7MxsLN7ONKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Chen-Yu,

On 4/12/22 14:07, Chen-Yu Tsai wrote:
> On Tue, Apr 12, 2022 at 5:12 AM Javier Martinez Canillas
> <javierm@redhat.com> wrote:

[snip]

> 
> I think you can just drop this one, since it was just merged and isn't
> part of any release yet. It's not even in -rc.
>

I believe you are correct and we could just drop that one.
 
> ChenYu
> 

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

