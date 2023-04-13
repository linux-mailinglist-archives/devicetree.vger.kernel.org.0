Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D4356E0AA8
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 11:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbjDMJyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 05:54:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229735AbjDMJyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 05:54:23 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6535C5FD4
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 02:54:21 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id j17so26310172ejs.5
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 02:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681379660; x=1683971660;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7wf5ayKmr1Fou+brpbPgM2rBYhotkmP/5Wa8vP+iiMI=;
        b=IR8bqG00wUwG3H3gh7CC+vy1HwrpJwjNjBNDc2wn2PRK8RL/qFvXWW8htz8n5QN/UE
         KWTlHMIp+0mdkEHLcuWfjcwEmQcPF0yB7UMYF3UrYVNz+WWOng44nnUcK+9lCX4aa5nw
         5Vxv5ZG/gjTGq8itcRmoIQ8e3u/Q/63UfOwMo2rfOnmcRny6pSkj7TgUSBzNfISxvYzM
         EIs+qC/irBhFVdPCsfpVqrc1dNHIomUDngllGN1q77a+J1jlr+TIREfnPZtZ8bUJbYKf
         jOa8m3KVbYDTa0NBvJTczcRRxOL8VzUgI48kc8eGG1tEf/EgfoEP2Xwn6OoI53/9ai0N
         LVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681379660; x=1683971660;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7wf5ayKmr1Fou+brpbPgM2rBYhotkmP/5Wa8vP+iiMI=;
        b=P6/4XjOceeaYZ8tBCw3+EyBtMU8kopUhZiG/SEfRQhdsakqJuuryatMeYnBJY/NYbQ
         lZ8TwJiEDdyYZzJpYBJMHzFogPvc1hcKSdhL8pIs8xISQOtGWbWRXoxnGIy0vWmp4rxx
         CK8xxmxeQwXI4k7sj9Mld5IK3asUz5PqL82HlHcBZs7mX/RcIFjc7CegWqkKut46WXf0
         q5axKF1bekMTfOK2lHztsrv2lo5rAHSEM5x8P+v33KsHkgJKOW5kfV0jWoshaJFLt6nO
         T4cKhp0/rSzPaIiSVFjE1uH3cFba9pdJBZOQEml1kkNnIWpUDZZzM3AFxJzpbo6bBOrf
         uOpA==
X-Gm-Message-State: AAQBX9dxD/VB+F9VOWIHtGX025bC/3wY2BlHIdTiqC5l7OBtJ/tTdo74
        BqNDu2BKyLxr8A2DHkDQtjJuXA==
X-Google-Smtp-Source: AKy350ZTuVOmDycQipaom8xv0Y/sJrimRhWc5WFgc0W4/7l3aTbqDQ0Dh153g27t4zYbUskXiETWUA==
X-Received: by 2002:a17:906:1488:b0:94a:4eb9:b35 with SMTP id x8-20020a170906148800b0094a4eb90b35mr2104533ejc.18.1681379659887;
        Thu, 13 Apr 2023 02:54:19 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ec6f:1b33:ab3f:bfd7? ([2a02:810d:15c0:828:ec6f:1b33:ab3f:bfd7])
        by smtp.gmail.com with ESMTPSA id f10-20020a50ee8a000000b004c10b4f9ebesm605603edr.15.2023.04.13.02.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 02:54:19 -0700 (PDT)
Message-ID: <6dbdf32e-fb45-fded-6165-c43a48d7b250@linaro.org>
Date:   Thu, 13 Apr 2023 11:54:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 2/2] dt-bindings: usb: snps,dwc3: Add
 'snps,parkmode-disable-hs-quirk' quirk
Content-Language: en-US
To:     =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= 
        <stanley_chang@realtek.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Felipe Balbi <balbi@kernel.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20230413085351.26808-1-stanley_chang@realtek.com>
 <2023041346-shamrock-sterilize-9165@gregkh>
 <6c2dae45c7ca490d889ddc7a0dab027f@realtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6c2dae45c7ca490d889ddc7a0dab027f@realtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2023 11:36, Stanley Chang[昌育德] wrote:
>> This is not properly threaded with patch 1/2 for some reason, so our tools can
>> not pick up the whole thread at once.  Please fix up your sending script, or
>> just use git send-email directly.
>>
>> thanks,
>>
>> greg k-h
>>
> 
> I send the patch by git send-email.
> 
> git send-email --cc="Stanley Chang <stanley_chang@realtek.com>" --to="Thinh Nguyen <Thinh.Nguyen@synopsys.com>" --cc-cmd='./scripts/get_maintainer.pl -norolestats v3-0001-usb-dwc3-core-add-support-for-disabling-High-spee.patch' --annotate v3-0001-usb-dwc3-core-add-support-for-disabling-High-spee.patch
> 
> git send-email --cc="Stanley Chang <stanley_chang@realtek.com>" --to="Thinh Nguyen <Thinh.Nguyen@synopsys.com>" --cc-cmd='./scripts/get_maintainer.pl -norolesats v3-0002-dt-bindings-usb-snps-dwc3-Add-snps-parkmode-disab.patch' --annotate v3-0002-dt-bindings-usb-snps-dwc3-Add-snps-parkmode-disab.patch
> 
> I don't know why it can't thread with 2 patches?

You can - git help send-email

Easiest way is to: git send-email .... v3*



Best regards,
Krzysztof

