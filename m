Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EC116FB51B
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 18:29:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234213AbjEHQ3u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 12:29:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234292AbjEHQ3q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 12:29:46 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D1C66A5A
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 09:29:44 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so50469480a12.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 09:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683563382; x=1686155382;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gPXDrt7IdOrTqCpkR1P8P9GF2BAzVLMP6fdtVkD62YU=;
        b=VvP0og3f5cmbDGbGd1xw9V3u3C6S5YE2rrod9+pT2+E9v/AUMEw93icukbqxdZMTsh
         ohSwWQIgiywbxOHp9e6FwjdxmUR7k9O013E1ipNNPgZ4T1sERNwkK7T9GfUErwesBWzA
         svYyeKrOZeviLGBjpu6q/ISIPDLOfGNWA3GkAxZ90YXgVD/JcgEYPEJSDwVhJjrcZh2l
         LCq+WGGNGTa+MGObb8jJUR22D1lblvCDGYslAoRTZIYbyNy3lTu+7wmM3CfaZcHi6Yhx
         FrUMsKGkLo3X+5JPHfKXYz+4zALgHU872/2pSZmfToIVRsTEKJEzNcI7+kOfRoEo+5Nl
         IM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683563382; x=1686155382;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gPXDrt7IdOrTqCpkR1P8P9GF2BAzVLMP6fdtVkD62YU=;
        b=CQ9IKVyPCINwGQ/oTctM4+LgqMVoBuOUd5onIGhEd+FPMAcowEW9JFmbcD29WgPv4V
         p0HJT8wZYu98+gaB8KOXmBYFf7UBW5s32qCD2TnBRH2rkB8b1YkKDlGboTHda5i1UC4q
         iYXVWe0Ng31vEwLXepcn1juRjuyp9m8uBBi0zM/hB7L/4VtBgXga0NtchO8Notvz8l0W
         dSBrl+1fSwhhpkGGghn1Q86WfycDSY0gx3qO4DlsMOb8q0+fJs9kMrgN4Fx23WNFcU4r
         d0UJu0I2vxrljUWam1PFlARsxqGaGBV4ySpes1rWGXZqtitSQcwjNnepmlNhUZeZv+Pv
         sYMQ==
X-Gm-Message-State: AC+VfDywsSdPV1x+e8l16ncUU9dWQKgwfF7qt2ry/6pBAaSP1rvNKs4X
        SdtshasBrdqn7z8uI2dWrwZ0gQ==
X-Google-Smtp-Source: ACHHUZ4XCLB7diXWh2eH6vQIehFRTxYyC4M/HACmt20ekY8CVuLLA9UmmTAZGeXfTQ2DmPkYY7iaYQ==
X-Received: by 2002:a17:907:3dab:b0:94e:6edc:71bc with SMTP id he43-20020a1709073dab00b0094e6edc71bcmr9641816ejc.25.1683563382690;
        Mon, 08 May 2023 09:29:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:50e0:ebdf:b755:b300? ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id s19-20020a1709067b9300b00968a2286749sm168999ejo.77.2023.05.08.09.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 09:29:42 -0700 (PDT)
Message-ID: <1231934e-04d2-7c63-1eac-64cf86a7a3fb@linaro.org>
Date:   Mon, 8 May 2023 18:29:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom,ids: add SoC ID for IPQ5312
 and IPQ5302
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230508152543.14969-1-quic_kathirav@quicinc.com>
 <20230508152543.14969-2-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508152543.14969-2-quic_kathirav@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 17:25, Kathiravan T wrote:
> Add the SoC ID for IPQ5312 and IPQ5302, which are belongs to the family
> of IPQ5332 SoC.

s/are belongs/belong/

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

