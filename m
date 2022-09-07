Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D38C75B03E2
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 14:27:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbiIGM1N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 08:27:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiIGM1M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 08:27:12 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5238BACA13
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 05:27:10 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id m15so2497773lfl.9
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 05:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=hkt5H36L3OARQPXUWShQgmKb8uHcR0j2cY0iuaSsFjs=;
        b=yPYIySVyJlG1GoCJFTwPifoRfXI5LWpYm6hMpU5UYf7BsA9LJAV+AxQVwh6nDNAcKJ
         bidDdQ5G2HlmY0LIWXg8DJ/WuWcLG7KgnMcPFtODGVEm9MkqA+Ah0asKYkGerMqtXoE3
         zsasQiw7Ymkfi5diqwV7aUgO36YU8wP5V0m0RrBMS3ieMUwU6tdo5NrEGZ86gVdgkrMh
         YOi9qBUzcY1QkVlFlS3fIZEAvoo3eOF+2lUjseWhJD+hIVl0n+EUC55lWAUX3tSBsJia
         EHevE59bxBbeZhm5w3i4eeuLHRCGMhdaJdl/EcTifT10Vs6IvgaX1g47CGli4hKi1GJN
         qXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=hkt5H36L3OARQPXUWShQgmKb8uHcR0j2cY0iuaSsFjs=;
        b=2CbTLf0buFL7FTU8wMnDf8RnnaKizoKRjbRzY09fpMV/s9KYRYlncCj9bQrWdGZhU5
         Dhkil2vcmmfjUI23kPMhJ6G1ecXBLM3HEc14NiTM3bHdemdqiQn64kP0ugchaY6vhlza
         /b24N9+vM9SOq38uYeKWjyX3DOKk/8wdUIOYshAtwrO9WPKoeZ9/T4IuLMYVZqhLqhgS
         6L0fB6NSdig6S7tRnUqc0u8k16uWD7GZlDJH82Abw0YYrL35KDUOeeGHshDylMRM83W8
         3ruZ9m4V6da00lV+4kBpGioylMtV0E14f5kgQfyWEtDpptPcJASTRFRxTrlYSqyolyQZ
         ne4A==
X-Gm-Message-State: ACgBeo0RmHZ55J2p9zekTxvQK/SeKazrveX85Z+6Wi9DkgvyL0d8BOK4
        k8+FSjBZsf4ozjwSkYSer7/2e3SvRwGXeA==
X-Google-Smtp-Source: AA6agR5gM5S1o4Rffv0N/rKle5mJ0G+VWZe+TicMZ4aaD1YM7lDKNIOMPR+gGy7M4hewgiNGl46L1w==
X-Received: by 2002:a05:6512:169c:b0:492:ca5c:eb23 with SMTP id bu28-20020a056512169c00b00492ca5ceb23mr1098925lfb.646.1662553628486;
        Wed, 07 Sep 2022 05:27:08 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q14-20020a2eb4ae000000b0026ab199e137sm1040840ljm.48.2022.09.07.05.27.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 05:27:07 -0700 (PDT)
Message-ID: <8fe93da3-f768-16ae-7025-1cfa97a42b27@linaro.org>
Date:   Wed, 7 Sep 2022 14:27:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/3] dt-bindings: reset: syscon-reboot: Add priority
 property
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linuxppc-dev@lists.ozlabs.org
References: <20220820102925.29476-1-pali@kernel.org>
 <20220822124728.GA3641041-robh@kernel.org>
 <20220822135050.o4a4bw3dqkmhtjgb@pali>
 <20220902203721.GA356619-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220902203721.GA356619-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 22:37, Rob Herring wrote:
>>
>> Sorry, I do not understand.
> 
> So just keep sending new versions instead?
> 
> syscon-reboot is not the only binding for a system reset device, right? 
> So those others reset devices will need 'priority' too. For a given 
> property, there should only be one schema definition defining the type 
> for the property. Otherwise, there might be conflicts. So you need a 
> common schema doing that. And here you would just have 'priority: true' 
> or possibly some binding specific constraints.

I'll propose a patch for this.


Best regards,
Krzysztof
