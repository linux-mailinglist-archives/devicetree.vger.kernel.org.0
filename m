Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 789FF4D1A47
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 15:20:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238865AbiCHOVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 09:21:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347353AbiCHOVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 09:21:18 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BFFE4B84A
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 06:20:21 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B8DD33F1C5
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 14:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646749220;
        bh=JDHAdkxzMQ9oXeiZ7or/OdRRCoJctps3EijP4WhNt3s=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=WnEPaFN7r/m1BGTQ8cr1bQ88TYCoOxXt4DsxGvWw/shGTvQgG7ksrI+ADlTTlPG3Z
         EMW0YZws6Z8g9dna0P6ZMONOJ6eBdLhmeHrSHbfRUNYG+wAUrG4vMU06Cz2rbuphT/
         rlXH6PnjNJWnv/QkVu6jlfhcxnK5qUkzjzmXualYb6kJjLPkryT5l8jPLsvg4m/1QO
         Z8hp+ugHld1Ezf+U8s1tIaIPgOb5wUof+8CjZ6urnvwzFXfd+JQDaIkVOr++/4xuWz
         UbEB4EpoAcYnqxvWbCFF07+1IL5vx7+1ZctLrV0rX1Hv7c5jvVv0/sQVcPVSxS4LoJ
         BN0EtlfWmrJJQ==
Received: by mail-ej1-f70.google.com with SMTP id ey18-20020a1709070b9200b006da9614af58so6727362ejc.10
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 06:20:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JDHAdkxzMQ9oXeiZ7or/OdRRCoJctps3EijP4WhNt3s=;
        b=JF/p1iBc59Ii/xpgIBEI5bUhcTCgeZKtNXfVU4ALyvFkJF/TJ1QWLSILKql8Fyh1A6
         fzPj/DDzkljYWxZRGixQSnWAr6nHEsr18Eql5iHlvJ6siUosp0aJFXgzoFPt8eB52FpZ
         HZ7iea3hitOP0n9F06EFYWv7dqSBLVuuNEdzp3YZF7sHlb67y2G76bz+NWGiyqHO74+8
         B4V8MK7oOuL/86S1BAKsLZG93/LbgSzWDBLIS1m7EfnsaDkIYIuESMN/bWgO/nOMq5uo
         ldkQY5oEuuOo1ReEx1Uwb7ZT3EDkdhhFeyO57EwXqkGx12+0NNqO5tlEot9fyg+TlmsG
         0TFA==
X-Gm-Message-State: AOAM5316DVka6reXQd1y6ZnPzAF1MV8rvKGAA+Eh/iXosGqJtDan4puY
        dHR6o6CE5+7j/MUawe6CTUuManKWDExR6Px+mAhaiXD0kCz63/q1P4hAmTWnvqep8CfUkMVi23L
        WrjjE/ROQ1YxwBMs74zMQ02ID8Mi8+4vp8vpfTJw=
X-Received: by 2002:a05:6402:1941:b0:413:2b7e:676e with SMTP id f1-20020a056402194100b004132b7e676emr16685050edz.114.1646749220478;
        Tue, 08 Mar 2022 06:20:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwxeVXJHuihMuwKpIN3gQ7u3DsPGMy0pg+ql7XB7ZI9NOpSMZ/II/NNAyXIKATXGn+ZuP3B6A==
X-Received: by 2002:a05:6402:1941:b0:413:2b7e:676e with SMTP id f1-20020a056402194100b004132b7e676emr16685030edz.114.1646749220265;
        Tue, 08 Mar 2022 06:20:20 -0800 (PST)
Received: from [192.168.0.143] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id i21-20020a1709061cd500b006da62ab503csm5884829ejh.157.2022.03.08.06.20.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Mar 2022 06:20:19 -0800 (PST)
Message-ID: <6d8f436b-323e-9aab-c068-b629da6dcb37@canonical.com>
Date:   Tue, 8 Mar 2022 15:20:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: regulator: Convert TPS62360 binding to
 json-schema
Content-Language: en-US
To:     Georgi Vlaev <g-vlaev@ti.com>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        ldewangan@nvidia.com, nm@ti.com, vigneshr@ti.com
References: <20220308134454.14504-1-g-vlaev@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220308134454.14504-1-g-vlaev@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2022 14:44, Georgi Vlaev wrote:
> Convert the TPS62360 regulator binding to DT schema format
> using json-schema.
> 
> This also removes redundant "ti,enable-force-pwm" property
> from the example. The property description was removed from the
> original text binding file by commit 9a00630c3db8 ("regulator:
> tps62360: support force PWM mode via regulator mode"), but a
> reference to it remained in the example.
> 
> Signed-off-by: Georgi Vlaev <g-vlaev@ti.com>
> ---
> V1 -> V2: Make the example indentation consistent.
> V2 -> V3: Remove redundant property from the example.
> 
>  .../bindings/regulator/ti,tps62360.yaml       | 98 +++++++++++++++++++
>  .../bindings/regulator/tps62360-regulator.txt | 44 ---------
>  2 files changed, 98 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/tps62360-regulator.txt
> 

You received review tags already, do not ignore them.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
