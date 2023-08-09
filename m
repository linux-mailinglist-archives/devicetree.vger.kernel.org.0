Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B616F7752DC
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 08:28:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230514AbjHIG22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 02:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbjHIG21 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 02:28:27 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7D6510C8
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 23:28:26 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31759e6a4a1so4820118f8f.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 23:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691562505; x=1692167305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cYLZNRkgcoaU7gBM9TIEExEa/RKQmT+mRKaZHcOHgis=;
        b=ZPyUDWenT4QhBEacjKJoB9Gt/CBd3i0vfIY5qNk9FnxiKLtgAlPgkrPLQOC6NKoCHq
         RHyXB/c3XBNNhRCY3Z0eSDAWQ51jJXusXRwUiii6NYqqEqSBsRujGuzQXdF3lqg2B7jM
         9/QnUFlAqBfXhAvfmc0OGl7/nfQd2fh7G9Kz6FsB/WQiC4dlGIG0RikfGJ4/f6QgNayA
         PKhiKSpwe/bLuq+z8+0wt9egjn3ek/tYItOEUZDKTuajFCD13LCzSQGJLV/a9y34HTzM
         T6jcl4AQwDweBGH8e0pc4wfja3JGOkv+ymGig5NWCgQ+OBtgZgvOUdFiIRterUPfpv8w
         jXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691562505; x=1692167305;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cYLZNRkgcoaU7gBM9TIEExEa/RKQmT+mRKaZHcOHgis=;
        b=MKTxdIgmqcbCMb2LTFGLR+GV3XH0HLKAER3uBj4tv5iWLqP7C2Ua62+iodEdwTDS02
         tN3LPmELstkpQBIEjRcoSZqmhE4jtzKJRohTq0YsTOFnAdH7BkMW+TBih+YeEmbqgXwi
         Ew7Q+ZKxThV62zEhsq9Tho+y7KXQYlDWnefo9HX0ByJGX+VxnFcarQY7gj09WKvRkA6F
         FJLVRdrCzsHQG1ekuJfO7YOfcoOFpnsU9p17MmIzWLRyJHQtI50+RHl6vCQ8hNGDO+dy
         /JgNa2ledI9p69neL+lrp+5bbPRBeJfMg3Q3XvuOoI97pBlK5+leFUkxV/JRSs3Z/RAY
         n+jg==
X-Gm-Message-State: AOJu0YzEiTxYtNui7Bo//+yiXC/WonkTqabzNhlb07ueYuMos8UHNKC2
        l++5EfHOBiGCxj8aUeUMJjn3qw==
X-Google-Smtp-Source: AGHT+IGTm8cTYEYJk2qpe642IoFuzJF8S4oyi/r6v4KY4fwCGjNZPTabCyihP4XMQ/dIAlQyFjMHUw==
X-Received: by 2002:a5d:6949:0:b0:317:65b5:f584 with SMTP id r9-20020a5d6949000000b0031765b5f584mr985784wrw.39.1691562505235;
        Tue, 08 Aug 2023 23:28:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id u3-20020adfed43000000b0031759e6b43fsm15773045wro.39.2023.08.08.23.28.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 23:28:24 -0700 (PDT)
Message-ID: <c9fb37bc-a672-baad-77ca-6ac6b3c03184@linaro.org>
Date:   Wed, 9 Aug 2023 08:28:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 1/2] dt-bindings: cpufreq: add bindings for virtual
 cpufreq
To:     Saravana Kannan <saravanak@google.com>
Cc:     David Dai <davidai@google.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Quentin Perret <qperret@google.com>,
        Masami Hiramatsu <mhiramat@google.com>,
        Will Deacon <will@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Dietmar Eggemann <dietmar.eggemann@arm.com>,
        Pavan Kondeti <quic_pkondeti@quicinc.com>,
        Gupta Pankaj <pankaj.gupta@amd.com>,
        Mel Gorman <mgorman@suse.de>, kernel-team@android.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230731174613.4133167-1-davidai@google.com>
 <20230731174613.4133167-2-davidai@google.com>
 <ceddbbfb-a178-2b7e-ea17-0a37f33224ab@linaro.org>
 <CAGETcx-uKF_9Gw2UUXeSrY0C9sH-9dX_Waggp7tjCfBB_+dfKA@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAGETcx-uKF_9Gw2UUXeSrY0C9sH-9dX_Waggp7tjCfBB_+dfKA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/08/2023 01:31, Saravana Kannan wrote:
>>
>>> +        reg = <0x1040000 0x10>;
>>> +        compatible = "virtual,cpufreq";
>>
>> compatible is always the first property.
>>
>> Also, you did not test it...
> 
> Why do you say this? This patch series was obviously tested very well
> with all the data we collected.

Why do I say? Because of warning and huge fat Python exception? Test
it... you will see.

Best regards,
Krzysztof

