Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6915D706341
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 10:46:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230378AbjEQIqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 04:46:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230487AbjEQIqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 04:46:52 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B30E269D
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 01:46:47 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-96aae59bbd6so82807866b.3
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 01:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684313205; x=1686905205;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f+MaWGsQcDtN3svmU/IB7lJaVljmkyqRVTrXo/xLX/M=;
        b=OUCyUQ/cz6arjs+z6loBrXyW8fktAzEMtshWSNGXDbRxNiNzSLwMlIzBMcsTvW4v22
         +eQbPeJ0YxqnOs/fJ0AuVlL3Tn8d68Oh8tazmMqonuwXgq/v5SURcYyF0kWRq3mF6m6i
         eNCXmpcgX2Y+u+JsYW7MtBu9ujshbXY5LjpUbXBAnL0hWlAqL9UhP7qYoLZbFHsNXYtQ
         s/OKeGrjbZNDz7NBQULWWXX5N8SyCK3+CyM5UuIV9UZ0FvA1dMHfDg1ZvuvA1cQuK3Gc
         BmCIYAMXWDSmUxVYkEMhSX/joypZ+zPWN2nCMxR6ChA6bHSUHId1Ir+rpGBrYYINOfOq
         FwhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684313205; x=1686905205;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f+MaWGsQcDtN3svmU/IB7lJaVljmkyqRVTrXo/xLX/M=;
        b=APLrVYrP3Qk8XW+zm0rhUDs5j6qw30oAwyyd71MC7hM07xC0DXMkA8eRRh5GOkiiqq
         1B50Xf0DnSyqmsOR4VhP0cOI+HiY3bzVuRjD3ZW3UdfTywHSAwtRBHIsdWHFqiFmNqu1
         TANKFcdk5aawn6+RmnxNRcNSxLrXzXEJ4NurAk/tpoMw1mFLIP7nEIU0uRgskFLibP3h
         /jSJ54SRQta4pNK37yp7bjGLBmSGObrWstI7axHT1ysa41Q4oXdMC3JsaRcfgCT/lDc6
         BC8ktPNudD28CAANOQlu3FYLNIG2BJQuxYXqXIxqjV4X8NYp4starIkYRtp94n6O2ZiQ
         XxZA==
X-Gm-Message-State: AC+VfDy9e7shOKbENldRFm4bJiKecjyXoN6whcXJ+xd05ypemWtIs7JF
        7tFDYxPNuaEoT/AZdR9OGOLOHw==
X-Google-Smtp-Source: ACHHUZ7Sqg0N6LlGl5vFdBqmcw3kUwNXxaPIlda/emLDHGhVkofRdZnm+/e5xUmgodycv/IvPK6SCw==
X-Received: by 2002:a17:907:9444:b0:969:e304:7a22 with SMTP id dl4-20020a170907944400b00969e3047a22mr26618415ejc.18.1684313205572;
        Wed, 17 May 2023 01:46:45 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c9ff:4c84:dd21:568d? ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id gv15-20020a1709072bcf00b0095337c5da35sm12242820ejc.15.2023.05.17.01.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 01:46:45 -0700 (PDT)
Message-ID: <7916ad5d-cb7e-bf55-3e99-55441f78217b@linaro.org>
Date:   Wed, 17 May 2023 10:46:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: cache: qcom,llcc: Fix SM8550 description
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "Borislav Petkov (AMD)" <bp@alien8.de>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230517-topic-kailua-llcc-v1-0-d57bd860c43e@linaro.org>
 <20230517-topic-kailua-llcc-v1-1-d57bd860c43e@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517-topic-kailua-llcc-v1-1-d57bd860c43e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 04:18, Konrad Dybcio wrote:
> SM8550 (LLCCv4.1) has 4 register regions, this was not described
> between its addition and the restructurization that happened in
> the commit referenced in the fixes tag.
> 
> Fix it.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

