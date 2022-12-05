Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D67C642350
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 08:04:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231430AbiLEHER (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 02:04:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231349AbiLEHEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 02:04:16 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3320ABC93
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 23:04:16 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id h33so9684231pgm.9
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 23:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h1bJFFDrDxQsc4ff8Y0/CXofAwUfqeUT0bE4h35AYNs=;
        b=Felel6oVSSOeWo9WtY3lbL22k+EDE+7nyP+Qd+OBtBrevi4M6iaRzTQ/eNKgUh1r8I
         4P2rqcxXP4yLd3r+vJw8EfRlBJprKkfnIFsxSiZFPyBwuFy+pdXecuWOwQiZMYV4M/+g
         pkh4XAhE2/ZTKtnq3m/QAZ4aEABmnM+LFJgjW+u+W5CTQKs4r+W9hn7wquyoa8aMYTLl
         FK6E9fSIfLYo1rjJ9WWKYOXlLgXQ4JjIT3xsez4pwdtHLOIqQT4CZoSa4CpxREQ6i4yI
         xBM4hFm4J0MQahDqNQ71M+luup1FFfiT+YELFlrpqVyq4w6AkoL0eZv1jiKM5MuRQWft
         ry/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h1bJFFDrDxQsc4ff8Y0/CXofAwUfqeUT0bE4h35AYNs=;
        b=zUlqenlXpTJrKyMgRHG8OGu2mCay4+j+n337hVMGYdnB3o6KJJkoz8SSTwf1Jx41Sv
         szzmv1X4R9MbrPT5xgWgTEmeHKzknbhel62vfd/3rdQxQ5d30B2kLFe4lec8GqNgpRFR
         ZdH7IjmtbbgWAzoWrCRWLS01IK4+k1sZLgs4IfuvNmH2ViEPr9WI5bw2EibjFtRHuwJm
         k3v/hq7L0yio2AJVutm2oBaybbTC56axsuX61mAbzmZHDpwZcNyj+Z61yhfswdS1LZwA
         QO7/IFvurZSL0Z382So6bwXictBONAfUg8p0pD88xjdd7EW8YlYSIrU38qzf9ctuWA70
         29rg==
X-Gm-Message-State: ANoB5pnmdULcfhC9VUtUO6g3l99vnv6rc4SEOo8Tquk1MvFtgwcXtOMD
        h5kQT8kZg0TzNTbN8rX+3iDZthmyq1iZI7EA
X-Google-Smtp-Source: AA0mqf6vGyhJfE52eV9y6PzkBHCXdFvyEl+8lWX22unoM+rheK6oYjMO3iEPc3EPmL6c59Vo/KVNbQ==
X-Received: by 2002:aa7:9892:0:b0:576:4aef:f1e7 with SMTP id r18-20020aa79892000000b005764aeff1e7mr15811346pfl.18.1670223855619;
        Sun, 04 Dec 2022 23:04:15 -0800 (PST)
Received: from ?IPV6:2405:201:d02f:d899:2028:7962:400:43b6? ([2405:201:d02f:d899:2028:7962:400:43b6])
        by smtp.gmail.com with ESMTPSA id px13-20020a17090b270d00b00218fb3bec27sm8532066pjb.56.2022.12.04.23.04.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 23:04:15 -0800 (PST)
Message-ID: <67b0db30-49d5-4ba7-1764-dbae16f13d7e@9elements.com>
Date:   Mon, 5 Dec 2022 12:34:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [RESEND PATCH v11 1/2] dt-bindings: mfd: Add MAX5970 and MAX5978
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Marcello Sylvester Bauer <sylv@sylv.io>,
        devicetree@vger.kernel.org
References: <20221124110210.3905092-1-Naresh.Solanki@9elements.com>
 <20221124110210.3905092-2-Naresh.Solanki@9elements.com>
 <166976687726.552364.17379342841980861555.robh@kernel.org>
Content-Language: en-US
From:   Naresh Solanki <naresh.solanki@9elements.com>
In-Reply-To: <166976687726.552364.17379342841980861555.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 30-11-2022 05:38 am, Rob Herring wrote:
> On Thu, 24 Nov 2022 12:02:08 +0100, Naresh Solanki wrote:
>> From: Marcello Sylvester Bauer <sylv@sylv.io>
>>
>> The MAX597x is a hot swap controller with configurable fault protection.
>> It also has 10bit ADC for current & voltage measurements.
>>
>> Signed-off-by: Marcello Sylvester Bauer <sylv@sylv.io>
>> Co-developed-by: Patrick Rudolph <patrick.rudolph@9elements.com>
>> Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
>> Co-developed-by: Naresh Solanki <Naresh.Solanki@9elements.com>
>> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
>> ---
>>   .../bindings/mfd/maxim,max5970.yaml           | 151 ++++++++++++++++++
>>   1 file changed, 151 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
>>
> 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> Missing tags:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
I was not sure about adding tag for patch resend.

Regards,
Naresh
