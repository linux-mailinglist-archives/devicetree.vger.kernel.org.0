Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5395960F8E7
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 15:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235942AbiJ0NUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 09:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235932AbiJ0NUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 09:20:39 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BCAB7963D
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:20:37 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id l28so1055408qtv.4
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 06:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t4JzTTHH9Z2ZgKJ7bMZXHwDpd5YWrmYJXzRTjap2LNE=;
        b=OlMpkb8SbNbYQ85jqYeusDAHbUG7jWUqnEl80m9tmTWqBMDrLUMHg9bQGI4j/JdmKO
         tcX6PqWUE1XoOhFkhVpxPRaXBpF8S/PUPslMLmHo3rtkCmKqPL4MzwDwcZjCUZvpSege
         BOHPPPfBHTcPm7QEvwUlKQAJZMjd7k+z+S2wyCk56JGfLSGHFSC09fINSgBN13pQ+5ti
         ZJ5tG1ood+gE7sBGcHo42vbv2Xs7XB0v5zQhF/dj8TKO+9ZiK1Dnn7Pt3VSSiDfuR5OI
         bD+2B8eYzT5hnxkcVhNsHSOL0vAi4ZLaOMoaTsrY5pm4ASx01lTcYh4ZClDu8uszScyL
         Vumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t4JzTTHH9Z2ZgKJ7bMZXHwDpd5YWrmYJXzRTjap2LNE=;
        b=vsebb3Pi0Cvw78npo0ODgZFp1gKZ0t9Uobra+IiQkv1KPlwF3i+j6QTij3wfnACNga
         66lwDN2A54Vp3DSJw6y00HJlCMU/EF2zvfMDrIZZ6XpxGJUyJxnlhSqHNPt8FWi+fA30
         PUz6w6JwmHjGgWcH8MYnID9NIeNw6xbfOSdfGA+FGFF6OwyGYpKGL4bXAAyuwH+MQ3nx
         QP5nYGoOprO8WaZd0FMZk6YagHFyrGCa6F+MFU9xCHFr4RQeezRDQP+yS4DhMml2y+q2
         1OD38M5yVOMEuFOb2YnA7oK08j/s7iDSZao5WM9cWowZk2hYDqoqH+xo8M2bVFkzU4R5
         ddCA==
X-Gm-Message-State: ACrzQf0WEmSRsMZqDKpbjwZFlaeZPVfWNdFs3Dpwh5xQZVHR1+BN5sCX
        BDJFrTCrsKFlPv0gyNcNwj0wb8Uwk3EY6Q==
X-Google-Smtp-Source: AMsMyM5D5Up0Xb8N6QkWBELk2e44HDGLS7f+oShIIjL2V1A6aqYYFk9h3oj2hyds4uj1/Ps+2LwAyg==
X-Received: by 2002:a05:622a:130b:b0:39c:c95d:e3b1 with SMTP id v11-20020a05622a130b00b0039cc95de3b1mr41099091qtk.275.1666876836350;
        Thu, 27 Oct 2022 06:20:36 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bl7-20020a05620a1a8700b006b5cc25535fsm933576qkb.99.2022.10.27.06.20.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 06:20:35 -0700 (PDT)
Message-ID: <2f1484f7-2b99-5b5f-50cb-41ab7ab3d9ed@linaro.org>
Date:   Thu, 27 Oct 2022 09:20:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/4 v5] dt-bindings: memory: Factor out common properties
 of LPDDR bindings
Content-Language: en-US
To:     Julius Werner <jwerner@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
References: <20220930220606.303395-1-jwerner@chromium.org>
 <8489ce0a-3278-5509-4f82-f3d9d5ddd4c0@linaro.org>
 <CAODwPW9S+6Qh1zMxzXWFkd6d1kdOWpTOe4S1sZB8hvQ-36MbNA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAODwPW9S+6Qh1zMxzXWFkd6d1kdOWpTOe4S1sZB8hvQ-36MbNA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/10/2022 19:04, Julius Werner wrote:
>> For the future, write cover letter which describes why you are doing
>> this. You explained the "why" some time ago in responses, but all such
>> information should be in cover letter (plus the applicable part in the
>> individual patches).
> 
> Sorry, I did write a cover letter here:
> https://lore.kernel.org/lkml/20220831013359.1807905-1-jwerner@chromium.org/
> 
> Are you saying I should have kept resending the cover letter on every
> new iteration of the series? I thought since we were already
> discussing detail questions and there seemed to be no general concerns
> on the series as a whole that wouldn't be necessary, but I can keep
> resending it next time if you prefer.

Yes, please sending it. Other reviewers might not read v1 and they will
have the same questions...

Git helps with that - git branch --edit-description
(and coverFromDescription = subject in the config)

Best regards,
Krzysztof

