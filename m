Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 914BC646D25
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 11:38:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230174AbiLHKis (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 05:38:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbiLHKiQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 05:38:16 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB7D38C699
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 02:34:36 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id j4so1433720lfk.0
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 02:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2LJDWSGNjS/LXhJZi7SC2DVBDrfCD5judgl3sH6DXJM=;
        b=gNK/jN7CLTEZAH0fNiVipx2qX2wGVvxsNE49fEHGsf9+AApbnD9/WM6gDY7B2A6+Db
         x66We9UAim4fVs3LYcdc8DQz4NaNgKLOFf79H164EdL29YalCgOjyXWOqYqeyord6EAv
         a+azYOKG63PnK4VVKC+yKCmyCS0S+72SVh0cS3z2H3CW9vFrA5NjWVndFkJbwGtFus0X
         yMVUZP9BQeYtGPP7OKQW7q6NsJe903d4/YytCha4yKpMNZqi5BwXxDbfYGoHepzduCk9
         m+/Vm/26ECguZuWGGKNfKm1Ud6pBvBqOuRuinwfPyhR2QX1G5cAeqUcBBvPUfNcUlQmI
         lesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2LJDWSGNjS/LXhJZi7SC2DVBDrfCD5judgl3sH6DXJM=;
        b=jYaqJx2IfjTR1aX5KBvsKJiq/Gidn6/ri0jt1moZIMT6ki/m4Ar4Yi4wf8HHIKjDFe
         BPTrdiVNt0kfbiM+V9n/IqRuLmAV2QDpCoVP2Qs1jNngEagTsAbDkYaGo0j1nCL81jeP
         zNTppTPKqX4hPvSOAJh8gmFhH2dPsu3Vifc+HZ3g70HIzRysa4HR7z/jOmDe2ewjbh4N
         ICR6k2qfXGcGwuuO0taGwO+shoaFQmUIzvImO/Ams2xiU1YrrjsTPE5N2v/TGxYJ8If0
         n6beOKdaKUxCEuknhR6sFcb7UQIlI7SGOdzYIatqugELYl6SljWXdUqKfFg7sCT+yOvH
         t9Cg==
X-Gm-Message-State: ANoB5plTdCvkGR0NEaFd++te2FSFp+6LbVbNG9eJ5Ij3IdHbXhawv5j6
        j+JDHi1JuMObMlbzDS1/Mkt67A==
X-Google-Smtp-Source: AA0mqf5UttAa8Y+XQ2b+W1Sp0iqeySPxBCP85uS9mxv0qgIUhBlQvXy2P5iTA2NL4+7MMCImRdOHpw==
X-Received: by 2002:a05:6512:2619:b0:4b5:346e:b4c with SMTP id bt25-20020a056512261900b004b5346e0b4cmr11115112lfb.49.1670495672815;
        Thu, 08 Dec 2022 02:34:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c23-20020ac25f77000000b004b4ad5ee601sm3284034lfc.255.2022.12.08.02.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Dec 2022 02:34:32 -0800 (PST)
Message-ID: <47789025-d78b-bcdd-6876-6c9af52a3b05@linaro.org>
Date:   Thu, 8 Dec 2022 11:34:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: leds: intel,lgm: Add missing 'led-gpios'
 property
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Yi Xin <Yixin.zhu@intel.com>,
        Mallikarjuna reddy <mallikarjunax.reddy@intel.com>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221207204327.2810001-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221207204327.2810001-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/12/2022 21:43, Rob Herring wrote:
> The example has 'led-gpio' properties, but that's not documented. As the
> 'gpio' form is deprecated, add 'led-gpios' to the schema and update the
> example.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

