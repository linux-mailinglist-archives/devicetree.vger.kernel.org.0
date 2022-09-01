Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F375A900D
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 09:24:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233733AbiIAHYf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 03:24:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233731AbiIAHYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 03:24:11 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B56F412691F
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 00:22:46 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id br21so17364766lfb.0
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 00:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=lCEhZjR4jN5th1U1CIGhY1YSQ76ceCRb+ve+Fv7jZWE=;
        b=Fe4dEmBcUS0VxCdS8Bn22uIwj0dVRCcFNeTUiikniQYagr86/SKlE7SYcwwBBApyyj
         vlnEPPz4bubkieG9TeucO+ydpKaK/LIc7/3TwVP9CXvbTZ7mxhDyo1kwI4+XLaJTt9t0
         Ja0TNcxqCKBL9OK4fzHuO/uB8Aogtu0S5Xem9L2/itwOjucU5nAo/AuCWXRsDDvFXvEa
         mGsRidWA9aEnqZ0VYVW/i739la5mSS/0qg5N6LRoDfpIQQqxy3XPewRT4l/tKpw5LN0t
         ZErroYXZEszfe+pjKztQ6l2/+eiTkYsYMTsjRksw+QmzY3XZ5j6B30vZ+Avd+vnr/L6y
         taLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=lCEhZjR4jN5th1U1CIGhY1YSQ76ceCRb+ve+Fv7jZWE=;
        b=MhmduDR+ZHRABODwl/C1ZY72+sfySAOQoL3papecsIa6HMQd4ylE9Rn5hcdes+CByn
         qFovmEKs7qNZ19OXQ9LtmjjitTY2fZHefDQBAC9gR2UpgxYsave6onsEn8teXaVGNU5V
         DWuagaPoWHlGZl86DnT3XzVl6IKYdLbRKqKxZqUBhmj6HP+HH7sRcsbhokDNCtKRM/O7
         4Rxss8VSXo7X2euXNvGj8bEWE83BLTCx/2zkRURv/4pt6FQX0BUlzddGgLhOkfhj2lbR
         ULARZC4LYRjm4Wx1/JjHkYN/SGUwCSgtBHQ0xcrYiTngpdoXQtUznkK1Z4bwYvOp7r17
         iqvA==
X-Gm-Message-State: ACgBeo0cp+CwXMqdQzg6nq2KU8bU1xVHjyKkqk1SIL/5/Lr6azwB4YVy
        T/MVsRWJWHlgO5qqzoIGwV/RisXVznactq2N
X-Google-Smtp-Source: AA6agR6jwHNTEHqMKfArBrwbumB8R2on7rPpBiS01+sNFFg5Ut1DTJI9wAV1+EUbz1HEueyoJFfetA==
X-Received: by 2002:a19:ee0d:0:b0:494:80e2:9d4 with SMTP id g13-20020a19ee0d000000b0049480e209d4mr3051451lfb.223.1662016963744;
        Thu, 01 Sep 2022 00:22:43 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id z14-20020a056512370e00b0048960b581e3sm1276337lfr.8.2022.09.01.00.22.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 00:22:43 -0700 (PDT)
Message-ID: <8df1e02c-a0d9-d0d1-0856-45ef3b685ff2@linaro.org>
Date:   Thu, 1 Sep 2022 10:22:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 1/2] dt-bindings: lan9662-otpc: document Lan9662 OTPC
Content-Language: en-US
To:     Horatiu Vultur <horatiu.vultur@microchip.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, UNGLinuxDriver@microchip.com
References: <20220901064405.149611-1-horatiu.vultur@microchip.com>
 <20220901064405.149611-2-horatiu.vultur@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901064405.149611-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2022 09:44, Horatiu Vultur wrote:
> Document Lan9662 OTP controller.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
