Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5064076361D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 14:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232592AbjGZMSu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 08:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229980AbjGZMSt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 08:18:49 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 868EA10EC
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 05:18:47 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-51e619bcbf9so8865829a12.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 05:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690373926; x=1690978726;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6azGF30s6/qv2j89iv2+5FE7ffgv+cjytR45PZTjURM=;
        b=WgZHVtxRjhde7m+/5Hh2CAyWb0YjxTNEuzB3aKBQwzX7L7TYU9pKTGHiy/ojarmK6w
         g5FvbKCTo7l+2AX+NY+/XTORp8YksV6ZoiZukCAYhzlOHqJ0+Snvf0aEWzdu3nUOq3Ay
         6M2DWtQlT9ejpk44gpM1McUcJuI/02r/UVXRcXdEtdn555EhGwJVj+0z70xq9AOvUfHB
         vzq+0aXgYeL+8a+fGn0e59QT6zGG3bx3hdtgLWIDUPfavTOm91BsJsUQ2o/t1dXuPUYC
         Wwy7tjhwZxnDy8ztuvPtt9Ppi0XhDbP3VOTLBZ8czmxe3KZwYrlpexEqUnz5SgD/q/xB
         KEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690373926; x=1690978726;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6azGF30s6/qv2j89iv2+5FE7ffgv+cjytR45PZTjURM=;
        b=gVTbiclwn253XU4Qnu81juEB5PVoFHZXwBUNp5J2b3JOdWM5ZzgN/rKPhV4kdA3Lws
         61+G3ZcZhQxlOWgbPvvlEHC5Mooxzyz0ph3fqo6eIEVYlB1OpMFrnVtrZ+SBTnbYNb4Z
         qK75ywZGBWHndYK7BfPqWsp3A3SZx3UQRzNepItY60B7PdP/FTLQWwuhv0gshWtdp6Yk
         iNKBx1hJq3GYwymbFigbngP+jT4Ly/2wDk7kwT2Al9CC1mw2BCwoxNgAoPKOQQWMjPdY
         NbfJjt0cObvJ8Pbvvb3mWtsQXEZzg41I3oKmxZs/XSwfkjq6C1uB6x0zzDi+6ePb4IGR
         wEiQ==
X-Gm-Message-State: ABy/qLajmcq3Ry4xjEePJuBKQm51UFp4kYGRNWdf5Fz0VP5pPIpLOO3n
        S9GDp6DYtJXpnwHul2o/elKing==
X-Google-Smtp-Source: APBJJlGx4zCyAzfvMl5ZN5hMuJmuXDkt+xm6nAibmH/Npd4jx3KsAzUuvUrdfx53PCXbsl/aHTggNA==
X-Received: by 2002:aa7:c702:0:b0:521:a99b:a233 with SMTP id i2-20020aa7c702000000b00521a99ba233mr1426769edq.10.1690373926004;
        Wed, 26 Jul 2023 05:18:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p6-20020a05640210c600b0052217b3a10dsm6017420edu.63.2023.07.26.05.18.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 05:18:45 -0700 (PDT)
Message-ID: <2df8d695-62aa-329f-f355-d6081d970ec2@linaro.org>
Date:   Wed, 26 Jul 2023 14:18:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] regulator: dt-bindings: dlg,slg51000: Convert to DT
 schema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Support Opensource <support.opensource@diasemi.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Eric Jeong <eric.jeong.opensource@diasemi.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230725063132.42132-1-krzysztof.kozlowski@linaro.org>
 <d33e5dbc-ca38-4702-903a-b36f9a824391@sirena.org.uk>
 <1c3684e3-b88a-0476-9376-19d07956e261@linaro.org>
 <4859d289-f4e2-4676-9be4-182f7dbda8b6@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4859d289-f4e2-4676-9be4-182f7dbda8b6@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 13:55, Mark Brown wrote:
> On Wed, Jul 26, 2023 at 09:32:17AM +0200, Krzysztof Kozlowski wrote:
>> On 25/07/2023 12:43, Mark Brown wrote:
> 
>>> This is just adding an OS specific note in the description, it's not
>>> actually marking the properties as required.
> 
>> They cannot be required, because it depends whether the regulator is
>> used or not. IOW, they are not required for unused regulators, which is
>> not possible to encode in the schema.
> 
> Oh, you mean if the regulator is in use in the system rather than if
> it's enabled!

Enabled as "always-on" or "boot-on" could be encoded in the schema with
multiple if::then:. But it is not enough, because regulators can be
enabled on demand by drivers. So that's what I meant by "used".


>  I suspect that there's a requirement that either at least
> one of the supplies be provided so that the chip I/O works, or there's
> some other currently undocumented supply that is required for that
> reason.

I can add requirement of at least one supply. I don't think it changes
much, but sure.

> 
> BTW there's also a formatting error:
> 
> +  vin3-supply:
> +    description:
> +      Input supply for ldo3, required if regulatoris enabled
> 
> missing space before is.

I'll fix with above at least one supply required.

Best regards,
Krzysztof

