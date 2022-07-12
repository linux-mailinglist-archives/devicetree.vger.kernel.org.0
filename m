Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F20457133E
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 09:40:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbiGLHkt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 03:40:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232382AbiGLHks (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 03:40:48 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C33B9A6B9
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:40:47 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a10so7084751ljj.5
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=h0c5geLVWocG6dJd9I6DofduKK4MdprrAm8njZkwppU=;
        b=ZyZfJZDfVPTxueqJvp6UDGsZkc3+ip0zh5zBAm46wrDkY/RIu8ba22imfR6IWZC0sY
         W/35QmTk82O51fi2PavrbOnTn3R0UjsTLit54R89lUgElSjTc4nkNSZQstekXJyiEDIS
         PR/9BVJiFSTw+1vMLGgTcW3lqrjemRHr3T26/AwEWoFnvkiVFV7F1uu/QILRQErK929i
         xnFgzdKQ9Pbsv+VfFkykY4PgfcKegymC+W1pzgVFsgltSY5+48d3S5RN0MXeyEHZfmO9
         DtZ4rBLtn622TS4In0oNpQrNQckSYRDwAxSFjA7L1rofT6F67x4lNHs1IP5IzCrOFzHI
         ZCUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=h0c5geLVWocG6dJd9I6DofduKK4MdprrAm8njZkwppU=;
        b=C0Lhb8mVb2enc/SuieF12F7ObMp7PFrqLL/Fsgf+6zBurDYf/e+SxNLUD/1GWDXJGv
         PRDriHTagvXELJ+WD+o1lGy6udff/nTvdm/mGsiDMY/+FydzBbnsPcCu/g6Pff2fUP2k
         g+JPbjPir6vXEDAjgutA5Jy2OCTbrWFKPM7FAugmJPgDq9TClQ8YH7UhAWUH1oStrk4S
         USff/7rOlhAg5FlrHeVy5OAxfKnAsvOYGWm/OfpftZqbUFS0A1sERCqUbDbisDDREOTg
         LXzjJOuIbXTyKuKM59pQQE9bLS2BHpxlLPiDse3KliN7tnY45441GW5CdbvPHsKpLtKY
         s58w==
X-Gm-Message-State: AJIora82qc93mA9sWCnMP8DFWZNz8oXRV+kmpJSFHIbFuWBBk4HaVSmU
        NUkl+o+CqeV840ksgE1sKMBxbQ==
X-Google-Smtp-Source: AGRyM1t2IGlxja70WHNr/sLe94dwPbwyghFqMypmR6uOPku7mxXFKq9ewDMz2y/A9NgJWBViMD9zbw==
X-Received: by 2002:a2e:a36a:0:b0:25d:8089:80b6 with SMTP id i10-20020a2ea36a000000b0025d808980b6mr323186ljn.122.1657611645442;
        Tue, 12 Jul 2022 00:40:45 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id v22-20020ac25616000000b00484d82e8a09sm2017789lfd.211.2022.07.12.00.40.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 00:40:44 -0700 (PDT)
Message-ID: <842e3fdb-817d-6e15-8dc1-d8a82da0e962@linaro.org>
Date:   Tue, 12 Jul 2022 09:40:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/3] Remove an entry for MOXA platform board
Content-Language: en-US
To:     Jimmy Chen <u7702045@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jimmy Chen <jimmy.chen@moxa.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220712045505.4500-1-jimmy.chen@moxa.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712045505.4500-1-jimmy.chen@moxa.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2022 06:55, Jimmy Chen wrote:
> use Freescale instead of create new MOXA entry
> 
> Signed-off-by: Jimmy Chen <jimmy.chen@moxa.com>
> ---
>  .../devicetree/bindings/arm/moxa.yaml         | 21 -------------------

There is no such file... What do you try to remove? On what tree this is
based?

Best regards,
Krzysztof
