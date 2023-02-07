Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8187B68D944
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 14:27:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230510AbjBGN1t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 08:27:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjBGN1s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 08:27:48 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F19221942
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 05:27:46 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso13162906wmp.3
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 05:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cZBi11pVrLhMEYypsHczE4H31YogyQbk7+72hy7yu10=;
        b=FuOGP7HuPzDGhhFrpbpoQprw94oFsgJrx9owhSC7+ZngydVV0BPkR40yG2gDPDjFEd
         gqTcFMc0VN+vbDBE54BkdQlwBWq8xMBkKgkCNtdVhIf7/dxL50o8lZAGl4f2B70LhtM4
         bzbDgPziXuHdjFAPfcX5YKMKkabnTUiIkPMSE8VzbQA12KgSuC/7SAReTpT6s9oCWq/W
         5TXHN2+b7YmD5TahPdvSIvcEwr8NGlKoau41O7pKHDPiCiHiFbhL4Tkw0zYXp7TfnaYK
         kEO5duaj0jWoEFR6NP7g+C5g9h1kSZ6sSyXGDzS32kOZlDDyVKtIXtQ/vG/4xY3h1RPi
         EDIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cZBi11pVrLhMEYypsHczE4H31YogyQbk7+72hy7yu10=;
        b=EGdty1JAtreROt2i9mPR68zttfEzc+Ll52XEsku+mSscX8xV95wPmW54LCULrwJdiJ
         gqUpHRq44dK564XfIqHK1lRv+fJYpGg6LI84eXYHPc0NdWA6wQX8aobeRacCfGdSLDGC
         zt88tboR6sI9VEROQl9NoTGeJAyW/imNptl3RTMnOyAl/1DWkmPAWZYpCTVUkoGQv2i8
         nJx0nZ6vN1QpjYt8sX/8u464JhJgsP0P5hoIRw2MK4Yw7oHU2hTsGSDxICVRywDNwqoL
         2hAiB+QM95GLJ6rXPRFIk1wWrdETczAQfwu3Cz0gBlF9CHKVHEg9GDoSldDXKt/9hJe1
         +LKA==
X-Gm-Message-State: AO0yUKUS+8DzoDz9QpzziCS1QBpbsrvzqE9BQnwQ5vtTme/M42MyfkZY
        u3ngaHp2bq2yjR8XcO77/VKW+Q==
X-Google-Smtp-Source: AK7set+fk8Ze0/nyvTyp9Ejog+CFPSBrHtpahkRPumlbPR+6Bd6uri6ZNf8F9pYIgJXjQdB8VeenZA==
X-Received: by 2002:a05:600c:18a6:b0:3d3:4f56:62e1 with SMTP id x38-20020a05600c18a600b003d34f5662e1mr3072014wmp.27.1675776464722;
        Tue, 07 Feb 2023 05:27:44 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j14-20020a05600c190e00b003daf681d05dsm15172232wmq.26.2023.02.07.05.27.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 05:27:44 -0800 (PST)
Message-ID: <c32a6b56-959f-9260-001e-bb956b8e4645@linaro.org>
Date:   Tue, 7 Feb 2023 14:27:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/2] dt-bindings: altera: Add enclustra mercury PE1
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
References: <20230207130812.17023-1-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207130812.17023-1-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2023 14:08, Steffen Trumtrar wrote:
> Add binding for the enclustra PE1 baseboard from enclustra GmbH.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

