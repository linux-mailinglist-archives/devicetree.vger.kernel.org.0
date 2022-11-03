Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65E446183AF
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 17:05:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232093AbiKCQF1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 12:05:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiKCQE7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 12:04:59 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFD471B9C3
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 09:02:37 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id q9so6657900ejd.0
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 09:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jc5FMVR300pTnc8yKj0piPtOclOddXf/wOQ8ODzg3yo=;
        b=FbW6UpkzkgrEfPj0fwPymrisDuqYa+XdmeQh0lis+HnQRulIInaSY8CzoQvFYG2cDO
         sfT7fyUvjP/ggkfByrLbN7tChhWOqIgFOMSGE/7a5Jru+aHptHv1qBXHzei3UO4I4X8y
         sho1UnMO+H94/kF2w/zeQQkJkxtgS2aYRjexGMaS+UDJ4PX4ZERHsRsKgy2eSyq/SHa1
         P6cn/XEmPW41S8QHaW6lxd/rt4s5FGo4a73+d4wZCcGOWJMTEuTloxehtvuevpYkw4Fg
         sZ+Bq3dODL3rYlboIfOBNkh3LfT4MaTx4V9I53A/xaQ87LtDPQsLRdRIZriHcAowk8XF
         tTNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jc5FMVR300pTnc8yKj0piPtOclOddXf/wOQ8ODzg3yo=;
        b=prPWzGYQVCCL/oZBDdKs/WZ59Moo3h//kpkCJ6EDxo7sS0UV+ZTeHMd4UibO2NbM00
         GmDEj6/leFKoiN0tpBcSuMA6nLuscHSOZfsAu6nf8kdES7hXFgQKZC1OQC7uHp3NqdVP
         8b0AvYr+tSrWwO4cfiJailTY8GToGOk5I4wbBdVmKscHZB5PuHoeGX+NgDFkFBxtjtP5
         r3Ma11Dz+CZjCcmIL5W8UelLkCzfzCrqXGdtSIOZhKZ4RXpODscYScV+zonsmXZPX3Hz
         vO6HMptNI0Z3e8xljJl12gNHKRMHsMfHr6n+qxUSWB/liXkUzWxDvvrhd9dvXH+xQBx+
         lHjA==
X-Gm-Message-State: ACrzQf21Ql8eOPD9KQ2tssYKKjUjcztxJzH1v5IDZjO7j4Y0SvlEQtIO
        IQr+hu7U9xW96VdETXyoWNzELi1dVf8=
X-Google-Smtp-Source: AMsMyM4ZCOXDrliywtjqJCXFgmaZaHaPWO2nQmYxa8116OXdf4v8TakEtycvgExzhXhL0+VzHqvY9Q==
X-Received: by 2002:a17:906:5dae:b0:78e:3109:36d1 with SMTP id n14-20020a1709065dae00b0078e310936d1mr30115439ejv.470.1667491346242;
        Thu, 03 Nov 2022 09:02:26 -0700 (PDT)
Received: from [192.168.26.149] (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id l25-20020a056402125900b004616b006871sm666127edw.82.2022.11.03.09.02.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 09:02:25 -0700 (PDT)
Message-ID: <57974d7f-66f2-8bf6-9d80-7fb9b6978465@gmail.com>
Date:   Thu, 3 Nov 2022 17:02:23 +0100
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
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <9b346154-4f11-3682-3b6d-73c76170455d@gmail.com>
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

On 3.11.2022 16:31, Florian Fainelli wrote:
> On 11/3/2022 3:24 AM, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> String "nand" was never a valid interrupt name. It was never documented
>> and never used in Linux or U-Boot driver. It most likely comes from a
>> copy & paste mistake ("nand" is used in "reg-names").
>>
>> The whole "interrupt-names" property is optional and can be skipped.
> 
> How about we just fix the binding document instead? Deciding the fate of a property based upon client programs of the DTS using it is a weak argument IMHO.

It's not a matter of client programs.


Binding clearly says that the first interrupt is "NAND CTLRDY interrupt".
Please check: Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml

Other interrupts are described as well. It's just "interrupts-names" that
are optional.
