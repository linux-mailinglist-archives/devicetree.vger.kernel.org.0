Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E15B5762DC8
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 09:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232166AbjGZHfV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 03:35:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232168AbjGZHew (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 03:34:52 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 576801733
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:32:21 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-991c786369cso989706866b.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690356740; x=1690961540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uYOBCLqUzTsg1SYuGgTRKxpgxdSVk+qVnKZKLrCeVQM=;
        b=iAX4H7CweXHesk9Pu9HT+x2bqyVzF5qN2whX9hexKrbgxRioiDf9AK0vh79jBOThFS
         J3xb1pwYXRx5ZaZWHFedFq3MuR3EFoz5qYvDNMoA77mOnWTWsChUhqx7aYZ6uOdzBNbD
         JYT0HX6jnwvRGNrKjFP2IHxGEzDJpxonuA2UDSATqc9cfLms+Q4ooAoi6hyWOKqEcFTn
         X5NogTxWGTR2KbORk0Sibss8KwFCWF10Ijqzk2KlVWlNUo908ZsyBqntqlUSOX/RKwJE
         8ocMfoqDwR3cFl+4MP5MkPOAObL1a6cyJCmLqBDGicr+nTHgWMguKpU5xuxrlxh2IX/E
         Pwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690356740; x=1690961540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uYOBCLqUzTsg1SYuGgTRKxpgxdSVk+qVnKZKLrCeVQM=;
        b=WS9H4X8DzDd6y55snFvLKtwFUO2eSogxPVTuGbVEUjtiefx3z72MTk9NOQ+7DUBEmK
         Lb+mc3Ot2ByXXUUNaHTrTlV+VlPahPYonRHIiM9G1xGXnxZofF/OAA3BsYr0BGmWlwF5
         J3Lm6nOlSazK4S6IHWl2aYMnoYrEddIs71eYwn5ieZQ6oRJXTXnB9AdreJHLQhNCCGiN
         dyMhziSq4fp8u3+d6Mvxa+ouqWE0Mm2oFAkeNY5vDYDdmF5yNJREvXMcyGFkHganxUdI
         F1JO4WfnNOmVXaZ5RY99N386W85G8hyFp7W/7ZmOL69QM+Zrs/S9dsL4YKq322tAqlS8
         OgiA==
X-Gm-Message-State: ABy/qLbQvwRJ+Coi75afwVBE2CCMIgUpufcJM0wCv5oOGDfqPPCuNNS1
        ESqa2b95kvP1jmiJBFzSF9xHkg==
X-Google-Smtp-Source: APBJJlFbes5WLaYz3q0efLPZPmpXiJi/y3dYOYYg0SNNl1ShryNV9jroH5yY+Gv2eiDUWKAz1tWI8w==
X-Received: by 2002:a17:906:5396:b0:993:f6c8:300f with SMTP id g22-20020a170906539600b00993f6c8300fmr952163ejo.15.1690356739830;
        Wed, 26 Jul 2023 00:32:19 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v17-20020a1709067d9100b0098d2261d189sm9343518ejo.19.2023.07.26.00.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 00:32:19 -0700 (PDT)
Message-ID: <1c3684e3-b88a-0476-9376-19d07956e261@linaro.org>
Date:   Wed, 26 Jul 2023 09:32:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] regulator: dt-bindings: dlg,slg51000: Convert to DT
 schema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Support Opensource <support.opensource@diasemi.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Eric Jeong <eric.jeong.opensource@diasemi.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230725063132.42132-1-krzysztof.kozlowski@linaro.org>
 <d33e5dbc-ca38-4702-903a-b36f9a824391@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d33e5dbc-ca38-4702-903a-b36f9a824391@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/07/2023 12:43, Mark Brown wrote:
> On Tue, Jul 25, 2023 at 08:31:32AM +0200, Krzysztof Kozlowski wrote:
> 
>> 1. Mention that supplies are required, if the regulator is enabled.
> 
> This is just adding an OS specific note in the description, it's not
> actually marking the properties as required.

They cannot be required, because it depends whether the regulator is
used or not. IOW, they are not required for unused regulators, which is
not possible to encode in the schema.

Best regards,
Krzysztof

