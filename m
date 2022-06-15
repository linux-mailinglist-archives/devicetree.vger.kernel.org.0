Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B04554D02A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 19:39:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357715AbiFORjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 13:39:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357718AbiFORjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 13:39:49 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A1652B3E
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 10:39:47 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id y13-20020a17090a154d00b001eaaa3b9b8dso2706816pja.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 10:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Gp6oXWQusS3CG2p6+BCFsieF3bfnkBLXnws5vcR6wgo=;
        b=JH8VE0kJUxUEf4Ojvr+TEO2Axh4wMVAWmWz9j2W+XRVM7aCbEHI9eRWgd1WPXp/aL7
         JDV7bWkra+CjVLuxLYzOx0V6Sp7T6dTVq+Fje50Dcs05NhrfaClOEYm5ZCJmaqYra1jK
         cuxvrfDTorfTuKk1161+I+zttIRLYwyf8f8thF2SwFjL8wTxyRu7DFst2X3ksXnPO7XN
         gMxqXfFKwugR1LWVOFUhZqm9wuue2sAp6dHksAWJL8Ex15Eg8R9lNb38zmCnyel5LfpO
         5cVc4oy/5bJvCIhEV4iJ9OdjKXrOQm6FWS3qU575G5pRpFLfX6ua+2tht5qcxvwxkiKR
         Xc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Gp6oXWQusS3CG2p6+BCFsieF3bfnkBLXnws5vcR6wgo=;
        b=0k1/bN6bHG0fkmWhXiVKfv9V90T6mvc4R7gqpWO+ppniIaW3GFRnpX7XbIJm6KQWhv
         yqDkxO79JucjHSlsx8+5e+zxBSise873m0+k613l6rL0PZ+XjhoZkR1ywOB1s6t8/Yt4
         9/4K93GZ9Q8fFjPPP8F1vpe8ICRVL4WDMst4jtspxb3qfQVb3UuJ1+/rXTW1QfRdE3F8
         YzZqaku4jiJyosl8agn5bAuNFULEQqEeSxke9Qwi7hyvxmFFziEkkK1pNcgAvpyBeSDL
         2+wwrIkjFoUq8KTnXZ5do8yYuBMyePl9n3oVBhhn/qxhDaIQQeQuVdx8NcQg+nd6HKeP
         Js/w==
X-Gm-Message-State: AJIora9vo33eClJDZLCFUx1hSoWoEZAsQcUFazlftkOPr2tmp3qpx2Kt
        orxEQir5VA2aSmu2FGoVLnVEzw==
X-Google-Smtp-Source: AGRyM1uoxZEp2DH8UYmIHUJ2rd+KKP9Xjqvmqu69i2EafsZfpvkhlksazMT0ufu3AEM4jFNHo3E0pQ==
X-Received: by 2002:a17:903:210a:b0:167:78c0:dd70 with SMTP id o10-20020a170903210a00b0016778c0dd70mr626744ple.157.1655314787211;
        Wed, 15 Jun 2022 10:39:47 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id q2-20020a170902f78200b00164ade949adsm9694052pln.79.2022.06.15.10.39.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 10:39:46 -0700 (PDT)
Message-ID: <7b37546b-7d8c-7a83-8975-898a989cff6b@linaro.org>
Date:   Wed, 15 Jun 2022 10:39:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/3] dt-bindings: arm64: Add BCM6813 SoC
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     anand.gore@broadcom.com, dan.beygelman@broadcom.com,
        joel.peshkin@broadcom.com, samyon.furman@broadcom.com,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        kursad.oney@broadcom.com, philippe.reynes@softathome.com,
        tomer.yacoby@broadcom.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220610001534.14275-1-william.zhang@broadcom.com>
 <20220610001534.14275-2-william.zhang@broadcom.com>
 <ed476cf9-d7a7-d312-4574-ee41a86fab7b@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ed476cf9-d7a7-d312-4574-ee41a86fab7b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/06/2022 10:37, Florian Fainelli wrote:
> On 6/9/22 17:15, William Zhang wrote:
>> Add BCM6813 SoC device tree description to bcmbca binding document.
>>
>> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> 
> Rob, Krzysztof, can I get an Ack from you so I can go ahead and apply 
> this series? Thanks!

Sure, -ETOOMANYBCMNUMBERS :)

Best regards,
Krzysztof
