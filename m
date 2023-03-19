Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8894D6C02BE
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 16:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbjCSPVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 11:21:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230461AbjCSPVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 11:21:34 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB6D722016
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 08:21:29 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id t5so991866edd.7
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 08:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679239288;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0MPg17g6pPRdL9tTnpZvVwCQGrGLvOmSGuwE0LCcRsA=;
        b=bYT6wRny1mJNAuJxI6lZyObz/9Bgqm2OoMM9QNmJkwj83FEexDyR/1CEzoZp7DS2HA
         2qkdDHaJPPCPx/iQ4RizZSeWa39zMY/Wp1UIZbdRWBQWi5IzT2Hmfr3PDUl/MWMIrICS
         TM1TkxzcsFCQcJnb+vDHTVmWTin4vusaZhW/OhNquYyr3iqVNg+NX/xh0Ft5M3PAZT5L
         pIIRH4+6HqNhRGjAju5gNN7YCGlhHxxoU9pmJNqX7hWST0iau1fHEXsfkPsNMmssppmS
         z/kP9f21A2/SE8sFpXecNRPvcHnFKiGraj9qvbTZTzOUTq8aQP7MPXMsr8GPTuHG+vuZ
         aQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679239288;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0MPg17g6pPRdL9tTnpZvVwCQGrGLvOmSGuwE0LCcRsA=;
        b=wm9e0pPxM/QoUGDRLqtlB26oaPo6sC9J4Kcn3CYW3k1pGTDOlpUiC1EAsdAhfH7nI6
         +7bpR4ft2HQuLddCT3N7QEGtqoFnlynrzZ3HLs+CiN4P1eWbOS0PCkWo7cSKdWorqYQb
         pxC1HQdmcph5aeO7yVxGhmkV/80YA2kao9M+KfMetke56m3ZEL0MEVBwQQX7jI2vsQh0
         jPTA8Gl/IG3r442nXvjdNjUp/vo2rzG57eY+dBNtPAhbULBefxnbu0VUfYZh813UK8Hp
         JMSfx82Q7842MOYetagSnzbfkyORfoFkusN0vyaZ1hXu1Ll72NUttz1wnO/ZQs5FOGxH
         k5ow==
X-Gm-Message-State: AO0yUKW/WaSwIK9WM3hwyKTk+FxJN4pKjdMaWebE0uKE/lZOd3k7F5zZ
        /oyh1iVoNpt9qQj7tLNp4y0WGw==
X-Google-Smtp-Source: AK7set8X7boMde6L0dSuF16GMGAlEn7pBLVYH3RFoFzDgoTwbQ23rzLfAMRpql7L8BotUyBJqso0Qw==
X-Received: by 2002:a17:906:37d3:b0:92f:d1ec:a7d7 with SMTP id o19-20020a17090637d300b0092fd1eca7d7mr5414362ejc.15.1679239288065;
        Sun, 19 Mar 2023 08:21:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id ja21-20020a170907989500b0093338259b2bsm1789284ejc.207.2023.03.19.08.21.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 08:21:27 -0700 (PDT)
Message-ID: <45a57e8a-c6f6-be7d-21c7-3c6fffd4ebba@linaro.org>
Date:   Sun, 19 Mar 2023 16:21:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v5 2/2] EDAC/versal: Add a Xilinx Versal memory controller
 driver
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-edac@vger.kernel.org
Cc:     git@amd.com, devicetree@vger.kernel.org, bp@alien8.de,
        mchehab@kernel.org, tony.luck@intel.com, james.morse@arm.com,
        rric@kernel.org, michal.simek@xilinx.com
References: <20230317141509.17534-1-shubhrajyoti.datta@amd.com>
 <20230317141509.17534-3-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317141509.17534-3-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 15:15, Shubhrajyoti Datta wrote:
> Add EDAC support for Xilinx DDR Controller, this driver
> reports correctable and uncorrectable errors , and also creates
> debugfs entries for error injection.
> 
> Co-developed-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 
> Changes in v5:
> Update subject
> 

Only subject? So the build warning was not fixed?

Best regards,
Krzysztof

