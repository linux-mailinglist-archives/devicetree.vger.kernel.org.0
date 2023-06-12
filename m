Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5D9772BAF5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 10:41:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbjFLIll (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 04:41:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233473AbjFLIl1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 04:41:27 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81173136
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:41:22 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9788554a8c9so720580266b.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686559281; x=1689151281;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v8Ur8MOZrJwM92sn9ZhHLfVI+ss4yM+tySM113dAEP4=;
        b=Nvm5LKK7UZFbFYZYsqAPkKLX3/tzJlGh5zVuhbX+Tl/Gnwwi3RBKeyUD0aXjmE6c/H
         O+j5/wpVyrOW6eAEeuA6r4ZuebDW/WXxdP2wkp7/aaoW82sSVqaQmhTr49v7erX3NCug
         FSwBHxPaTfOPgX2EYm/cb/ccZ+XOL1Gpr+WpuB5NcJ1ipkGAzGeO1mEyeqbXiuVbNExQ
         Qp2vP06/eK1JvK2uxeMW5RK736CMjop7MjpWpPtBQ1jBcOunAQPD98ZdFJM8t3yOdjoV
         ackR3VIpJbJGo3N29mb1KlVVi/xP4q2YM0ERq06WP6V7zjOyJFEuFtuLv70iWQQJ23cS
         J+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686559281; x=1689151281;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v8Ur8MOZrJwM92sn9ZhHLfVI+ss4yM+tySM113dAEP4=;
        b=BbgM1H46d3jVg8Z+F2Y1/Py+PM942gq/NF2JQDpu99DHrqAEJMFj0Rrg+sndOo7/M3
         RoltRHgklv+lZ8a3Dmvm14y6+kJUAISQmbsqy6IUjlcYHE3eFSCTDYcd0QgLcMoHiWF4
         hwp8H67Z4zB348AzkIaTxGkHUTafYSCSXaC8MwWJ1r3DAMq4oQGdNx+AUxfa4hqvWAMG
         xa7F1E6+Q3HeSIfn9k9xyL55MEkBbpfcbJxQnS1+tZBvds5rb/fDSQRooz4hf0uRdbX2
         bAR64Q7kcSO5xO6kR/h+xzptqfqhduw4dxshvxItgaTH7qBhtHY2oDEkrykGGOwS5rkE
         igEw==
X-Gm-Message-State: AC+VfDyhNhglWtBKVdrMFHuNYHSPtYS3iybjG/KqEn+buCP/w6zU2B9B
        jRxkUeP7xQnie8LFSxQDgs+5SQ==
X-Google-Smtp-Source: ACHHUZ7/fbCBoNbxjZmknhTdyBcTb/QbArlgGKZicVWWnrzwvkpF3j1phhXfZ9+I0qPNE0NO9mhrbQ==
X-Received: by 2002:a17:907:7249:b0:97d:f8da:1717 with SMTP id ds9-20020a170907724900b0097df8da1717mr6359577ejc.7.1686559280877;
        Mon, 12 Jun 2023 01:41:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id o20-20020a170906601400b00977d3fb2a7dsm4849570ejj.76.2023.06.12.01.41.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:41:20 -0700 (PDT)
Message-ID: <7d0b96d0-536f-e438-76b6-e132e4f8ffed@linaro.org>
Date:   Mon, 12 Jun 2023 10:41:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/2] dt-bindings: net: wireless: ath11k: add
 ieee80211-freq-limit property
Content-Language: en-US
To:     Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
        ath11k@lists.infradead.org
Cc:     kvalo@kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
References: <288fc9a0db6c292bc132e828611c41785b075078.1686486461.git.chunkeey@gmail.com>
 <fc606d2550d047a53b4289235dd3c0fe23d5daac.1686486468.git.chunkeey@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fc606d2550d047a53b4289235dd3c0fe23d5daac.1686486468.git.chunkeey@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/06/2023 14:37, Christian Lamparter wrote:
> This is an existing optional property that ieee80211.yaml/cfg80211
> provides. It's useful to further restrict supported frequencies
> for a specified device through device-tree.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
> v1->v2: make dtbs_check dt_binding_check (moved to existing allOf: seems to be fine)
> ---
>  .../devicetree/bindings/net/wireless/qcom,ath11k.yaml          | 3 +++
>  1 file changed, 3 insertions(+)

I got three similar patches in one thread, two with same versions.

One version is one patchset. Do not attach (thread) your patchsets to
some other threads (unrelated or older versions). This buries them deep
in the mailbox and might interfere with applying entire sets.

Best regards,
Krzysztof

