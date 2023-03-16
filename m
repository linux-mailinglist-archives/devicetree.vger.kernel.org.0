Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 101DF6BCE81
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 12:39:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230300AbjCPLjI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 07:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230369AbjCPLiu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 07:38:50 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B7A4CB040
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:38:16 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id x13so6416398edd.1
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 04:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678966692;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iF1CiNyOybPOuUXqtgq7f9q8K0F3sIf5gMH9opfxmR8=;
        b=V2P6aovK+8TXvZIduuAqddTEmX2Sxl5vR8KROOYk6xhBopgk0QleDPksedxSv78NEr
         HjEsiyknH620QR/MxrPSHZg9YMNp6wLvoQdNjuicOuO1dpOeOPXp+cd3G27zN2DgsQzE
         DHFORMr1oso3tLEQdA/re68WfWkvJGtxYWH+jAlipcjXHsneqHiek8AKFbF33iRHCo9V
         Y2y0ay1JmvGlhcS2HfQF/AM0dJkubg0Gm5XjWKz5taDPoeDUkrhQz6ETZWmJFM78Tsek
         mEGNtVgIgzpzQhSN3//SUzIYqnHhZgpKazWFnLzf9DOQ4NeSkFcFHOAxpgsaI/o+iGHN
         QXpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678966692;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iF1CiNyOybPOuUXqtgq7f9q8K0F3sIf5gMH9opfxmR8=;
        b=1aoyOzztqhQQaMK6v9jMLW7EH7/pu+fvDAp+Xe3KkGRikvT827JKmVUguZutAEZWYV
         FnwS9i7xDdxdeGIW+ROPsN6gnad7hxLlePt44EDDUSl7YbxjKFcc8Rr7hUB2CaZMb03m
         I7cSSObp8IPnMaGWa1A84xbm+ygvRUxS7sDBFCAK3dQbbntZ09TYVh3Tz/+rwkPJKqTc
         tYXFXZ0Cm8eIfqKBijanUjmupzU+vcfhnpvki7g2XD6qwIteIe3f/WvLUrJcOD9rvIRL
         CSHzbb0QgjC4YebhVUgqWaIKTCSMDOc2msrchHG9VwAicxdRzxiR3xXrznLHFaNq+6+5
         wExQ==
X-Gm-Message-State: AO0yUKV8WJd0SSOV+QWxpFDC3WO/KwpsRHuNzJ1ZvgeqJz9kFqIrkCuw
        IlWFVBHYBlrwN1xZzUOykfi4bQ==
X-Google-Smtp-Source: AK7set8GCkVyWL6vQWZBS0iDv1aFkBauRwDy1A1TISfoWpkP6XnpnhFdbOZAuFfntgdpM8rRLP5kLQ==
X-Received: by 2002:aa7:d546:0:b0:4ae:e5ab:46d7 with SMTP id u6-20020aa7d546000000b004aee5ab46d7mr5821871edr.8.1678966691814;
        Thu, 16 Mar 2023 04:38:11 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id yz6-20020a170906dc4600b00882f9130eafsm3740019ejb.26.2023.03.16.04.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 04:38:11 -0700 (PDT)
Message-ID: <3079f802-8814-ed8f-faab-89af69867e99@linaro.org>
Date:   Thu, 16 Mar 2023 12:38:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,sc8280xp-tlmm: allow
 'bias-bus-hold'
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230316105800.18751-1-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316105800.18751-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2023 11:58, Johan Hovold wrote:
> The controller supports 'bias-bus-hold' so add it to the binding.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

