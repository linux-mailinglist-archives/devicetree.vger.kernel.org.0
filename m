Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DE9A71899F
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 20:50:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbjEaSuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 14:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbjEaSuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 14:50:13 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F274126
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:50:11 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-96fb45a5258so1068151066b.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685559010; x=1688151010;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w/KKv6Mq3B/mEUpCxYtqUnqn9tOY4ROdqox6xJ6+FrI=;
        b=JESm+PhJGVy+C4tAzlg2UuLCIBZOs/0owaLrpmJyJwVF85eJZi0u1lhWe3JfFacfWo
         pWIFIEsEPSK2agbaQzA0f1Dxk2JjrLa2PsRhLfMMc+a+ySBKBTV+lgNl2RC+MwS/Pp24
         jRfpREqNMWN4qcP/grRAObP4+xmSdZCC5Dlc9RLMsDG5dDiueqAyZ3+bZwcThlhmhW2w
         Lc4GrrJJJMEaNb3HtJ9rPTDNIffZk0PLsaTqVoJNnKvZkqZ7i1ifkinn3vgfJeyy8QqV
         H3mBk+UNePzsHgVOzI7ayUFGMJPjK7maOigyi3cG/Mugb2wsaaEYcRoOLwLUWlQx5W/J
         Sa3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685559010; x=1688151010;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w/KKv6Mq3B/mEUpCxYtqUnqn9tOY4ROdqox6xJ6+FrI=;
        b=QA2zbqqts4wrNHJIxmn8ODUlWdUq8QpgKb4LC//BSXSxMsVzwjvQOcmumK9XgdOpD/
         vRCEWt0xQScb8Rv8anYqFGwSBxVAFPWgzp20jBwtPoJOk6hRkhqWmsycRdTK708X7qGZ
         lD6vIuVONXZ/1+csV2Jw3qSkM5KafHz2lA/f38xtuG8RK4eESd/HZFpQnJRyVTSP+cKu
         /SF83squkT01QZ/TZmd+qqD/uVKxQzlXQ+vQWp2SKd2eaxwnTt2mGWJfh6t1ZMhVaZ2l
         PSZeuL+48+f9AWBj3wDrN9JajLIjoLFUhbbbvqzFB8jBd5iwzEfXQBSZMJ7ZWPjYgbLV
         KEEA==
X-Gm-Message-State: AC+VfDykuBXSOoXwBbahYSfaG0k9DOr5ANr85UO/H4ukcGjYPbJg3deQ
        cegMnrxYCiiycvKbIMdqT3rr9Q==
X-Google-Smtp-Source: ACHHUZ7kDNPDsmHC9D5eM/2Z9llIeojx6shhIiea4BOQJZaj11Rt3MXGJZ3Vw0dteGnGI4LfyzD8sA==
X-Received: by 2002:a17:907:6e28:b0:94a:56ec:7f12 with SMTP id sd40-20020a1709076e2800b0094a56ec7f12mr6113485ejc.30.1685559009912;
        Wed, 31 May 2023 11:50:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id z9-20020a1709060f0900b0094e1344ddfdsm9381958eji.34.2023.05.31.11.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 11:50:09 -0700 (PDT)
Message-ID: <ef1c2bda-b172-51bd-3dfe-337488c54f34@linaro.org>
Date:   Wed, 31 May 2023 20:50:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/4] soc: qcom: socinfo: Add Soc ID for IPQ5300
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230531135048.19164-1-quic_kathirav@quicinc.com>
 <20230531135048.19164-3-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531135048.19164-3-quic_kathirav@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 15:50, Kathiravan T wrote:
> Add the SoC ID for IPQ5300, which belong to the family of IPQ5332 SoC.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

