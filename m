Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 632C566CF34
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 19:55:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbjAPSzl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 13:55:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233306AbjAPSzT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 13:55:19 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2408A22002
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 10:55:18 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id ss4so62878799ejb.11
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 10:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GQ5+dR99h72tUtxnkoNE7PckMkkfFnKUMjg4pU/+JPg=;
        b=OzjszqOAQCnL6z1DoHtD6eLfAvr4Mh0hjfKeL2YfdWRyy1Szr9TMUzwUnOSvsNd4gL
         Q8K91ubdll6Pfioy4vm5NDyVLDaM3r8Agb0RpJr1fXacMfyHgQ2lYf9gTzypS8g3H854
         kgDORIM9ZOkO/hZ9TcbUrYiLdk3nV4tjabWrzTWOliBRIlpES87cyetM2FzgItDQD2D4
         e7lMeLB88lpXHUvsWGdYeXl0xpw9QqzLBQHUQ9xMOWDlHIEASNqgy1xvu+bo1ICRtgi0
         GeMx6yYxOIlgppqssK9Ijovyvr9FfQQLFva+wMumKl6WAGKY2HLtKFWa/xKemVx8IcwQ
         NorQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GQ5+dR99h72tUtxnkoNE7PckMkkfFnKUMjg4pU/+JPg=;
        b=0tmV+bAcFMvssxaZqm4TZuiLhWPsqcDPNSNvAP6ZGqWuDVaUVHc0Lx956SrGe63FAl
         5cPHIqCJnSycrck0gpWhXsJAFbtB8mWIDsjKsYbK7pzolR3RfylKlkZrf1pdH/Iu8XKd
         0weSfoqZ6ncieG4n+InulOvx70ku/qgLDm1029ARqSS75CUcoEf9+3jl2Fy8Zojig6bY
         k8jgfV91wPvM61EX+SJ0pbRW4SG8kEUUq9w5QM2uuclvuK8oCvjca7fJBEkAUEZvkztu
         4iMzGleM6eAf5tggatqV4osC/iuU3ivsqpzIRSWj8OfuaI6RONOn3fLDLeBajflGtjMt
         hjyw==
X-Gm-Message-State: AFqh2kpiiD4OLWNu8YjceuXyNnuWJ0MdPJv9oua+Pvu2AZq/a6Co4Qtm
        tSS2hg7M+IHxAmN/52epUUfjtA==
X-Google-Smtp-Source: AMrXdXv1bRlqKcsUE5JtpHY0mnWjO/QVdoe4r1Cd8XVsQvQYX6OLMWo4Dk68Vamqrqu6SqQmRKOxrA==
X-Received: by 2002:a17:906:f189:b0:7c1:5ee1:4c56 with SMTP id gs9-20020a170906f18900b007c15ee14c56mr30117ejb.55.1673895316732;
        Mon, 16 Jan 2023 10:55:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s24-20020a170906c31800b0086dee4e5555sm2871199ejz.87.2023.01.16.10.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 10:55:16 -0800 (PST)
Message-ID: <31d78b4c-1416-d8cb-a187-bf924168ee1e@linaro.org>
Date:   Mon, 16 Jan 2023 19:55:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/4] dt-bindings: hv: Add dt-bindings for VMBus
Content-Language: en-US
To:     Saurabh Sengar <ssengar@linux.microsoft.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, kys@microsoft.com,
        haiyangz@microsoft.com, wei.liu@kernel.org, decui@microsoft.com,
        daniel.lezcano@linaro.org, tglx@linutronix.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hyperv@vger.kernel.org, mikelley@microsoft.com,
        ssengar@microsoft.com
References: <1673887688-19151-1-git-send-email-ssengar@linux.microsoft.com>
 <1673887688-19151-5-git-send-email-ssengar@linux.microsoft.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1673887688-19151-5-git-send-email-ssengar@linux.microsoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/01/2023 17:48, Saurabh Sengar wrote:
> Add dt-bindings for Hyper-V VMBus
> 
> Signed-off-by: Saurabh Sengar <ssengar@linux.microsoft.com>
> ---
>  .../devicetree/bindings/hv/msft,vmbus.yaml         | 34 ++++++++++++++++++++++

Also, there is no "hv" hardware, so that's not correct location. If your
bindings describe firmware, this should go to firmware. Otherwise, this
does not look like suitable for DT. We do not describe software stuff in DT.

Best regards,
Krzysztof

