Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FB856EC6F4
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 09:22:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229458AbjDXHWY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 03:22:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230516AbjDXHWW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 03:22:22 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D70C2D5D
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 00:21:50 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-506b8c6bbdbso5988770a12.1
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 00:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682320907; x=1684912907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ww2Rb2ZYTNoPsDX72jxf82dsZ3zHW1B7HQ9wKwSxxmQ=;
        b=HjDUL90x3Q25a2KB+D2nRqlChkDveT7RSsZN/F2dg0/rdnkoUWq7tKRoayXsnI2eX/
         l6ck3ka/VNV+nEVOgn69gy06ITf83qM7y0MQ0xSbzkZrCsb94chgNHKYhRKVnjUuj91w
         DR5vjB2FBsibOlPMkeoSsOCJ/5sTsppXWdRwnZHokufihQZdnyKoWVco8B75k3/V2pog
         ng54svibGcWyJPtF3DbESCuibaDhNBUf1szeSbhfvxG+rs7K0rudWpYoxJkeJK5Za36u
         wl47h8v7jGs/qxVWeeg+QHIRU6zHguhAa7yDa3F3cuaoHrkeqA7vQ+ovFR73zsR8xM0N
         sl5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682320907; x=1684912907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ww2Rb2ZYTNoPsDX72jxf82dsZ3zHW1B7HQ9wKwSxxmQ=;
        b=CTnlMcAmqYLKkWSQudkvWxbWXdiGR2VU32+3Nn679wdd4YDWB49kHDgBmTYO/woHpB
         edNnzW3/3piflW60WOQI8QU9pNzhKOkLNtrM+Hn14EzuFvKCcCw+mt6TrwgalsoZHoaZ
         8KA0HDqfJk5kKa+9JgOkeyylbOhmB+9tewtBNpaaCck9o+87GCJrYdWlmxHfVYOmEso6
         a96lvuwyTOtifMNBtZdzjf2fbDnQnYxkNZnbrDOKggQo3lhBN+h9x5sUiBkHQwBjTVk3
         dGb9HZk4nktTPM/7+sdMWfsPuM+1X5MzblQGlT9d2asgn1Lc14xPPrDKhWtoazlfVY2V
         stWw==
X-Gm-Message-State: AAQBX9epKJ/Si4RhySPGfyAx/4JRdW5hOYFDla43FLxInmmDyurrdceA
        HKQPg4fi6FUoe6XS0l+TGn5OwQ==
X-Google-Smtp-Source: AKy350aUJyBwBhZmp9D9e3H/8ISMoktPB0uAxONtS4tlF5F4Zu71qTXhfJNl3i+dxjGKZh3z2HDZ4g==
X-Received: by 2002:a05:6402:12c5:b0:504:80d8:a034 with SMTP id k5-20020a05640212c500b0050480d8a034mr9436284edx.40.1682320907691;
        Mon, 24 Apr 2023 00:21:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:fcdb:bf53:d053:3a52? ([2a02:810d:15c0:828:fcdb:bf53:d053:3a52])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7c74d000000b00501d39f1d2dsm4398166eds.41.2023.04.24.00.21.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 00:21:47 -0700 (PDT)
Message-ID: <abd106b1-6650-6a7c-1c8b-3609e47b0161@linaro.org>
Date:   Mon, 24 Apr 2023 09:21:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: sa8155p-adp: Make -cells decimal
Content-Language: en-US
To:     Andrew Halaney <ahalaney@redhat.com>, linux-kernel@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230421205512.339850-1-ahalaney@redhat.com>
 <20230421205512.339850-2-ahalaney@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230421205512.339850-2-ahalaney@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2023 22:55, Andrew Halaney wrote:
> The property logically makes sense in decimal, and is the standard used
> elsewhere.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
> ---
> 
> Changes since v2:
>     * Collect tags
> Changes since v1:
>     * New patch (Konrad)

Doing such changes per one board will be a lot of churn...

Best regards,
Krzysztof

