Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A147B57B390
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 11:15:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232883AbiGTJP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 05:15:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237276AbiGTJPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 05:15:24 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E987CDED7
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 02:15:21 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id u5so2171503wrm.4
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 02:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=69k0bS0AXcsV41mygWfTWHqylWYDOrfHX8GGMjumsQE=;
        b=Mn7jyk3PDkWgUahKuy6O0B7STw5mvEybnWzbMnZGqFVcov54oQDdkyaB1D7/MFZVtP
         kURzfHfT1Qjf2yAbkkmpewUks0jxspk9eYQeq78Ep+Gt3mjn8O84VhXm8vACveHP6RGL
         joFY97OX+S3apEys8eaF2tmRJdcx8FagEm5+oE5B0VZeoIYcT+AqTik/9pAn0S7sES26
         LubjqalIQssos402ct1znsCjQWox4cK2Us2F9auK+fa/bP6K4mVk9DAFSgnI7fwKOfYe
         jy+FRbXQxHFARO3hb+iLDvUqSV3IcGItT/WLygAv5kMe77zubEL4MYY0r3W3QsE/M+Tz
         y8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=69k0bS0AXcsV41mygWfTWHqylWYDOrfHX8GGMjumsQE=;
        b=35AN0m2ukA0ebZShbPbzrfVx4/KRddjFWD1mNevrptFSHIj6Boatn87u5nA5CtQPko
         Yls8S+9wzyazGj755xWXv7B0JZg09eBcxhrIxhGJe/zGAjEq5UCw05TziXQoBKihuiTF
         0sz501YNkZoUeYKU08Xh5spxybzQKzx/Yk0mHHjxjDeLyZXUizK7iI1j6kAByvJTpK7k
         9/YqlMbBxe7BeQrWk8m8w4bPUsItyzU27oYLtgEDn2jOaRmT0hps4llg71IqwHb6Y7JK
         kJYE+Eoq8Xw2UWEMXXxCYme7ooar6POd08d2kfzxa8QIIWhW9rGkCREKcNXjn6mY9wkR
         Y/Nw==
X-Gm-Message-State: AJIora90Q3cEuviy6ceTY5ehg6t+G+mDWKEBmklmaGKIEGmXtNj4WEdE
        jOpnSb98keY8VTs8G1eDOos+9Q==
X-Google-Smtp-Source: AGRyM1tU8Y3qak2dHYd8hBXrhca7LBSP0EiHKtSLWfnpl1z349q8bKUtXyZ1r91cXQfuwsKBPgZylg==
X-Received: by 2002:a5d:4592:0:b0:21e:4794:e6a7 with SMTP id p18-20020a5d4592000000b0021e4794e6a7mr2643187wrq.321.1658308520233;
        Wed, 20 Jul 2022 02:15:20 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:b579:e7b5:219d:267c? ([2a05:6e02:1041:c10:b579:e7b5:219d:267c])
        by smtp.googlemail.com with ESMTPSA id e14-20020a5d65ce000000b0021e084d9133sm1103891wrw.27.2022.07.20.02.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 02:15:19 -0700 (PDT)
Message-ID: <9b6b609a-9f53-2ad9-f475-7471a05e79f3@linaro.org>
Date:   Wed, 20 Jul 2022 11:15:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] dt-bindings: timer: renesas,cmt: Fix R-Car Gen4 fall-out
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <2e3863ae32e17d49f41111580f195dd34e2b769d.1658303544.git.geert+renesas@glider.be>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <2e3863ae32e17d49f41111580f195dd34e2b769d.1658303544.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/07/2022 09:53, Geert Uytterhoeven wrote:
> Restore sort order (by family, followed by type).
> Update the conditional sections specifying the number of interrupts.
> 
> Fixes: 525b296185b4b0ab ("dt-bindings: timer: renesas,cmt: Add r8a779f0 and generic Gen4 CMT support")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Applied, thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
