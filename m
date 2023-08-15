Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E839177D475
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 22:43:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238142AbjHOUmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 16:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239344AbjHOUmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 16:42:13 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E58812113
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:41:55 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5234b80e9b6so7909441a12.2
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692132037; x=1692736837;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bNzhnTa2Xplp/Tkji9CmBI7UUP7vxyc/BEYibHP6fMQ=;
        b=srmms7IdhzOX1cLlrqv6Q9s2uerSydrAV9Qr/nLk6QT0ZQqq25pWZdTI16JG0pkLWC
         yGPXh4avz+515+cg7+fDgRQoq24dJcuNmQ+WB5P8tN/Jlh9QJ/TbhdcU0tDrR/opgl4i
         JEgJt4EQQU7UdpEMutnOybY2xfJsGNva9N4X1yO2wzq2UHRWhx6/gHLP7GkcRTimbKra
         APsVJlgee0SHZ0w/zyq/QPN2jk608iwmvjFOoYAMpHjjCIrJXP9BoXtK5muMkS5Qfp2z
         23YzIrmYnJtLNM3mhc63bFSPU+7JDSMpDLjhfOLVPVuSZl+2kxIVGPg3VEI20lu77tTG
         lW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692132037; x=1692736837;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bNzhnTa2Xplp/Tkji9CmBI7UUP7vxyc/BEYibHP6fMQ=;
        b=ky+dhBSD+4u0lGaWPJX27jaPLA18dN99AvY5dn8bJw51SdLgL4GT2/uMG72KhmJwI9
         nONZh/Us2BjM+ZtEney9AzofyNDK85CRZkqoUTu++nyHdDtqjHY+7hOwpPlRyvqGIM4u
         /FaTg0BoyMJKBjam3i9ftwxWyv1tmRDN3vjIfS3oEADZrOTAwIF/QGJrkZ7ovU6mQDZI
         vRPMnqyYirstdBKZOI1RmoFDLyHZY8tqAOEDzq0zbpxiywL6NvmfFkBnic409rQXYvFT
         QAhsUiRjhGYSQL9zyTpb5TFcu+Bb39LPwBrsPMVtjPnV4+FonLmfY5DwD4guI4PjKYWT
         PD5Q==
X-Gm-Message-State: AOJu0Yx97A7Xt9TUXuqG2JQVQmxWYorPNTWfMc19xm2ans0ZdZVfOI9x
        XB29Pm74TK+jZuwURm/v5/ghPQ==
X-Google-Smtp-Source: AGHT+IF0wXBsnPoEuKcnguUYJu/0ii7qC8GDdNixBFOmOnFlT/R385o4ZmzsQLucS1IJNlav7GC30Q==
X-Received: by 2002:aa7:d8c4:0:b0:523:35ce:bf50 with SMTP id k4-20020aa7d8c4000000b0052335cebf50mr11399349eds.23.1692132037464;
        Tue, 15 Aug 2023 13:40:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id w4-20020a056402128400b005232c051605sm7184074edv.19.2023.08.15.13.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 13:40:37 -0700 (PDT)
Message-ID: <97e58b59-7b02-bfb7-9904-abfcff6f1005@linaro.org>
Date:   Tue, 15 Aug 2023 22:40:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 2/7] dt-bindings: leds: leds-qcom-lpg: Add support for
 LPG PPG
Content-Language: en-US
To:     Anjelique Melendez <quic_amelende@quicinc.com>, pavel@ucw.cz,
        lee@kernel.org, thierry.reding@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org
Cc:     luca.weiss@fairphone.com, konrad.dybcio@linaro.org,
        u.kleine-koenig@pengutronix.de, quic_subbaram@quicinc.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org
References: <20230814235918.10396-1-quic_amelende@quicinc.com>
 <20230814235918.10396-3-quic_amelende@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230814235918.10396-3-quic_amelende@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 01:59, Anjelique Melendez wrote:
> Update leds-qcom-lpg binding to support LPG PPG.
> 
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

