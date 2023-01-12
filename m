Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DC6E666D69
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 10:07:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239971AbjALJHA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 04:07:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239823AbjALJGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 04:06:24 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CF4EB1FB
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 01:01:38 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id jo4so43125238ejb.7
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 01:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fw3Q/H2DqZcykx9Yf41o4SkW0Lqzy2WimZ0SDIfRlGk=;
        b=v7RpQTEjYePJD15M7bQOhOp9x1hrcoCCtsYjcZGrE2dnoQAko+4f180sMszd/yRtg3
         mVupZj8TJgJj1qJkhYYzbpqY3Gaf7ts3XhsdzPBbhIJ+PIagEIi89+ZprEVTLl9hiNyH
         OYJKzWF4AcP22D/wMUnwEq4+koIM5T8SbJ7YMVK6HRyXxczA4a6m3MrhFbbJQJpG/f3u
         c4AMTDWdNxebDmZ8SEBTCxyb5W57EzGcSBos1RLvk5eoeXKG8uBYMidcLpaRnChBj/25
         9Kp0QpR9UrQYplZd2dmgnTrQfaYnEyhUv/ew0g16feu+TK48/8IbpSVSdyM3+Wdl1nRi
         xTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fw3Q/H2DqZcykx9Yf41o4SkW0Lqzy2WimZ0SDIfRlGk=;
        b=4T9MeeTsZTv/FEF93XvHg9ZU1jeHZXW3OQt9wsJWXTrA+9YnmoIk0lpWFqpfEAnc9P
         q8i1tE9xJgKaFfLpZRVSntpO5aHIa3nJcCDw51mmxm329My+vMtXm5baFRUR/gzSI6q8
         wfTTUduizG0sELaT6RJY15kf4ayTRWjSLqw36aoG6YL6NqAWKTC0Rc8ASyLaEH8FF6mU
         JP0zyrwzBtLOB+mZzCLupSxH9Kd9+6ahaSgPIlg6x/hu/5OBWMEBBBWU7sW+pw5mjloy
         XeWInFwjssE6hDCPm7/CrI966g/cDNyrjKgw6s6s0FvvTz6LBb/rkCLFUSG8uT93uhPl
         V7kw==
X-Gm-Message-State: AFqh2kr3kjPCGa42wqNrXVfiBfXDtjD7AaifFGhSggjA8obPLlplrMTP
        IYvVvrgjbUpbu9THBzeD5Cpi1g==
X-Google-Smtp-Source: AMrXdXv4mC7D8HDXP4WeWECNsQDB1gN1Ra2s3PCCbrk2dewthSPR0qKu3wp1FZvvgOfmypDSgOJ5JQ==
X-Received: by 2002:a17:907:a643:b0:83c:7308:b2ed with SMTP id vu3-20020a170907a64300b0083c7308b2edmr66493767ejc.17.1673514097334;
        Thu, 12 Jan 2023 01:01:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s10-20020a17090699ca00b0084d43100f19sm5176918ejn.89.2023.01.12.01.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 01:01:36 -0800 (PST)
Message-ID: <1b5880bb-d0ce-9dde-2fe6-e058f6efb6f1@linaro.org>
Date:   Thu, 12 Jan 2023 10:01:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 3/6] dt-bindings: pinctrl: mt7621: add proper function
 muxing binding
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mips@vger.kernel.org, erkin.bozoglu@xeront.com
References: <20221231160849.40544-1-arinc.unal@arinc9.com>
 <20221231160849.40544-4-arinc.unal@arinc9.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221231160849.40544-4-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/12/2022 17:08, Arınç ÜNAL wrote:
> Not every function can be muxed to a group. Add proper binding which
> documents which function can be muxed to a group or set of groups.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>

Didn't I already ack it?

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

