Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CB2A68BF32
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 15:02:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231232AbjBFOCS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 09:02:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230393AbjBFOBz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 09:01:55 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6EF8298EF
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 06:00:50 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id m15so4683985ilh.9
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 06:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MNAVKrJD9jbSiYWr0Av4XwBNw9Kr0TLfkKf5RWu2ymg=;
        b=wUR9sy+JDUEZABIqipj7je+Jxi8uMtf7oX7nPMQlpkT8/ox6ej+VRwILZLbbgKXWWN
         XL1hgT77JowdxdoXEa35KEdVdDJU9fClN7aE0GOpoN6avd1zftyPSQVzxqFNtdqWMj7q
         klb3eePU49zes7W1OLq6MRZcoEUFePHsG4ljB8vdmsSe10rnUDVObJVqL7aVbkuBeG6T
         Wyi2KMlAWAENJ06BctKWEVsipU39odylGFlQGtNSbw6LWr0umymS5lv20kI/bp5iDUsi
         Jxvfj6M5ivwUeLtHCBW0okoyXO877pBJ2mMLcGHggsv0ELERZqVXclzPUHZXTBfMTiLl
         +Mlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MNAVKrJD9jbSiYWr0Av4XwBNw9Kr0TLfkKf5RWu2ymg=;
        b=DA/PKfLqCJfiJ42LAqFWs+yfYnQsi6wk9WqhEHGandtetZ80Rjyixg531gF4ncwzym
         D1izQGS3CalICUNXMO8ltpRZpwxaEf8zBrX5y2qY/ZyupVSaJNKVdWRSXww+dBiVfH8N
         4wqjUU9JcRmzV4wduKg9Ff4ZrQ9XZzrQ81mpqdCvZ/j4kJBcTzQ6nlRHtXr0XBbg4k5t
         UY1LRxjwxBwt3DZkuFGJIJ7zsVgAG7LRqElcv39fsH8Q1Zvem+x9dxL9RMJqx9uMScqq
         3t4PWWbPW8HOXtaj3WBykXKkg/HnjzH1ao0UtQxSa7DQSA/nbcc2O7Nw/vCcoU4va0fI
         LiVg==
X-Gm-Message-State: AO0yUKXn/zvAY0jIlKRGsUc9g9jmyGzqd0LlC3n5F9HZS5WFh6hDCEmw
        hj7Mxxsg9jh7e9fKrdGb1Z5KhQ==
X-Google-Smtp-Source: AK7set/p29Wp8Soev71NkNlEXh9ruJp6jse1g9qHoknoiqxAYsdEPVkFawnbnlwb7C4/PRWgpPfYMg==
X-Received: by 2002:a05:6e02:1c05:b0:310:fd98:1cc2 with SMTP id l5-20020a056e021c0500b00310fd981cc2mr17085411ilh.13.1675692048127;
        Mon, 06 Feb 2023 06:00:48 -0800 (PST)
Received: from [172.22.22.4] ([98.61.227.136])
        by smtp.googlemail.com with ESMTPSA id v3-20020a056638250300b0039db6cffcbasm3457082jat.71.2023.02.06.06.00.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 06:00:47 -0800 (PST)
Message-ID: <5821a8bb-8751-70e8-970f-eb2bf2b077fb@linaro.org>
Date:   Mon, 6 Feb 2023 08:00:46 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v9 08/27] mailbox: Add Gunyah message queue mailbox
Content-Language: en-US
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Murali Nalajala <quic_mnalajal@quicinc.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Trilok Soni <quic_tsoni@quicinc.com>,
        Srivatsa Vaddagiri <quic_svaddagi@quicinc.com>,
        Carl van Schaik <quic_cvanscha@quicinc.com>,
        Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230120224627.4053418-1-quic_eberman@quicinc.com>
 <20230120224627.4053418-9-quic_eberman@quicinc.com>
 <e5acd00c-7a53-a789-8dab-a69cffda34f5@linaro.org>
From:   Alex Elder <elder@linaro.org>
In-Reply-To: <e5acd00c-7a53-a789-8dab-a69cffda34f5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/23 3:59 AM, Srinivas Kandagatla wrote:
>>
>> +static irqreturn_t gh_msgq_rx_irq_handler(int irq, void *data)
>> +{
>> +    struct gh_msgq *msgq = data;
>> +    struct gh_msgq_rx_data rx_data;
>> +    unsigned long gh_err;
>> +    bool ready = true;
>> +
>> +    while (ready) {
>> +        gh_err = gh_hypercall_msgq_recv(msgq->rx_ghrsc->capid,
>> +                (uintptr_t)&rx_data.data, sizeof(rx_data.data),
> you should proabably use  GH_MSGQ_MAX_MSG_SIZE instead of calling sizeof 
> for every loop.

I disagree with this comment.

I think sizeof(object) conveys more meaning that CONSTANT_SIZE,
and both values are known at compile time (so there is no cost
of "calling sizeof" a lot.

					-Alex

> 
>> +                &rx_data.length, &ready);
>> +        if (gh_err == GH_ERROR_OK) {
>> +            mbox_chan_received_data(gh_msgq_chan(msgq), &rx_data);
>> +        } else if (gh_err == GH_ERROR_MSGQUEUE_EMPTY) {
>> +            break;
>> +        } else {
>> +            pr_warn("Failed to receive data from msgq for %s: %zd\n",
>> +                msgq->mbox.dev ? dev_name(msgq->mbox.dev) : "", gh_err);
>> +            break;
>> +        }
>> +    }
>> +
>> +    return IRQ_HANDLED;
>> +} 

