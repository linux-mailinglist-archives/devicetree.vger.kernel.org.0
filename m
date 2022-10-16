Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55F80600023
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 16:58:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbiJPO6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 10:58:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbiJPO6U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 10:58:20 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C84C83EA4D
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 07:58:18 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id o22so5329446qkl.8
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 07:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5X2LgtOwPri/UYN8IAbLuEcyYQbXzlZwIRbvemCz2RI=;
        b=nze9AxaWNWdm/L+lavHQwKW28WH6TFv8P70jVeO0P4YEwaHTv2rHo2vZobeBDY7ZZ5
         Nay9GGHPamN8VPRJHOguNjE6+6AxbpDfBQdo5bldWKac2iQZX3W7pV+7c+96TYekLZrp
         RoJRWwHX9/aj3PjnUIUez91I2B/LkTBJ976/jIDUHTDKaUkR22nzpoYMqPrAQGBvh7R6
         uZYt06EyY7vKYRWS84+8zT26fkFCcW3AjvBnfmtYSjoiRaGL1Bl4VlUN5rWaiqRGI6UQ
         wlH5ky0PGJDD8DjL8r+DCXvbK2wPTPNj1JGe4bhB07Z3UvIR8lE3w2+L4WL85XEbL6P2
         dEAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5X2LgtOwPri/UYN8IAbLuEcyYQbXzlZwIRbvemCz2RI=;
        b=QFfBM6DmGRpcI0qHXzVJuGOO1ggr9WjodFI7UipDakzuRkyyShPinwEvlTJTLTYaSQ
         tEz+qAGYdZYl5ZlviOgtOn4TnewJVlwZ5WiX8rpSF9defNtB6fsi9avfoqWWnoD8a379
         XMb8S9s11hUXjlRlgF4rmR5aJwBpLtl8yIl/Fq3K4PVtpdg2X9p5tjkQEshUxlFFXkrJ
         h9uJgxzhv6+vSl64TLKOhu5dTAlpPtCjZ+hmzdUw9xUcNljjz5rYxMxOMyyKbogmnE6l
         36n7Cs2g8nfOfCoKXLsfnck2G98Xltri/xhb3tTuAYfU+r65UtmH88DpzRfvF2ADTcYT
         Q2Tw==
X-Gm-Message-State: ACrzQf1NvdEFOQailtG/2njZ9LwTI3SAv+9PpjtLw1PUI3YsfmG8IqWk
        0WMlA+tjIy1LzGcWaAukqpwyLg==
X-Google-Smtp-Source: AMsMyM6HxF7TzL4yr3cxH6AmFqwF1/eLHTjmwlsiuNtGriRKXTLNZemvNZN5OrPaOAbBPb3ex9t5aw==
X-Received: by 2002:a05:620a:44c6:b0:6ee:7a7a:93d1 with SMTP id y6-20020a05620a44c600b006ee7a7a93d1mr4749518qkp.256.1665932297973;
        Sun, 16 Oct 2022 07:58:17 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9b13:d679:7b5b:6921? ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id u6-20020a05620a430600b006e16dcf99c8sm7226095qko.71.2022.10.16.07.58.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 07:58:17 -0700 (PDT)
Message-ID: <f047da0f-1c1d-27a5-d222-d781f20595d0@linaro.org>
Date:   Sun, 16 Oct 2022 10:58:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sdm845-shift-axolotl: fix Bluetooth
 firmware loading
Content-Language: en-US
To:     Caleb Connolly <caleb@connolly.tech>
Cc:     Dylan Van Assche <me@dylanvanassche.be>,
        Alexander Martinz <amartinz@shiftphones.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
References: <20221016143300.1738550-8-caleb@connolly.tech>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221016143300.1738550-8-caleb@connolly.tech>
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

On 16/10/2022 10:34, Caleb Connolly wrote:
> From: Dylan Van Assche <me@dylanvanassche.be>
> 
> Add serial1 alias, firmware name and use 4 pin UART pinmux.
> 
> Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
> Tested-by: Alexander Martinz <amartinz@shiftphones.com>
> Signed-off-by: Caleb Connolly <caleb@connolly.tech>

All your patches - except 1 - are not properly threaded.

Best regards,
Krzysztof

