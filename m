Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C9475F62B9
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 10:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbiJFIdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 04:33:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230227AbiJFIdH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 04:33:07 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94B3D93791
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 01:33:04 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id d6so1611706lfs.10
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 01:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=0zWyrMkyGobrQx874bTZAA5b8Dexwv4AiQ2OcW+8aGg=;
        b=Y0pbM6ALrzdTBdXJS966/k1eUheM1kRKNqh/1tvMhMtz20fhpmHRsiw6pvOoxXctNW
         BOvA6s/vw9ZZkwgKgecdMPfoK6uk/PUzvzf7Qt1pNdjZfozeBq+sN3iBhim8uXtKa2IM
         8xkSfEX6rWrgBj1a5cyOd0hwQcCRy1DmkwdMSr+GL5CwFcQJ7prg6B0X5RUnIZamT8k4
         YXKtaGipBhk/vf+eL3inX1B8/qpmd8bG24zRG0HXkqlvsEZjHKpf5nGoNOy1rwonqB9k
         E9EHCs7JOTYmMFu2SKhkmDZFrzYKp4qLQeksNjbm8cuAoVg5as2VG/bw7zr2RIYxUgLv
         Lo8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=0zWyrMkyGobrQx874bTZAA5b8Dexwv4AiQ2OcW+8aGg=;
        b=gVI7k08kQscSfvYaMEmo8HlKCn65qWXiUpahhMJApd9YKvPoKpa0a2rMVNs86pcExS
         FeuajcQKgSU2hs63rtej81OXzb4HoZbkUBYC0RYybA8YLvViBd+n4NCdxfk968GQGWbk
         VDGsZrZhflP6PUesPmtGb+wy6ksLvwOpyCT7KZhA/ZgJfwJCOfS+BUnXB3VoBUZPHPGH
         hibxVcDqZczgxOl7evSbrM4R1ZoeIn5d9Smiu0OWYaSd5XMtE2NI9kNogVzB0buFqWY/
         16UifrLHBNcN3Q/CNh5axH/V5uQATOtyWCZ6Vf/VEdw2l7L2CzL4UgPUG6uGUJcqgz6X
         krqA==
X-Gm-Message-State: ACrzQf1owN17o7DhGOHlxOT7fu+9C70oLEWgY136PcLf9ePjLuTwj3TR
        /5Posf9buB+3nhdyjeh2s8dPIw==
X-Google-Smtp-Source: AMsMyM5Sz53eIoUkX9ETZyqQ/I4MORTTZlFSKbuF8Cns63ZSpGZzYepD6qvicoYHW8NLGQL4JyEAHg==
X-Received: by 2002:ac2:4114:0:b0:4a0:6357:c362 with SMTP id b20-20020ac24114000000b004a06357c362mr1354775lfi.140.1665045182948;
        Thu, 06 Oct 2022 01:33:02 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i1-20020a2ea221000000b0026c549bdd2fsm1825034ljm.129.2022.10.06.01.33.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Oct 2022 01:33:02 -0700 (PDT)
Message-ID: <f48f112b-a5d5-e0ef-f97c-a582f856d6c9@linaro.org>
Date:   Thu, 6 Oct 2022 10:33:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [RFCv2 PATCH 1/4] dt-bindings: bus: add Wiegand bus dt
 documentation
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Za=c5=a5ovi=c4=8d?= <m.zatovic1@gmail.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linus.walleij@linaro.org, brgl@bgdev.pl,
        gregkh@linuxfoundation.org, jeffrey.l.hugo@gmail.com,
        andersson@kernel.org, Michael.Srba@seznam.cz, saravanak@google.com,
        mani@kernel.org, hemantk@codeaurora.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org
References: <20221005145746.172138-1-m.zatovic1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221005145746.172138-1-m.zatovic1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/10/2022 16:57, Martin Zaťovič wrote:
> This patch documents the devicetree entry for enabling Wiegand
> bus driver. The drivers that will use Wiegand bus driver shall
> create a sub-node of the documented node.
> 
> Signed-off-by: Martin Zaťovič <m.zatovic1@gmail.com>
> ---
> Hello again,
> 

Missing cover letter and changelog.

Best regards,
Krzysztof

