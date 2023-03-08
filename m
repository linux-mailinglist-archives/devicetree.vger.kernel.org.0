Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB6D66B046F
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:33:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbjCHKdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:33:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231260AbjCHKdO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:33:14 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0140A59406
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:32:41 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id ec29so32898236edb.6
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 02:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678271560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vchNl3NuLhSOPZeKiU1gSl3ELxe4d2/LRXwBMhHatCE=;
        b=c3b/ytXrzqtoZMZbteML1kksyXHt7G3JBmRsn0THDAawWXoEFPXtctrz45Rnp7KCH0
         UwHJCYJZtR0VWZT1nsmAU/U/WDx51Fw9GD9BHbz9MQb5NFJZjeu0i02GfCG3xeecS/08
         d7XbqOMzR6m5uP+Bafbu+5lNv28yo8CUpFXAg/eP5s43IdnvY+cWAjF+iylHqspM7zeU
         R2UNBhHFDMD+mVE+KwIK2f+YOIU4UHzSCTeB28npv7M0zuvcalFtxe7/DO9GfbAT1OOq
         vchjBtAuYyn4hZx2NoC4IrGv9/7EGLayWhV7UHGW859QFizGEr0aG0yB/eC6VQEVTcbR
         LMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678271560;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vchNl3NuLhSOPZeKiU1gSl3ELxe4d2/LRXwBMhHatCE=;
        b=4R3esQ2A2B7QptpWKXUGXjKc7AkeTCl+lUDK+AZG5bMBjrDAzuYAcK8SsicAFPw58P
         cPHKFUcNepoTil+CtSlUd6MWngrFTmAYKLjJv7FIVrNsXQxWicn1GTiZ4aYaq4O9ajq8
         Sfta+ggzlzCTrMPaBZs7qR9Q/CuayhHtv7UEgrS9rYE0Gevz/eiClNduEoNU1uZ/nsp3
         X1KH82zJlzJI0Ff6wOEoZT+k+YnaRhXpRIZMlg/s7lEkJG6Try1a3WWnJe5fESIwsfx/
         e4lK8StAEDMCrcR2nIZ8Az+qX2jH6VqMW+2A7yHdMi5vd6sdm9rHyajTQQWZEwEZJxXW
         5IYw==
X-Gm-Message-State: AO0yUKUr3ElZU7DGwUm1qCZrZ5BX+5RwiaSg/eeLvVmd8pz4iURDL01d
        /7hJbzapFOm0wdkuiIjBgRhXJQ==
X-Google-Smtp-Source: AK7set/sZuccI6EulJ89r5oNlDdrNB+PTCG9d7eavd9khNgw2OTMOpXtyhZgv3mhT81ah0sRRicbPQ==
X-Received: by 2002:a17:906:5857:b0:878:81d7:9f77 with SMTP id h23-20020a170906585700b0087881d79f77mr16132740ejs.34.1678271560455;
        Wed, 08 Mar 2023 02:32:40 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id o6-20020a17090611c600b008b17eb06282sm7304614eja.213.2023.03.08.02.32.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 02:32:40 -0800 (PST)
Message-ID: <c1758867-c768-6c00-613d-14dc59d5b092@linaro.org>
Date:   Wed, 8 Mar 2023 11:32:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 02/11] media: dt-bindings: starfive,jh7110-mipi-csi2:
 add binding docmuent
Content-Language: en-US
To:     Jack Zhu <jack.zhu@starfivetech.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, changhuang.liang@starfivetech.com
References: <20230302091921.43309-1-jack.zhu@starfivetech.com>
 <20230302091921.43309-3-jack.zhu@starfivetech.com>
 <11e7c986-e6cc-ee57-b36e-816af8cc11a7@linaro.org>
 <30000009-cf05-988a-9817-97a7af36db37@starfivetech.com>
 <6aeaa895-7f99-3598-2490-88eb48735a15@linaro.org>
 <d2b7207c-9dab-958b-58f0-5a3c28202470@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d2b7207c-9dab-958b-58f0-5a3c28202470@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 11:08, Jack Zhu wrote:
> 
> 
> On 2023/3/7 15:53, Krzysztof Kozlowski wrote:
>> On 07/03/2023 07:41, Jack Zhu wrote:
>>>
>>>
>>> On 2023/3/3 16:47, Krzysztof Kozlowski wrote:
>>>> On 02/03/2023 10:19, jack.zhu wrote:
>>>>> Add DT binding document for Starfive MIPI CSI2 receiver
>>>>
>>>> Ehh... you have entire commit msg to explain what you do here. Yet there
>>>> is nothing mentioning that you actually have Cadence MIPI CSI here.
>>>>
>>>> Since you decided to add new bindings, you receive review matching new
>>>> bindings. I don't think this is correct approach (duplicated bindings),
>>>> but could work for me. However how are you going to solve all the points
>>>> of my review?
>>>
>>> Maybe I don't need to add the CSI yaml file, since it already exists on the Linux mainline.
>>
>> If you add *only* new compatible, you do not need new binding. If you
>> add any new properties, then depends, but old binding anyway would need
>> conversion from TXT.
> 
> have some new properties, this means that
> need to convert cdns,csi2rx.txt to cdns,csi2rx.yaml and add my new attributes?

Yes.

Best regards,
Krzysztof

