Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 296E577400A
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:58:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233837AbjHHQ6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:58:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233749AbjHHQ5u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 12:57:50 -0400
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DABB2680
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:43:08 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-51e429e1eabso7984698a12.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509038; x=1692113838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I9Dr4uBy8yn85pCqbCwYWz6mdcEZRikhyLp+nx7E5kY=;
        b=GQsGoT7q+HMYS7C+V9Jz7IM3zTBmUAqz+zdmGi5K/PdK4tUMIqh1bfxee4Q8NRk5Na
         Qj4hAeAQorbib3G8uOtKVariaiWOUt2cI7POA4Plt90fOdlcM1HvYB/o7L2sYOKYV8pY
         XTfUUF+BfbxI1huzEsNp9mgE6rEJ7sakvF4atPmhgK9ylN4by2Mr58O2kjxrRUNZhgOC
         s5fNKj9zaQ/5RlwXSV5nztLPoxfNGN7Hh6oubsNmRqeHxcjiuluPJmlx9v30golbudlI
         57IhA2e/JvY+58yI/NXvY1/WnYGreREMdADM8QlS324CQFYWdExaQ2BFn4cjQiD88F3l
         +6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509038; x=1692113838;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I9Dr4uBy8yn85pCqbCwYWz6mdcEZRikhyLp+nx7E5kY=;
        b=l0NZxrjGfH5c3fNVtRmSrTrxOu4Cor7//v6G/OcbE7ZEj7KfgTMtIGPBxnQjJcuo6p
         /DxVZ0/Oocd6cxStZyGtJnOJLTI1FaMHkFeWX7Qca+0x0eA6JBcCrFXyQsnXb0cZn8Tx
         eYA+7GrfZt6L9ul7biaqW2lXL6sfk+O3OU464PQiyOJKQEfsCrzIQsitWVHLaYnIKjTY
         vdsqGFLJS99knbRq2abC027j0pcCIfxhCMt0FvLISFEwBj3n2MsFOYTlTe920Yj1+A//
         9X8N9uMQaDunb6v8t7zJUefd9Gyko/Cd+7K88/7QyH18OYAIkHaQw5azkXpDm625NO6L
         gX5w==
X-Gm-Message-State: AOJu0YysTkB7N+ckYBr96F25QsNPa9U3fqUC1kL/FgVJRQZlMlp3iuhr
        XQ0asduxm8JATMSbSMZ3Sgi7Auiu14sXrGZJJ/Q=
X-Google-Smtp-Source: AGHT+IHr55DWuuJ6oQRbZHUALhVQ7SfyjKtBYdUEYQHajPEtsiHRJNUzNkHGVDxpBsOOZTISmy4vmg==
X-Received: by 2002:a5d:5651:0:b0:317:7448:6613 with SMTP id j17-20020a5d5651000000b0031774486613mr8140010wrw.55.1691508574150;
        Tue, 08 Aug 2023 08:29:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id j6-20020adfff86000000b003175f00e555sm13995888wrr.97.2023.08.08.08.29.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 08:29:33 -0700 (PDT)
Message-ID: <f199af27-0332-b01a-0f1c-63f6679eb68a@linaro.org>
Date:   Tue, 8 Aug 2023 17:29:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH RESEND v2 1/9] dt-bindings: phy: qcom,snps-eusb2-repeater:
 Add compatible for PM7550BA
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <1691415534-31820-1-git-send-email-quic_rohiagar@quicinc.com>
 <1691415534-31820-2-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1691415534-31820-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/08/2023 15:38, Rohit Agarwal wrote:
> Add a dt-bindings compatible string for the Qualcomm's PM7550BA PMIC.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

