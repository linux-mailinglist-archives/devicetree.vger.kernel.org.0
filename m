Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D3E7621BA4
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:14:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233828AbiKHSOX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:14:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234050AbiKHSOT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:14:19 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BB75B56
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:14:18 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id u11so22333402ljk.6
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0GyWg1daeDccNXjrI+B0yVZa3Sl7JetIr7fZq5Z0LNk=;
        b=BPTRcNU4j8Rvd6wUs31/H0cTLzJJBDSYOtkL+C+8SKsMj2ygiznlGR/TSsjYXPzOLo
         uU5JI/DcOKyNJjNQQdB57KC222x10FwRHUaKv9q1I588zfUPBwOPa/QJR71IAsz8QqRk
         oVk3RbCKcED47wQNCh1n+A230d7D0A6XUhl6n3NhKI5OlmoTTC3Py/HycH3eIZgakerN
         +WNOoj+s4QbQEeqmrEW6bqR7N+teHQrg1Fl+WKoV2jTKlar4syXZUj5m0lGcG4/s/a+1
         qSheNkp68grHiD17H4FwTyAkg+VvPn1hsWTSWMt5dZSJ04ApIwIubia732A/qoyJaerM
         ZwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0GyWg1daeDccNXjrI+B0yVZa3Sl7JetIr7fZq5Z0LNk=;
        b=1lkhskkQNdFEWawwq3nBxPxBq4VAE64IsJqutkllr/9VCt288TOlcmQyp95dHEjJaN
         cjngXrRa7yHhbAkP1b4hi7EPCokdS7vSVfD4yprIOhDe5K3CMtWVqoetEEdTtW5/sGeW
         BgD5wfTKOjidvryjppZe0LPzMzsyJhNk/z4sGT50xJLZtG/21QFYcsHrfN8iR9ZabxTn
         H6fW8796jdb3cVrSKypRX6Xa1zrd225Assx3TX2tJKNqxha9MOafYmNZBAZzJk03ZvLY
         GUwUVQksVC4Utw/druYPr787RReAUsgKzp1TGIRLZK1q/p7kw/FQ+6tIX0DfVXXltXHG
         QeKA==
X-Gm-Message-State: ACrzQf1sujyBofMmZU+1D+TXkUhFj66HDqJ+5u9dS3gS3/i5dM6+iM0/
        id3fhPMTrlW0GB68qWcLLWlXR7vVG5W6Pg==
X-Google-Smtp-Source: AMsMyM4qTRlN1Qd13pnleiLmpWWmMxomV2Sl1DEUk4hPtuYobHVzMbcDTmCjuS46E+NmVSyIpQKrKg==
X-Received: by 2002:a2e:9589:0:b0:277:54ee:e8e1 with SMTP id w9-20020a2e9589000000b0027754eee8e1mr18438487ljh.352.1667931256828;
        Tue, 08 Nov 2022 10:14:16 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f27-20020a19381b000000b0049ad315cfc3sm1872562lfa.162.2022.11.08.10.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:14:16 -0800 (PST)
Message-ID: <791837b0-4feb-a8cf-3d2e-ca78504a4786@linaro.org>
Date:   Tue, 8 Nov 2022 19:14:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/2] iio: imu: inv_icm42600: Add icm42631 documentation
Content-Language: en-US
To:     Jay Greco <grecojay@amazon.com>, linux-iio@vger.kernel.org
Cc:     jorcrous@amazon.com,
        Jean-Baptiste Maneyrol <jmaneyrol@invensense.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221107223351.61142-1-grecojay@amazon.com>
 <20221107223351.61142-3-grecojay@amazon.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221107223351.61142-3-grecojay@amazon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/11/2022 23:33, Jay Greco wrote:
> Update the required documentation for the icm42631.
> 
> Signed-off-by: Jay Greco <grecojay@amazon.com>

Use subject prefixes matching the subsystem (git log --oneline -- ...).

> ---
> 
>  .../devicetree/bindings/iio/imu/invensense,icm42600.yaml         | 1 +


Best regards,
Krzysztof

