Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79BA66819B3
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 19:55:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237541AbjA3SzO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 13:55:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236242AbjA3SzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 13:55:13 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB5626582
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 10:55:12 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id c124so8518078pfb.8
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 10:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b3PX0zQGrK5y8iu02KEGBurLYy151zBq8KyGCmE0yjY=;
        b=AMd0kXmr9vmpbWaluw+VMzmIcJDFwS4jzcz82kHNX+SsxxzmMgzS3qoiQYiKXEYS0e
         j5z3LoWReQ0iZbUUW8RXHnkIr0REJ0c8LlYYvUgk8SzWgl6jOxowaet1RYlyWLjNrFd0
         P6754dPAWJ7i3tauY3KgyUZgDA7bewMXZ/xpOF1JbFfMSTHyKcb+0VOSePmevhHGU7F9
         UC4Cc0EyD3syozcquv5TDRSnnLDniHZPQUfCix7Vs7u6srRTC2EvcvbLcEqLnCc3WB37
         r+TP9pnxJ+KT2WYrVXcyoz06dSRBZYs4XmvKIHdUTlEK2BSUi8YjP7k+5bkXRzLpW5Co
         97Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b3PX0zQGrK5y8iu02KEGBurLYy151zBq8KyGCmE0yjY=;
        b=C+eSrE+vkuPtnRL5tpLCbumSgos4aS2eQ5nKQLn6lqfg8n7vDyv5jfrcLpaPA1KZkP
         9nz5ySIDvxgLhVRLTnywTeYJ88Lm3soaVS6QRsLi36DLSPQXqzVWWAZ81Wq6F0kXjHFl
         kkM6hjBs6AwQm+X46SyfEO3bxHYsuEe0obXORTYmr6velIDEIjh6364f+iK2NhukmGa/
         el4ARHiu0lLzZ7e/xmxhD+P6zNGMm36WLXBd/aJfPT5PMd2HiEpvrzafHyh9lTTLft6S
         k8eHoJhqFbvVnMIP660EFbTXb5RGjK7TPixzkxQk+1+zQsx27lSF5FEjx2/z+YUONGdi
         Hwfg==
X-Gm-Message-State: AO0yUKVCa0eJvU4s5DN1MLCeelnGDbwG+cAbPEa7SUXIwwCT158ccGEI
        bsNxtxmwFvNj3WJSjKyUA4/ffw==
X-Google-Smtp-Source: AK7set/CODbF1cofKbp2tye5jjqXv4RO9tqNp12t1qheBpmw51d7+fqFth63TATK6xiAaNxji8CSFg==
X-Received: by 2002:aa7:8742:0:b0:593:b115:e2ca with SMTP id g2-20020aa78742000000b00593b115e2camr5236184pfo.9.1675104912370;
        Mon, 30 Jan 2023 10:55:12 -0800 (PST)
Received: from ?IPV6:2601:681:8600:13d0::f0a? ([2601:681:8600:13d0::f0a])
        by smtp.gmail.com with ESMTPSA id x62-20020a623141000000b0058d9058fe8asm7747970pfx.103.2023.01.30.10.55.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jan 2023 10:55:11 -0800 (PST)
Message-ID: <5afd356d-7ed6-6f14-49be-246ff43d233f@ventanamicro.com>
Date:   Mon, 30 Jan 2023 11:55:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 0/6] RISC-V: Apply Zicboz to clear_page
Content-Language: en-US
To:     Andrew Jones <ajones@ventanamicro.com>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Heiko Stuebner ' <heiko@sntech.de>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>
References: <20230130120128.1349464-1-ajones@ventanamicro.com>
From:   Jeff Law <jlaw@ventanamicro.com>
In-Reply-To: <20230130120128.1349464-1-ajones@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[ Sorry for the duplicate.  Andrew indicated I'd used reply-list rather 
than reply-all.  ]


On 1/30/23 05:01, Andrew Jones wrote:
> When the Zicboz extension is available we can more rapidly zero naturally
> aligned Zicboz block sized chunks of memory. As pages are always page
> aligned and are larger than any Zicboz block size will be, then
> clear_page() appears to be a good candidate for the extension. While cycle
> count and energy consumption should also be considered, we can be pretty
> certain that implementing clear_page() with the Zicboz extension is a win
> by comparing the new dynamic instruction count with its current count[1].
> Doing so we see that the new count is just over a quarter of the old count
> (see patch4's commit message for more details).
> 
> For those of you who reviewed v1[2], you may be looking for the memset()
> patches. As pointed out in v1, and a couple follow-up emails, it's not
> clear that patching memset() is a win yet. When I get a chance to test
> on real hardware with a comprehensive benchmark collection then I can
> post the memset() patches separately (assuming the benchmarks show it's
> worthwhile).
> 
So a note.  On the userspace side we are using cboz for clearing memory 
in memset.  While the data is intermixed with other changes, there's a 
very significant drop in stores and a host of related low level 
performance counters and a notable uptick in gcc #5 performance from 
spec2017 which is particularly sensitive to memory clearing.  We haven't 
seen any performance regressions attributable to using cboz across 
spec2017's integer suite.

I believe our current threshold setting is to use cboz for chunks >= 128 
bytes.

Jeff
