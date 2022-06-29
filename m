Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7097D55FFDC
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 14:27:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233243AbiF2M0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 08:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232499AbiF2M0h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 08:26:37 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98D4935A96
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 05:26:36 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id q6so32166370eji.13
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 05:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/VK9DE+fjlwvsGyviRj5FG4gJTmtxY9r+zyl+crkUSY=;
        b=fdkOLbDNyEE6sBEjG9IcyIog5z7nlO9H6IcwUn2zxDl0CJArtFrBxq9nX3hW2Roygl
         Q9q5rxX0IJFa0y/bn45c3+HRrS0r9uwdBjoXT7cju27MpxRv/nSKAi2PAF3OQwjbRh8W
         pIPSKFnfyPlng3UtgJuckS6d7OhV76HWFlJswm+fONVqwOBf0Fk73mD2bfalk2mWiL5+
         j2Jh71I/V2G77ynl6S32mX+aNSocMysI/G15zcmzEq0hkjHLw8hxL89yTdzOuhvnF2Wt
         Dlk9Rd9kaOtrM4+XgsIkJDjCaKTgKek6xGE5jcF1WerE2UjRkoqhYM0nDxMqdMXf7ax4
         1xGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/VK9DE+fjlwvsGyviRj5FG4gJTmtxY9r+zyl+crkUSY=;
        b=q+J9Puhb2/A99PrNN8ykYzokFqcfygMse7WrgHlA+FzQWgCN++SYoqjKhSgusCDCV7
         YS4R1h+bMco1SA46B0xzpJxPYCp7K4BhA9NEvt27R5GRYshD068QoikfiGUbSoDvCpCY
         tXKTn4q6Y5M9Bz8bTUOxqJJvWRGWPNpGftMvcr5V9frnI8BAEJY/t9LA0is/btVH8mB5
         Q7Zf7osyppdCByi57taCofIjtdrty0QiG3LBkWXIdeZXc/y6q/qbkeezOId4v1bMZXnb
         /DepFqhDWoX/VUr7c/SLYVZ1lgoFSYelffWIUussBZHgj9CGChMz9sIPf409StLNmF+3
         eUsw==
X-Gm-Message-State: AJIora+IQ4mWgJY5xbybF+yDFuPlIqasrFslcSGfm6QZYZaVowpqgqk1
        0iZS71gn3ZjNn9nvpYWaZ8qgxA==
X-Google-Smtp-Source: AGRyM1segqOzgXb6PMP455BLIUdg79bBzmtmRagdnqlVA0EpCB3ku6EzDcPZ0q2RMKoDivXkRf+f/A==
X-Received: by 2002:a17:907:7b87:b0:726:c868:cf38 with SMTP id ne7-20020a1709077b8700b00726c868cf38mr3127475ejc.580.1656505578137;
        Wed, 29 Jun 2022 05:26:18 -0700 (PDT)
Received: from [192.168.0.184] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u9-20020aa7d989000000b004355cb1e77esm11097013eds.91.2022.06.29.05.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 05:26:17 -0700 (PDT)
Message-ID: <2cd3630b-3481-8647-a80b-b6c17a7979db@linaro.org>
Date:   Wed, 29 Jun 2022 14:26:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] ASoC: dt-bindings: Fix description for msm8916
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, srinivas.kandagatla@linaro.org
Cc:     rohitkr@codeaurora.org, quic_srivasam@quicinc.com,
        quic_potturu@quicinc.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20220629114012.3282945-1-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629114012.3282945-1-bryan.odonoghue@linaro.org>
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

On 29/06/2022 13:40, Bryan O'Donoghue wrote:
> For the existing msm8916 bindings the minimum reg/reg-names is 1 not 2.
> Similarly the minimum interrupt/interrupt-names is 1 not 2.
> 
> Fixes: f3fc4fbfa2d2 ("ASoC: dt-bindings: Add SC7280 lpass cpu bindings")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../devicetree/bindings/sound/qcom,lpass-cpu.yaml         | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
