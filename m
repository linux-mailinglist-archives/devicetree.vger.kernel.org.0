Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53DCD68363E
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 20:16:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230007AbjAaTQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 14:16:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229851AbjAaTQu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 14:16:50 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B107C582B3
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:16:49 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so13245319wma.1
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 11:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9MPbe5iwRaaP/IhZCNpsudukeeF99kTQgmfKMrip8BA=;
        b=z5ogbM37k1wr3/oCWnDbpLVmf2A2QM+l1gRn1csf3YTqwBpp2Pt0BzMzp8SHaJvf1i
         4lR23QOEODZ8w1IbL6qMPoA4n1gsfxVdvafWi9rVCY+Pm04RaKDYjC4D6MEWAEto2qm2
         TXBcOxoop/r+Q9zPKYxlV5kyoq2i9I/a7rlpZ8x8OjEdy7YrWtFMn6uZGXTMJCDYQjju
         CmoqnfQVLVLK+mx3ZPtmxIg4E7JKKIo0QSBlhi+ZrU2e0FAjD585kR8XgLWGX81IPrji
         tgo0KonsNDSc2yeRdfRR5JnYWIsTwTUb85Cz1chcZyCP9O+INl+8mX1lqtLNDowc5Sm7
         oHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9MPbe5iwRaaP/IhZCNpsudukeeF99kTQgmfKMrip8BA=;
        b=I4uKOJGXDyXCYzm9lBD2Zq2VBs5X1DX8G84Fe8HpOXarl73HEfVjjAq6lVouG03yXn
         upX4REod8g/X1xMADb1hfm7PvHwnNfhwivJDaabG5nvWNM1G0UaSV7DWnZP0CAOQ0AUi
         u1/yiuRXFA0vRfZLjQk6Sz5ZmrrK1w/uLMpkPIp5M5IkEQrAYM5QWPlgGKNa1a0ZzRO+
         8BEeknxWcH5JRBp1QZMpbSLiNqdpMJe1E2p76y0oZbn8ns9R4e9hbVafuLPrhSqCYiEN
         srlrXrYEo4SmkM/HvIxqR0Yo3m6RMrJqquopC2E6mY2CekL4SlENbafpNll1wI+9aw8p
         aR+w==
X-Gm-Message-State: AO0yUKXxBm4icDRr1uO8XYcRVFAqmTbcA80Ey1OWdmtWQ2TtENGGfpDx
        J2GocnschXYqr4mr0QDZlbC6c182iDjP9d3F
X-Google-Smtp-Source: AK7set/LpiB/mUdZaDfwthxd/ezxlPemqRQ7sUPZnHU1TMciOsezu5qImknY4ffAJhBqQbGcoL7QEw==
X-Received: by 2002:a7b:cd87:0:b0:3da:fa18:a535 with SMTP id y7-20020a7bcd87000000b003dafa18a535mr280865wmj.29.1675192608325;
        Tue, 31 Jan 2023 11:16:48 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j14-20020a05600c130e00b003dc541c4b13sm8320321wmf.21.2023.01.31.11.16.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 11:16:47 -0800 (PST)
Message-ID: <b510b2e1-8f0c-f942-75c2-65f1f3efdbfe@linaro.org>
Date:   Tue, 31 Jan 2023 20:16:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2] dt-bindings: mmc: Add cap-aggressive-pm property
Content-Language: en-US
To:     Hermes Zhang <chenhuiz@axis.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     kernel@axis.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230130064433.962712-1-chenhuiz@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230130064433.962712-1-chenhuiz@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/01/2023 07:44, Hermes Zhang wrote:
> Add a new property: cap-aggressive-pm to enable the
> MMC_CAP_AGGRESSIVE_PM feature for (e)MMC/SD power saving.
> 
> Signed-off-by: Hermes Zhang <chenhuiz@axis.com>


We did not finish discussion from v1 as you did not really answer my
concerns there. Don't send v2 because it looks like you cut the
discussion and ignore the feedback.

Best regards,
Krzysztof

