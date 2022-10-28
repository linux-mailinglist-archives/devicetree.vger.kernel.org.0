Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09DA4611E28
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 01:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbiJ1Xc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 19:32:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiJ1Xc5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 19:32:57 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 536D018DD40
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:32:53 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id i9so1702307qki.10
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p/JONS14sR6Y7vp4o4d79QghiC8/pLCjQntTzO9qLD0=;
        b=GgYzrGqLc2vdB88vqTDV5Q4ta5r4Cxy0BnuVGeKRgN8NFFSFROCj+eKu7RDJlKzRE/
         lPtu1y2NE35wd2lyrDPBa5TgyTIIqI8qyOLNMj0F7hT4oDmm16+k6L8bzQ3fUwVtYvXV
         X1RtA1ltGex/O1PP9/X3ffzTKkseCtK1horJXfCAC18XT38N8c1qLpJPdcAPi0+35daG
         GvBeBWbFVTL0mTaPiPOJISCkL+shzSyGSeBuScJkOOXafJcC1KJnKEQegfs8pLzb6Ty1
         MGlGmQetK9a/z4v/a7pQ13DOqCTg2RVf3s5CEm+R/x+2oBbO5LNRynEbJUGlSfvkVCoU
         azIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p/JONS14sR6Y7vp4o4d79QghiC8/pLCjQntTzO9qLD0=;
        b=xBPaKzZL6VNykio1izikoBBVbfiIFHm3Zb3AeIQqV8nFiZohhHlvMY/pOHsPhX2fCe
         ++3Zw3AKQFlgEkQR2R1sMx9VHa9nlI7J1ZI+uB3DD7a/DZZK2dLzE8+5Rw+PlKE2mlCW
         xmjC5mytRUNXNBrohKPG6wvHQSegg1l6pgoVg3rbwQptjIpjWdKtzScBhQVhrgRN4mn2
         l+zBcx627mcIwcxWJXVnAiMVWJL8eaNVX/iyWwJnuH09E2s4X/XjXcrBJFi+lEMOwsFS
         NZYXadBjPz8ft4ztlUzfEbeYRgtxLmGnbMY2GxTPTJtrxi7UYtA0hoG6RCwpk1Vqqmt1
         QIlQ==
X-Gm-Message-State: ACrzQf2pAUpRVPAjzEuQq88tlpVaU3IHDrTP1f5LKSwYRAOUzJe9y7ip
        3NG54iCCUAWyzHkt7l70Vsedag==
X-Google-Smtp-Source: AMsMyM5h+piJZy1yW3lpw1EdYKId/NcgvPlYP21Z5bFe8FV3psdcZYOejGm+vHjk3xZZhwcj+ejBpQ==
X-Received: by 2002:a05:620a:24c3:b0:6ee:d4bb:e5b0 with SMTP id m3-20020a05620a24c300b006eed4bbe5b0mr1364269qkn.471.1666999972509;
        Fri, 28 Oct 2022 16:32:52 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id m8-20020ac84448000000b00397e97baa96sm43946qtn.0.2022.10.28.16.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 16:32:51 -0700 (PDT)
Message-ID: <fdeeeb4e-c66c-5c18-41f0-41a9f27ad8e3@linaro.org>
Date:   Fri, 28 Oct 2022 19:32:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 0/5] Add PWM for MStar SoCs
Content-Language: en-US
To:     Romain Perier <romain.perier@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220907131241.31941-1-romain.perier@gmail.com>
 <CABgxDoKeJrVK2NxJXd=MicdBWUyusf1aGbgKvyrOyB7m0xbPaQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABgxDoKeJrVK2NxJXd=MicdBWUyusf1aGbgKvyrOyB7m0xbPaQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 02:41, Romain Perier wrote:
> ping ;)
> 

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Best regards,
Krzysztof

