Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D69A2656B38
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 14:07:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230497AbiL0NHV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 08:07:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231712AbiL0NHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 08:07:07 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BEEA65AF
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 05:07:05 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id f34so19531257lfv.10
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 05:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fryBc2ReBKYkm7biN0NMY5X+SgbelRAYfE7u3q3Vjvc=;
        b=g1+FfsFLLO3Au2G2wQyk+87Ld6OTtPTu2OndtMJegNU20G1rTnG0h0PB61VJ4AhU4m
         VFv161Um8Wtc4TPXv/gOObd5JhEtosjD1hS/0yTSJZmkSZ5CeQFGdUhL7sch8k4xHqj3
         H1DvbfoukxNChz4bTCYSaKQbAbI5PfNqibuCDeapOgwB9abfSyowXdQjIuMNcCnu6s7h
         4PM2ToaHrf2kTR0eAJ2Bm5NcVNHJmKJRYchXCTRcyr19A0OmFgXChM2O0COzcHDvpPNk
         KTFVQXZs27Vci23VfQ4fmimwjET/uVnnUMsmmcY6JqnJZe+zFr46JsCRh/Y9nNVa3bnR
         s+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fryBc2ReBKYkm7biN0NMY5X+SgbelRAYfE7u3q3Vjvc=;
        b=R81jSerMlWjVh6iwfvC1k7mb7sbl64Nm3vhbtRyLkTIy+h9ITKNnmKtjxjUSiySc95
         fU6NDoNl7U+CoqOFK1mZdgyCH1bCc4Skc61Bb0BpMsYT0iHYTFnw4ZuhlSCSA3KK1CYg
         kKtJUONkav7kffwhZuee/Izx4aC4dD8iXKaVui+CogSIXamUp6lHPJbABnctvprz0W2m
         fKY37XxhJUa1KGOBdr25fH5FxSjbW062zIgQoN7dlIkn7cie7WrsBlOxIQAE8D+gvUKX
         A8a72/yS/c0AqxlwVdnLFEchNDvWN2hUFYQFzn+2A/h6twssd9duffNhQlEmOLvETrtn
         /RIg==
X-Gm-Message-State: AFqh2krTgQKZ8LdPpUp0jQOrIKvRDTd7uuKOup+YOU7ce65nMDPhGP6+
        6gtnze1VEsjqa9CblNf6M9IOXQ==
X-Google-Smtp-Source: AMrXdXuEJ2vq5a5iMYzw9r11cWpAKWUMFX8b3JRMjpyzCwOIaKmFhfpmQPHLLXnrMGdf3awwezLogg==
X-Received: by 2002:a05:6512:210c:b0:4a4:68b7:deda with SMTP id q12-20020a056512210c00b004a468b7dedamr5468462lfr.54.1672146423528;
        Tue, 27 Dec 2022 05:07:03 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q27-20020ac246fb000000b004b48e0f619asm2295003lfo.48.2022.12.27.05.07.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 05:07:02 -0800 (PST)
Message-ID: <02e8c75f-658f-320c-7c90-64ccf2beccbe@linaro.org>
Date:   Tue, 27 Dec 2022 14:07:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 0/3] StarFive's SDIO/eMMC driver support
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@linux.starfivetech.com>,
        linux-kernel@vger.kernel.org
References: <20221227115856.460790-1-william.qiu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227115856.460790-1-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/12/2022 12:58, William Qiu wrote:
> Hi,
> 
> This patchset adds initial rudimentary support for the StarFive
> designware mobile storage host controller driver. And this driver will
> be used in StarFive's VisionFive 2 board. The main purpose of adding
> this driver is to accommodate the ultra-high speed mode of eMMC.
> 
> The last patch should be applied after the patchset [1]:
> [1] https://lore.kernel.org/all/20221118011714.70877-1-hal.feng@starfivetech.com/

It's a duplicate? Why do I have two of them in mailbox? Isn't this v3 then?

Best regards,
Krzysztof

