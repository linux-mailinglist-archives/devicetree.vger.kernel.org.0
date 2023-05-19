Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F37D708F44
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 07:18:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230077AbjESFSV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 01:18:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbjESFSU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 01:18:20 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3734E19C
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:18:19 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2af225e5b4bso5611511fa.3
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 22:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684473497; x=1687065497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7rBphvHpgdZkzl2iIrldWiAL8njBQWEBXOB/J31EdkU=;
        b=mRN4h5NohRG9nqlBRbSxB+r4wuaEEunc6AKGKEociIHhA5A0mBvfhackobmdwxJEyT
         c/HA40hfx0WgFELtveCJyceF+9Y3eWMXiDCzQMTxqGLyTGbGGNAi6WXqIXT1h5zmV85+
         WOdOL+lfhI5r6O2WZmws+VmizTGtW4KHyU9Txx6zgMzPT3PMWgvxhrSm93TTfVA6MyGp
         DtZdOvYTBgiSJq9QSPZOiHh19rxbPfMs1LiWFD7bth6ZAczfWO4D18+BcxiiOct4IfRp
         sI/kaLFjfbEfzIIiy9xIZ2OX1a14fwFetf5qTx4/T8y7ILRT7KTUYCEZA+PcCEST9S7S
         EU4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684473497; x=1687065497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7rBphvHpgdZkzl2iIrldWiAL8njBQWEBXOB/J31EdkU=;
        b=l+mE3FFedi9LMlt3nOFV3v881UmUkzJVKgqJJoiU+/n/XvXk4m1G7afA0pOOzrzoe3
         pqZo6VBYgSfl+J9yULOBO1Top4KgT5lqoHXIEZ1QqOmUNiV9dtHGUb0IoZzbXR5x3zJO
         e9OTZ3Wz4NVVijBhaoe5msAZFuYeHk99ISDxAhCkEXu1OWm6m41f1c4B715P3jc/73Qn
         wJTPKzmJwwdrGFWU+Aytts+0FFjKWbpj6kwHcHYKk1pTQTuHjVe2JU6kIArIxd3unO9x
         86zHj18euDpoUs5oPlkUU2fFGXKSH5V22dKle9vbGcrc2IMuII7cmy9i8xqPus5D5sTm
         ZwPg==
X-Gm-Message-State: AC+VfDzOjrfI1a9EF6CxWjTmqB1oRU0k9yfJvZcg2DnxIbohTMMUf7v9
        s6YZ8yV1T8SbuerFw9wW53+1lqa+a6g=
X-Google-Smtp-Source: ACHHUZ6h6AowVjmkU4nBa+Bod6JDvPX/3FrfHpsO8mS8YcCD8CDwlNhDHnFiud6FSpZBp/CTUpwBMQ==
X-Received: by 2002:a2e:8958:0:b0:2ad:8c4a:ef7e with SMTP id b24-20020a2e8958000000b002ad8c4aef7emr293827ljk.43.1684473497161;
        Thu, 18 May 2023 22:18:17 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id x11-20020a2e9dcb000000b002ad8fc8dda6sm644459ljj.17.2023.05.18.22.18.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 22:18:16 -0700 (PDT)
Message-ID: <aaf324b7-2e83-e82d-5f88-b11e24cd375a@gmail.com>
Date:   Fri, 19 May 2023 07:18:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] ARM: dts: BCM5301X: Relicense Hauke's code to the GPL
 2.0+ / MIT
To:     Florian Fainelli <florian.fainelli@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230515151921.25021-1-zajec5@gmail.com>
 <647ab902-a851-bd15-958f-8a25244c2dcf@broadcom.com>
Content-Language: en-US
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <647ab902-a851-bd15-958f-8a25244c2dcf@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19.05.2023 01:00, Florian Fainelli wrote:
> On 5/15/23 08:19, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> Move code added by Hauke to the bcm-ns.dtsi which uses dual licensing.
>> That syncs more Northstar code to be based on the same licensing schema.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> Cc: Hauke Mehrtens <hauke@hauke-m.de>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!

Please don't / revert until we get Acked-by from Hauke.

I'm sorry I didn't make that clear.
