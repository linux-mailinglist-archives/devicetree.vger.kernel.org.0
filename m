Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9988B75EE88
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 10:57:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231993AbjGXI5X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 04:57:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232000AbjGXI5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 04:57:21 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E58A10D3
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 01:57:08 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-98e011f45ffso610280766b.3
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 01:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690189027; x=1690793827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=owG6OHIwikfnxyddtRAYGrs5TFXY1YqI1q2T1OmAufw=;
        b=HkQCoTDd6APCNCBfEHGJeKiIM5LEFIe2lR7tQPRUotVV4SAkiw5N08guAqpX9fknNX
         MILkXQKxAmkQp0y+WDxAa3nw70d9XaFOf/0mgyexOfeYI4MDfHuUFXtXf8hfHidEiu9v
         VuZ/R446wIpQApn2xmE2BRhzKGCyZafm9qmOGHKlgc1xbiO81XxX4/XExlHgrgWcOy/w
         apQq0Sfmc2mC+Sd6f6E+7hMWCwcNxurWvzMOEKOpr9x8Shxlon0kVTkxM87Kxtm05nhy
         4S59SlUQ5CO2piu+X9w7pyMG4+TzJEzH0zubjwGd0NoBBlZY09NWjHfetCgfzC9WfNLV
         RUWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690189027; x=1690793827;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=owG6OHIwikfnxyddtRAYGrs5TFXY1YqI1q2T1OmAufw=;
        b=faLO5XYIp38tx8VHg75Tj0HNdyS9afT/Sgyb7REhO8H2nkOO+t7PlVS5bCIV2KRLtk
         KjUeChvgAYvmJEiStUhrgwKZZfO2FQSoFdJJvObYoEm4m4JUCzJ5YaE6PQJ9Qz1KzrU7
         hQUS4DtoWeXMN3Z1zHXzOAQGSAYH9z7rgsFRmTEGoZbEqJTmbnv0R9BTwM4xuaPTqjmc
         z4UzH7Mj5uwFgydj8/wewNPSiZB60OnShL+nEvIu8WazmzfnS2jds/Eey48rsf1BJ42S
         DK0k3RFSZf9Q5hv/H//ae8OATHkb4ZBRUxOI0PUUzULyxVQ/b0YbTOYw/4QRCQSuG1Rq
         0g4g==
X-Gm-Message-State: ABy/qLZVfJS9PckUGbuooptD01LCxi9FCuYoeoVW29VkbKC2CBZ57pky
        Tb2U2jUX0yEw7M/p0Qo6qI1PcA==
X-Google-Smtp-Source: APBJJlEM3lq1JFdQgmAyuMscN6S6KogpTMrAJRbJpDsQAF+3oubQ6gVynSJ/RMaGXgp5plWWzolmWw==
X-Received: by 2002:a17:907:7631:b0:993:e9b8:90f5 with SMTP id jy17-20020a170907763100b00993e9b890f5mr7994896ejc.8.1690189027087;
        Mon, 24 Jul 2023 01:57:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id s6-20020a170906960600b0098cf565d98asm6363259ejx.22.2023.07.24.01.57.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 01:57:06 -0700 (PDT)
Message-ID: <82d45863-d48a-1eab-a3e0-142f46d4863c@linaro.org>
Date:   Mon, 24 Jul 2023 10:57:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH V3 2/2] dt-bindings: arm: qcom,ids: drop the IPQ5019 SoC
 ID
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     quic_saahtoma@quicinc.com
References: <20230724083745.1015321-1-quic_kathirav@quicinc.com>
 <20230724083745.1015321-3-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230724083745.1015321-3-quic_kathirav@quicinc.com>
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

On 24/07/2023 10:37, Kathiravan T wrote:
> IPQ5019 SoC is never productized. So lets drop it.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

