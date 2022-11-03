Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94E12618413
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 17:19:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230231AbiKCQT2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 12:19:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230341AbiKCQT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 12:19:27 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 107C619018
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 09:19:27 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id g7so3695686lfv.5
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 09:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2yVnzJ270MxndNHsiNKCAZSAO873LhfqvnNeO5zqyo=;
        b=Q+kiU8D3QZuigmsHsFqbQM5J6iE9Kb2NXXgIGc55C58o2AjipzonF7j3/bzbFgsJ70
         E6Y1DGHfSII+LopqQKMyE/iind92/y7JScUZcPmzvemWd/QGXiy0HGCMT1F99ia5WlCH
         e79nJi3oj3H733lQZOlqWI5YkzpVKmukHkgOTHzpKFLF/KBGwq9O5pSx/z8YxdNf7UD1
         Yg83KjHg/+3A5TfKpHP8v1hL4JY0smCvC/3fx56wai+kPJ/lsQHIR3AVHdNMKz6Cgf3f
         x9Ajy3HhynT4gjUJL9HGmIQSJoWQa6RZOPrVffgh48oD+1VJAYndKMuRK84NseNMoo/c
         +UWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y2yVnzJ270MxndNHsiNKCAZSAO873LhfqvnNeO5zqyo=;
        b=8D9cdWIkD0Y8PTIt869eUHKjIdITGLQs3PgGxlQSU0HKclQd/66BwVbtQLs17ishjG
         mXnCHC6bz38Sivdjsi+CCzq+JugepyWOQsFcxyXQJOUYBYcjfNkMjurdNG3A5oFfgZbt
         MpDSPErH78vZvHqPE8c+We5r4I/mrT6kRTplFDLDe31gZvvnW9yuP2YDW5SF51fR2OfA
         aHw335f8tKuSSH26pQU4TvhyODuVhwxGKtKL88udNI9npnU5DnpTLPGsWCEynStnjDmD
         tyfKTL46W1iYhhHMvK/5O0NtLuDh6zxgnIpUCTqO635tHtbnIo3VQugbYNdC9OiyH3Qa
         AGVw==
X-Gm-Message-State: ACrzQf1KUhrPdGZnHSON2mig1Oywh32FtMDBj5cxrc1CHTxeUnx6v4s0
        hJ9avWoJoQE0j9+O4fdJGKk=
X-Google-Smtp-Source: AMsMyM4r5T+DUPJx9UrK73BR6K1sRd7Dwa8O4YrLRX8ilO9ZZiICaTGf+uX6jNWSdEERlmvk/9vcqw==
X-Received: by 2002:ac2:4c39:0:b0:4a2:8a13:ad15 with SMTP id u25-20020ac24c39000000b004a28a13ad15mr11865573lfq.150.1667492365267;
        Thu, 03 Nov 2022 09:19:25 -0700 (PDT)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id 2-20020a2eb942000000b002773a9b5898sm147056ljs.138.2022.11.03.09.19.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 09:19:24 -0700 (PDT)
Message-ID: <9d4da23c-7acd-d23f-22e9-78677f0e9ca2@gmail.com>
Date:   Thu, 3 Nov 2022 17:19:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:96.0) Gecko/20100101
 Thunderbird/96.0
Subject: Re: [PATCH] ARM: dts: bcm63138: drop invalid "nand" interrupt name
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221103102406.18339-1-zajec5@gmail.com>
 <9b346154-4f11-3682-3b6d-73c76170455d@gmail.com>
 <57974d7f-66f2-8bf6-9d80-7fb9b6978465@gmail.com>
 <2989929f-d042-99c8-f933-2a811eab339b@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <2989929f-d042-99c8-f933-2a811eab339b@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3.11.2022 17:12, Florian Fainelli wrote:
> On 11/3/2022 9:02 AM, Rafał Miłecki wrote:
>> On 3.11.2022 16:31, Florian Fainelli wrote:
>>> On 11/3/2022 3:24 AM, Rafał Miłecki wrote:
>>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>>
>>>> String "nand" was never a valid interrupt name. It was never documented
>>>> and never used in Linux or U-Boot driver. It most likely comes from a
>>>> copy & paste mistake ("nand" is used in "reg-names").
>>>>
>>>> The whole "interrupt-names" property is optional and can be skipped.
>>>
>>> How about we just fix the binding document instead? Deciding the fate of a property based upon client programs of the DTS using it is a weak argument IMHO.
>>
>> It's not a matter of client programs.
>>
>>
>> Binding clearly says that the first interrupt is "NAND CTLRDY interrupt".
>> Please check: Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> 
> The binding is trying to capture all of the existing conditions that are present in Linux's tree but it is not actually specific enough for instance flash_dma_done and flash_edu_done are mutually exclusive and depend upon the controller's generation. Something that ought to be fixed as a separate patch.

In that case binding it wrong and has to be fixed first.

In this case I'll work on the binding first before cleaning DTS files.

Please drop this patch for now.
