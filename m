Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E879529D26
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 11:02:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242554AbiEQJCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 05:02:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243968AbiEQJCK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 05:02:10 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3406D1B792
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 02:02:09 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id s3so6334730edr.9
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 02:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=RgPVi+DWNHOkIK0uf2dswKPC6dDGkOdaICJBn5DTVB8=;
        b=iQyYjfRVFFzq25dlyesa10yBjX5Xu9MqzA/v9Uw7PphKpywZkAcdJeNgXOUO9M4Pf4
         ZQ94UqmWmlcuSdNOaVq/wueTsWCit44KazORnavmwqIX7rl7Z63K8Q1aNm0Y9ZyUBvco
         ZP6arhkkm6BNe2Z2jfJhdHh5E/OtX8knwXK6rGw2bkUu0kwmAndAAAWWgnJVQBAo6VlO
         bc8F5PiuBOZv/t0wMKs3ALrNsQiIi/K4G51GjqF9QKVwzqKXr9WBz0+QbmZ9KWX48DGl
         eAXXp0wH23PyGnm76FJdbbm+QU/Dohk0Ib/Dk4SbbT3tSZIVVogyeoEwvPzB1UTl892u
         A7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RgPVi+DWNHOkIK0uf2dswKPC6dDGkOdaICJBn5DTVB8=;
        b=xWOZvPjxyeDOqoeTdeJtCwyLlQbyluH/Ar9T/d5p2h+87bKTXoNcC98h/9k2kLIki0
         BhCU+KgUqywLBOSOunrQFyZHBGaEYPtfcujy4BTz/MJojhB5k7f9c3YR7aTOLQP3dpuc
         3u8tAd7YWgOOYOG3W8Ai2Me65owiIoBMnXZzh4mMsXP5VZAVzBk5xuFTaiKx9eBcFdig
         sjH5mLrSDMNBZwnUNA1S/7YZXk8DCDDa8ZUe5Bh9Q3JlnZjb6xo4v8j2s+m7cqakvNvc
         zizcDxHl747HyzBJsxN+Sy/f/CR3wsKEYC4kIHw17CTQxG50zHNd+PZiA187JWe7Zewo
         F7NQ==
X-Gm-Message-State: AOAM531X0q/BSfE0fo8vo4COSL0rWg9uLWprcYGXRUjtOabDSfPZQbub
        WDzb69OF3ISHETjKWupmTyphmQ==
X-Google-Smtp-Source: ABdhPJyE0oiGq6f2ZE0B636lzw80jYuv2cwe46N7jkeL31ZT3I5Ap1rxo3ApQT6rHcSk91j4xh1+gQ==
X-Received: by 2002:a05:6402:363:b0:42a:aa92:c302 with SMTP id s3-20020a056402036300b0042aaa92c302mr12755919edw.386.1652778127744;
        Tue, 17 May 2022 02:02:07 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w12-20020aa7da4c000000b0042ab649183asm2450941eds.35.2022.05.17.02.02.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 02:02:07 -0700 (PDT)
Message-ID: <c397bff2-b4c0-3f85-e5b9-22f03bc80a2b@linaro.org>
Date:   Tue, 17 May 2022 11:02:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Content-Language: en-US
To:     Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>, robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>, krzk+dt@kernel.org
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
 <20220511082109.1110043-2-s.hauer@pengutronix.de> <6824319.LvFx2qVVIh@phil>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6824319.LvFx2qVVIh@phil>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/05/2022 00:26, Heiko Stuebner wrote:
> Hi Rob, Krzysztof,
> 
> Am Mittwoch, 11. Mai 2022, 10:21:07 CEST schrieb Sascha Hauer:
>> The VOP2 driver relies on reg-names properties, but these are not
>> documented. Add the missing documentation, make reg-names mandatory
>> and increase minItems to 2 as always both register spaces are needed.
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> does this look ok now?

Neither Rob nor me was Cced on original email, so I don't have it in my
mailbox... I would expect that scripts/get_maintainers.pl is a known tool.


Best regards,
Krzysztof
