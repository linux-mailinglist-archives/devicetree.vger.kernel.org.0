Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CED475BB9A4
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 19:01:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbiIQRBv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 13:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229455AbiIQRBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 13:01:51 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12A4B2CCB0
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 10:01:50 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id w8so40336518lft.12
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 10:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ig5ssViM1rEyXtUESEN89ct/IqJLFI2/i7+wSTnWs7I=;
        b=gMV4yJpOfyMOcH8d0EHCZ0RwYQ0797S6orU61WuIJ4fEjUcw1vxv8iVBzotacT6/I2
         GzG2bKrbDOQv/lNRNAy2WPTFl2mI2hEVhdZqGXyzgYC26J1PHFg+n1t1ISdfnTWRAZRm
         PLNEa1fGkCtVQJvfMqxizH6Gpmv6M7ztaVkJrzMBSJ9lErUu8eSNQ7PJNjOTPfXveKIb
         iXGmNFwvn4UzsEm5pVZqqQ66WdjuCHTKkbASttuyD/y6mBJfXTjUjlGw/5SCj39vaivv
         A0m3ah3Gg5X+iJqQKJGvN4jhoIESA4dgEnBI4CgG9d3KOubPwkHXCkX1e8a5xvSjxRpV
         9BsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ig5ssViM1rEyXtUESEN89ct/IqJLFI2/i7+wSTnWs7I=;
        b=ciDAHnLBKxNfbZWI1yFZkF/faHafRnAIGKBa9ETEVMaooAcSenk76Getgl532LeK0B
         HVMcT4Nv/lYlfe/mCnicoc9Ie9GBgbz9HyQttEFRpmIEpiVmcBcxwRfw/0Uc2/ZxJoUe
         SHwlIPtmMAslsV/ed5V6BZIxYONRVoRqxnDtBgA7LaHzdLTzKvQRViK7PK9z6UZxQdN3
         LXX6Ia1T9Y+67+U5OivyFobbCD12VJ8/8yhzjkN58TJGslb6KGfq/ZoXuwaiC7JHVrQQ
         g8GdDwqjKTNWxlo+z9VAxMH3M3nOFbc2F/gW3LRxcMIHowUDLo4BZFfk1s15o4spJW4c
         SZHA==
X-Gm-Message-State: ACrzQf1D7dAMVshjiFlLTyFV9xQNaLtB9L8FXYtqN67Pi6QxEnBTdtg0
        c3ZxkPtz3UvAk9llJ0hX3YMUyA==
X-Google-Smtp-Source: AMsMyM5xsPWU9tQoDsp6KN2ZZ9MgzVAhLKrcz5IWH83xPmQ8mgBvIV/ggD6Z682mm/XizJI3uTMifQ==
X-Received: by 2002:ac2:5097:0:b0:498:f5b9:7a6f with SMTP id f23-20020ac25097000000b00498f5b97a6fmr3398509lfm.640.1663434108411;
        Sat, 17 Sep 2022 10:01:48 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z2-20020ac24182000000b004948497e07esm4203460lfh.15.2022.09.17.10.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 10:01:47 -0700 (PDT)
Message-ID: <9c1817f0-da79-7264-7fb6-31a518c3126a@linaro.org>
Date:   Sat, 17 Sep 2022 18:01:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [linux][PATCH v9 2/2] dts: arm: at91: Add SAMA5D3-EDS Board
Content-Language: en-US
To:     Jerry.Ray@microchip.com, Claudiu.Beznea@microchip.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220909163022.13022-1-jerry.ray@microchip.com>
 <20220909163022.13022-2-jerry.ray@microchip.com>
 <eeca0eef-e73e-847f-de54-1511dddff842@microchip.com>
 <MWHPR11MB1693E4BBB610AB335AF32B40EF479@MWHPR11MB1693.namprd11.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MWHPR11MB1693E4BBB610AB335AF32B40EF479@MWHPR11MB1693.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2022 15:53, Jerry.Ray@microchip.com wrote:
>>> The SAMA5D3-EDS board is an Ethernet Development Platform allowing for 
>>> evaluating many Microchip ethernet switch and PHY products.  Various 
>>> daughter cards can connect via an RGMII connector or an RMII connector.
>>>
>>> The EDS board is not intended for stand-alone use and has no ethernet 
>>> capabilities when no daughter board is connected.  As such, this 
>>> device tree is intended to be used with a DT overlay defining the add-on board.
>>> To better ensure consistency, some items are defined here as a form of 
>>> documentation so that all add-on overlays will use the same terms.
>>>
>>> Link: 
>>> https://www.microchip.com/en-us/development-tool/SAMA5D3-ETHERNET-DEVE
>>> LOPMENT-SYSTEM
>>> Signed-off-by: Jerry Ray <jerry.ray@microchip.com>
>>> ---
>>> v8->v9:
>>>  - Changed node name from gpio to gpio-inputs
>>
>> Why not gpio-keys as all other DTSes are doing? Anyway, I can change it while applying.
>>
>> Thank you,
>> Claudiu Beznea
>>
> 
> gpio-keys is the compatible string name. I wanted the node name to be unique
> for grep purposes.

Node names should not be unique but generic.

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> 
> Regards,
> Jerry.
> 
>>> v7->v8:
>>>  - correcting patch subject line.
>>> v6->v7:

Please trim your replies... there is no need to quote everything after
the comment.

(snip)


Best regards,
Krzysztof
