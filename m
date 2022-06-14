Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B988254BDDC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 00:48:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346067AbiFNWsr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 18:48:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231621AbiFNWsr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 18:48:47 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBC4B506D9
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 15:48:45 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d5so6325166plo.12
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 15:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ckzfOBOXln5+K6e0MajEk9XqA4yt2a92cLnaRv7ENjw=;
        b=z1jefNplZhosYNG4SZ68VydsElXOi37zu8Ihl++/nBUE1l2tDDWqzQuw4lo2O+hikh
         B2kUD3bG9KRnx+Lb1d5iWyKPlLwmoWmkBtlEiyPKAEP8lUlM+aC/GuOuK2njL17sYUnq
         V/7wpWK3I3ZFxVCZx25qwzyJuM/JZ5WMLi1oiMQvw1jyDoUisv/USONLY5OrImJDiXUJ
         bPkfN7q2+3mpgid4kenCBkLAJuF4XNR2ZBt76v3LTCVEXevPr09DgZh7W4PR5QyUQdNC
         j70y9l7aj+VtyVXUBukKL2VIDnrmZjXqVXSAQdolJyuwIq6AR2Fjef9jeoVfNz4KdDJX
         Cq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ckzfOBOXln5+K6e0MajEk9XqA4yt2a92cLnaRv7ENjw=;
        b=eYBWKEZJtP5AZMOYIAfQB4wquGDCiYU03O4qi+LIawYzzHSaYLHCq5/hbSaTHZD/C9
         727ZuRhOfe3lso70P0pCPRU00U4l+9iyKcZvGuluj6Ozz5UOpGzh4wUS7MsoULjgFTh/
         6kSWfso/pp9OlQy+qsoXhxoDrkCLZo7yN0nXgFsG+Tv1o94odz/w4JU1Seu55rdChw6Q
         AO0A8mybVrr0JyaS8nv6CLHNVA29VCp8jOwhUhP5V4TiTfYQax2BShdsULeZtKinsEuW
         3XDAMNyVtkUhbhGrIGEx/tJZ622vuQtavATlxcsACOn3dgHJTYPLdfu+p/oeJ4qPG6kT
         u6fQ==
X-Gm-Message-State: AJIora8Nk7GN4GN8EF6W4SYPMNHqJyVVAFUCLQWACdqBCeKOrT2nW94u
        a8nXuucqgUHiA3WQfs9JV88TQw==
X-Google-Smtp-Source: AGRyM1tDGiQ8CR79XXDP5s9wDre4u7QgJXi8oJJu8/OFVwtwmRhRjlKAxhwe8ClTZtWJFm0620m9Pg==
X-Received: by 2002:a17:902:6845:b0:168:b675:39e2 with SMTP id f5-20020a170902684500b00168b67539e2mr6564451pln.33.1655246925309;
        Tue, 14 Jun 2022 15:48:45 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id x16-20020a17090a165000b001e667f932cdsm106727pje.53.2022.06.14.15.48.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 15:48:45 -0700 (PDT)
Message-ID: <1ae6dce1-0c5c-64f0-c6a4-b0f11a82f315@linaro.org>
Date:   Tue, 14 Jun 2022 15:48:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 net-next] dt-bindings: net: xilinx: document xilinx
 emaclite driver binding
Content-Language: en-US
To:     "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>,
        Paolo Abeni <pabeni@redhat.com>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "edumazet@google.com" <edumazet@google.com>,
        "kuba@kernel.org" <kuba@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "Katakam, Harini" <harini.katakam@amd.com>
Cc:     "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "git (AMD-Xilinx)" <git@amd.com>
References: <1654793615-21290-1-git-send-email-radhey.shyam.pandey@amd.com>
 <5e5580c4d3f84b9e9ae43e1e4ae43ac0a2162a75.camel@redhat.com>
 <MN0PR12MB5953590F8098E46C02943AFEB7AA9@MN0PR12MB5953.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MN0PR12MB5953590F8098E46C02943AFEB7AA9@MN0PR12MB5953.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2022 14:09, Pandey, Radhey Shyam wrote:
> [AMD Official Use Only - General]
> 
>> -----Original Message-----
>> From: Paolo Abeni <pabeni@redhat.com>
>> Sent: Tuesday, June 14, 2022 2:40 PM
>> To: Pandey, Radhey Shyam <radhey.shyam.pandey@amd.com>;
>> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
>> robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; Katakam, Harini
>> <harini.katakam@amd.com>
>> Cc: netdev@vger.kernel.org; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org; git (AMD-Xilinx) <git@amd.com>
>> Subject: Re: [PATCH v2 net-next] dt-bindings: net: xilinx: document xilinx
>> emaclite driver binding
>>
>> On Thu, 2022-06-09 at 22:23 +0530, Radhey Shyam Pandey wrote:
>>> Add basic description for the xilinx emaclite driver DT bindings.
>>>
>>> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
>>
>> Even if marked for 'net-next', my understanding is that should go via the
>> device tree repo. I'm dropping from the netdev patchwork, please correct me if
>> I'm wrong, thanks!
> 
> I have seen a mixed set of the convention for dts patches. They are following
> both routes i.e device tree or subsystem repos provided acked from device
> tree maintainer.  If there is preference for device tree repo then I can drop
> net-next from subject prefix and resend it for the dt repo.

If you got Ack from Devicetree bindings maintainer (Rob Herring or me),
then feel free to take it via net-next. I think, it is actually
preferred, unless this is some fix which needs to go via DT (Rob's) tree.

If you don't have these acks, then better don't take it :) unless it's
really waiting too long on the lists. I hope it's not that case.


Best regards,
Krzysztof
