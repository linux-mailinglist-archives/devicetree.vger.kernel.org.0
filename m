Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE8726F2EC8
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 08:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231249AbjEAGmK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 02:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbjEAGmJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 02:42:09 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40933E72
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 23:42:08 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-95f4c5cb755so442271766b.0
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 23:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682923327; x=1685515327;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Ug3ALriauxRZK5BuCGHz3hy7oRHCk3NYUeB/1prBrY=;
        b=yt4JG8tWk8wAOJfdh9RJqmqYq+roQX5gM6HshQPz6CUcPGCj2zgsoNeviCmkeSK1tu
         jLH0eWFDXwvPLCM1TByk4uSY7nKHkCqrzb94JchNYgFfM2hVp0DLuwFXaSuzH4p5ViM8
         SC2eMqgoSPA2hPTDMaOsbRIHPxKsiQmMk1gGwAiLhu7xNqd2SZEiLNZIQcoe4ItIz5pF
         VMlWNVe6ecfuN7CYfc/8rYbNZ2TPBAt0gV1dDSwiVRCSJCskh6fRup0ZtwYnKmKgoyDT
         /e2TtOW+gMlHD2EKruh6ByuUhwuzGXvdm2nqF367cylbXkVOH9TW8++pjimXZTr5WjtX
         /DzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682923327; x=1685515327;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Ug3ALriauxRZK5BuCGHz3hy7oRHCk3NYUeB/1prBrY=;
        b=XJ6JntjVxbZ7tet31etI/32SMXWTYDRpP2dOp1mrkoqqE/4GGLBnie/ldSbJ1A6L3d
         lIoT+11VoPVTO9mYExjCG4BCmJ50D7loOpv9gvnuPRjQUTRR/rH9pZyYt7p7rnR6Twss
         l8L5vT0WEzY3p6A2o3YpBJbSAQfIw55KPBlj6JFfbYWhwb7Q2K5uLt69ab5YxmKii+y6
         T1VqfXVbg5c94/TF9sToPph9zd2ZhpcSshkTYw0JA7oEt+3JRbOEECuyymbE5lxYJwUn
         Z4BZSBtq5GoCjqq/4wUxiTkewgWrQ0FFEN9VJ2QctKD9/GNpHgs2B0SWzyJlD4z+4xZe
         fP+A==
X-Gm-Message-State: AC+VfDxKGWbexIfohPaywYStz6r+sQLZw52Y0R7p6+s+337r7H91f8uS
        MHK3TYiuJ6GlFP2G3CuI3E8l6Q==
X-Google-Smtp-Source: ACHHUZ4oeAdjiUq5MyBqbc28cNuh/LNOYUFqAHRwLNOTfAIWvWHzI5qhT7JQdltUKNsMvkYD7E9eGA==
X-Received: by 2002:a17:907:7245:b0:88f:a236:69e6 with SMTP id ds5-20020a170907724500b0088fa23669e6mr10854766ejc.7.1682923326687;
        Sun, 30 Apr 2023 23:42:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:637a:fd0c:58fd:9f00? ([2a02:810d:15c0:828:637a:fd0c:58fd:9f00])
        by smtp.gmail.com with ESMTPSA id pv22-20020a170907209600b0094f0025983fsm14605371ejb.84.2023.04.30.23.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Apr 2023 23:42:06 -0700 (PDT)
Message-ID: <e9a00e55-e2f5-1f02-56c7-8e12b551867b@linaro.org>
Date:   Mon, 1 May 2023 08:42:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 1/6] dt-bindings: usb: qcom,dwc3: Add bindings for
 SA8775P
Content-Language: en-US
To:     Shazad Hussain <quic_shazhuss@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     dmitry.baryshkov@linaro.org, athierry@redhat.com, robh@kernel.org,
        konrad.dybcio@linaro.org, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
 <20230428130824.23803-2-quic_shazhuss@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230428130824.23803-2-quic_shazhuss@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/04/2023 15:08, Shazad Hussain wrote:
> Add the compatible string for SA8775P SoC from Qualcomm.
> 
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

