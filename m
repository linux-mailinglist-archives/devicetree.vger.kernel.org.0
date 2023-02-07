Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4B768D948
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 14:28:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbjBGN2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 08:28:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232082AbjBGN2I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 08:28:08 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D388D28D0A
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 05:28:04 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id o36so11036218wms.1
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 05:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=camdug1pO9ug/N71/pGwYMsIC7Gp81bpoj1mwo9vqi0=;
        b=S44UYQDAjG8BGmfX98/glCn3xmNp77qOdd26e2DUosIpWadAnv0NZQMuW9GQ/XPTpH
         XdHwuXH8CEY02BAHTfYEuSX3hy1nmd4ALfmZ0xIwRxjSvMAYQDqNJz66kpNYWgrIAyd0
         bifWBCQJeUv0K4Xi0cSijHXlJMuAWB+zor5ceFnUpouvEXhERVed7Uv5+nEX2NVpm+++
         EMtqWOkgruG2RZ6PHJwUnbHSQnPiQrDEmADt5Ec6CdL+yYakIVtDy21QIAIvmwDE+Jel
         Tgns+4lM46ObJmt4le0QPyhnpM2+2vvHKPf6Jvpfp6VgHH3jJ3vD638BFGn1BkAMaRwA
         n8JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=camdug1pO9ug/N71/pGwYMsIC7Gp81bpoj1mwo9vqi0=;
        b=GT0MMOJWsidDdEmQMoWZf0+FV4ZXkBMw3zUwaUFShLm7rPDriabhxwKic4KeoH0pXw
         5UfiMQNziIYWHU6rC78wy70Z3+AqQbLri4HeKJCY0jGSkxvKlfpVEXcMikunJRRXZ1nC
         G1IiFFTRKB2VqZ4SVr2fwQ4RvxIDXubyUXGL15NsknyZwMgcsnTaZMxj4SGoLgvn6gDW
         66OctwqT5Ild0JfyX6P/h0MhWDuTd0leGotsIBxjC7GeEixTgQTgGVUIrD9FFZryQILV
         DAhJ/5JwS8VsMTRy1eUGRME6dgJ/4T95yPi8+XMqP3+aBO9XLV0HCcv68H6+FFWTwJzP
         7JDw==
X-Gm-Message-State: AO0yUKWunZR12lDiDscF/XRXId85oexHA6JnrYYAzS5IZDi1rpolQQv0
        hp6bhrmgJDWVf9XhETEvCqyEIw==
X-Google-Smtp-Source: AK7set+rkWF+GA/rZXQEJ3QxMfAErR67XYQCkNQdwWtK8KNlSq3+RJKtNd16/NqlR89IfjTa3hYzFg==
X-Received: by 2002:a05:600c:4384:b0:3d9:ef72:190d with SMTP id e4-20020a05600c438400b003d9ef72190dmr3234533wmn.19.1675776483038;
        Tue, 07 Feb 2023 05:28:03 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q9-20020a1ce909000000b003dc34edacf8sm18633689wmc.31.2023.02.07.05.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 05:28:02 -0800 (PST)
Message-ID: <739e5a17-2fa7-05b7-7517-6ac49c5b6504@linaro.org>
Date:   Tue, 7 Feb 2023 14:28:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/2] ARM: dts: socfpga: Add enclustra PE1 devicetree
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
References: <20230207130812.17023-1-s.trumtrar@pengutronix.de>
 <20230207130812.17023-2-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207130812.17023-2-s.trumtrar@pengutronix.de>
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
> The enclustra PE1 is a baseboard from enclustra GmbH for the enclustra
> Mercury AA1+ SOM.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

