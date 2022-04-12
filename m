Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DFE04FE18B
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 15:07:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355328AbiDLNFy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 09:05:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357311AbiDLNEi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 09:04:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B28F44DF51
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649767734;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=7sDaKWcAgM2XIl9bdUk6bun++oBfH1mVBruEjkqdxaY=;
        b=V23nb2SVjamT2jaKnDc6lpni3YvRTGRtquXeqTIUYy7bwIsoqQ04f04LTCuGTwzlc+y/Vu
        KhcZjUveWs1gjpI9bF02SMo8LduqxHy02X/vTWlMByrvStW66VYMlur80UpXYqHVb3mo56
        Loz0KY600zGur7KCZxt1djK0oFyuRdw=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-41-X6hRsI9qOcqVzEAgG8HUuw-1; Tue, 12 Apr 2022 08:48:52 -0400
X-MC-Unique: X6hRsI9qOcqVzEAgG8HUuw-1
Received: by mail-wm1-f69.google.com with SMTP id i66-20020a1c3b45000000b0038eab4e0feaso3781667wma.9
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:48:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7sDaKWcAgM2XIl9bdUk6bun++oBfH1mVBruEjkqdxaY=;
        b=fvnfxqPGgHtGaNxb1T24lFYvxzobhIwAQRYHPpY7GvzoE8x2uFkIbFqc0CV/jBW1z1
         oTbWuDuTyFLl6ubpjLTVtu0Ko3nAC/i07KojwPML96zbmTVa7T9yXZOR/S/iLzA4QLYs
         RqFuKn4dx6Es7yftg07ND98HYwfYfMcApvKoI53d/s8Pm2RuJIRkRTWK9fDJ0b1p9ECh
         hl+AyUaCrKc+VEVWjrzYEN3vK84knIegLvpXKbzq4nCyEK8vQQmF0kvH6p2bpQEJ4mbS
         7SeWfKTHU2wtyUA6W1OckWVF2GnHlKXgb2ChPsvOrXfejFLM3jcjlsG1/CRJ9+Wxoq9+
         pIcw==
X-Gm-Message-State: AOAM531ekcjJOw6zHQrP2Gb+L+iTm6Jg5OzCTlsVg5kH7xYk0nBRQpBy
        Ck1jDa75Oz+VQ8KNk19VT/iqzyplC/LOLgGmWHbFtkAsPwMQRNNFZOx+kOKojKwMp/onCQSFY7G
        c5wE+OT4X5INfA0OpbvbpPw==
X-Received: by 2002:adf:e74a:0:b0:1f0:25cb:3ad5 with SMTP id c10-20020adfe74a000000b001f025cb3ad5mr29127162wrn.231.1649767731313;
        Tue, 12 Apr 2022 05:48:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw5+Ddw+bigt24MEWgaP362cD4jvNRoenFXKs2B/0FJXlJzyo/PVEoLpDt5RoNn56qZNIA2XA==
X-Received: by 2002:adf:e74a:0:b0:1f0:25cb:3ad5 with SMTP id c10-20020adfe74a000000b001f025cb3ad5mr29127143wrn.231.1649767731066;
        Tue, 12 Apr 2022 05:48:51 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id b1-20020adfd1c1000000b002058537af75sm30602485wrd.104.2022.04.12.05.48.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 05:48:50 -0700 (PDT)
Message-ID: <d25cfc04-8ee5-ea6d-a353-6b0ac1fd58be@redhat.com>
Date:   Tue, 12 Apr 2022 14:48:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/5] dt-bindings: display: ssd1307fb: Deprecate "-i2c"
 compatible strings
Content-Language: en-US
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Mark Brown <broonie@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20220411211243.11121-1-javierm@redhat.com>
 <20220411211243.11121-2-javierm@redhat.com>
 <20220412112855.uccrkoqgjim2dbts@houat>
From:   Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220412112855.uccrkoqgjim2dbts@houat>
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

Hello Maxime,

On 4/12/22 13:28, Maxime Ripard wrote:
> On Mon, Apr 11, 2022 at 11:12:39PM +0200, Javier Martinez Canillas wrote:

[snip]

>>  
>>    reg:
>>      maxItems: 1
>> @@ -136,7 +147,7 @@ allOf:
>>        properties:
>>          compatible:
>>            contains:
>> -            const: sinowealth,sh1106-i2c
>> +            const: sinowealth,sh1106
> 
> I think we should have both in the condition here, but it looks good
> otherwise.
>

Right, we want to keep enforcing for the deprecated compatible strings.
 
> Maxime
> 

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

