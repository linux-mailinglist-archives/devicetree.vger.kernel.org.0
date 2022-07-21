Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9A657C53D
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 09:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232310AbiGUHZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 03:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbiGUHZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 03:25:11 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41161E22
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:25:08 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id z13so391558ljj.6
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=2mcFMkdFlegyaGlkJRzck9ynacBYIr8JIQrrqE1QtHQ=;
        b=tYHFkxpwdcnUQpnCYyayLPi5CzFc6YrNc6lB9ARelLymRoQOmIWGwVOVMw2fjkrtXg
         hkFHzRYZ2NTtDe++JKiaEJHGTXMIUmMtFZLi16uOUJoXlZIQAi26VkO0noApt5cdeI02
         TN8Cgk23ccoqT5IrgxpzlzXMxyK7vcQ4FwIYkWjAOofT9KHpghFf2IC0JD2uoAaT9ZiQ
         Bj1QYc7F9vgpXSK4LdEPm+FSiK8rm9m37EgvtUXHCj2ud4oqkhb3w3NKeNo/uMnpMTms
         E19aZ0ZQwbR5WsIHGfvcS446TUH+d2xVbUEQT7iMldQU0GmiZFrbAViKmk6OnQ2ux3Sj
         Si9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=2mcFMkdFlegyaGlkJRzck9ynacBYIr8JIQrrqE1QtHQ=;
        b=ct5A9RoTRiyXIuOKUPJn/tqfLtpr3nCW9Q5huCq02sVh6WTUl7RvDAxrlmBrO+0E0R
         DHV+co5FgbEG1poUK8Z9QXio3WFEKE1Oqtb9osKJwjVvuRVNpadBxSArFqZlqYH6umRi
         L6YCE89/UO4lAPFP5iLOHANi55/5WuzncupZu+9UuGLapUMH4igm1tSoR1ogb3Smsgh9
         FeaSKXuGEdJRYNnlvadbD1u3O3h5FkWffJG8aPg4nS2+narnf33Izz9HlkWJTtA9pX8Z
         kmO4H6v6lyXHGJcXftVfiPgZG31eLS9LUuvWnEIcxb1kpx2NLNTzEewcK2vKsqmwQxLG
         cRlg==
X-Gm-Message-State: AJIora9QToiqgnrCVbXSp0/1N4/2VqCLLUbx0nZmtjVUHUZk9DWDSkTA
        LXKI0dJjoax0Qqkhr/FC6uwDMw==
X-Google-Smtp-Source: AGRyM1swyaJylpQW1HUAs/YKi2zAEaOv5XArks69BMBBv+GjPdFriuSjdzcx9tFrEZcjg8uQ4H+/9w==
X-Received: by 2002:a2e:9c5a:0:b0:25d:dad5:1e04 with SMTP id t26-20020a2e9c5a000000b0025ddad51e04mr1198656ljj.428.1658388307218;
        Thu, 21 Jul 2022 00:25:07 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id r26-20020ac252ba000000b00489e011bad7sm260305lfm.218.2022.07.21.00.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 00:25:06 -0700 (PDT)
Message-ID: <1f0f2083-3100-a2d4-d513-52869b5aa706@linaro.org>
Date:   Thu, 21 Jul 2022 09:25:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/7] dt-bindings: vendor-prefixes: document several
 vendors for Aspeed BMC boards
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, Arnd Bergmann <arnd@arndb.de>,
        Steven Lee <steven_lee@aspeedtech.com>,
        Ken Chen <chen.kenyy@inventec.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     David Wang <David_Wang6097@jabil.com>
References: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org>
 <c86be8e0-8350-5d73-8055-e04a4e88f3b6@linaro.org>
 <42fb4884-e2c3-4d7f-9049-f14c19701b20@www.fastmail.com>
 <fb1b5eed-41ed-2c4b-c984-235ec4b3b0f6@linaro.org>
In-Reply-To: <fb1b5eed-41ed-2c4b-c984-235ec4b3b0f6@linaro.org>
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

On 21/07/2022 08:30, Krzysztof Kozlowski wrote:
> On 21/07/2022 04:34, Andrew Jeffery wrote:
>>> Any comments on this patchset? Are you going to pick it up? If you
>>> prefer me taking it, I can, but new boards depend on the bindings, so
>>> this should rather go via your tree.
>>
>> Apologies for not getting to this earlier, but I see Rob's applied it.
> 
> Rob took only the first patch - vendor-prefix. The DTS patches I sent to
> arm-soc.
> 
> However the second bindings patch [1] will miss merge window as I did
> not send it to arm-soc. I have it in my tree but I am not planning to
> push it out before merge window.
> 

I sent pull with the bindings now.

Best regards,
Krzysztof
