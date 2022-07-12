Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12FD8571360
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 09:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232401AbiGLHrI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 03:47:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232286AbiGLHrH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 03:47:07 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13BFC9C245
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:47:04 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id a10so7099888ljj.5
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 00:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nWdPbRlvSPLucDlqEWJmrYAqXD0vfPf0ZvhBFuu75UI=;
        b=efECiH6ORKd9IQWr5oAMikbHsCL6/+n6g858tEVeR9ChQwK7rfg1EuGa5oY+CmnD8P
         fmWEXKRlax4rOMU6Gf//YfqP8C8EY5xTxPkak4v+r7juY8HIWhj9+uhzNR4kNOrwyRE4
         R1rKEpX6qB8T1ylU7UbcXLNN+Nd7UHnys5vhNpZUIfAneeUvfpfWA2TqgMTZ/jrdGK4R
         QABE3pa7Pox1ODlecxyEf59dpWCwPD0CYh4HJhmUO9wMqVfXz3BkZPpCVOBfToZkmn8S
         5wM8Z9ou7X6WgGoLnaAbR1ltT+eiOJdpCvMvRwf0Yk4hk4C8xgtPxq0O1m8M8lDInYG1
         8mRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nWdPbRlvSPLucDlqEWJmrYAqXD0vfPf0ZvhBFuu75UI=;
        b=zTOANyAt+s6FCyGVAgQ/5WgJh3sKnkFIck+GA+bPbG9Ixitwfk2GJNP+BzctovUnxq
         aaOZvop05EXHQrm0bNO+8dGy76oem1Ap4rwGd3uhxGMM/cJQ0ffivV6zlTsY/mHZtDod
         WtQxpfSAGF3B/E5Ea1kbmHBV5kIECzENC8ZcGiVk9Xma440PRV5d+lNR0i35r53MBvvK
         OaJovm5/fiULAa5y28hA84ANh/qxB8bgkQ2SwYWwziUP2AzY34G6Mw8lmRV1EcdmSJ+Z
         iOyo4arCtE+IxfhpDFcrFJSgrWxHaFd+FpLmoriFIqDZuw1a6kzTCfzlqM5YseWBlTny
         BvGQ==
X-Gm-Message-State: AJIora/DcaeyFycnEnq0GxIbQ4dx6hldfVWe48/Jw3RQL0Ze29oM0a/M
        Y5ihRiJmAB4mIkyTzJjKKJC2dg==
X-Google-Smtp-Source: AGRyM1tPHxf5M4w9IAdW80R6nLweCYAoDWZqQAXW1cuBhzkE6P8y62w89IZxfPSCr3Dxdet/P7IV4g==
X-Received: by 2002:a2e:bf0f:0:b0:25d:4594:6bba with SMTP id c15-20020a2ebf0f000000b0025d45946bbamr12822593ljr.116.1657612022443;
        Tue, 12 Jul 2022 00:47:02 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id l5-20020a19c205000000b0048960b581e3sm2031929lfc.8.2022.07.12.00.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 00:47:02 -0700 (PDT)
Message-ID: <d93e55fa-3359-2609-aad5-c80eca78f380@linaro.org>
Date:   Tue, 12 Jul 2022 09:47:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [RFC PATCH 3/3] arm64: dts: bcmbca: update bcm4808 board dts file
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>
Cc:     kursad.oney@broadcom.com, anand.gore@broadcom.com,
        dan.beygelman@broadcom.com, f.fainelli@gmail.com,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        joel.peshkin@broadcom.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220712021144.7068-1-william.zhang@broadcom.com>
 <20220712021144.7068-4-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712021144.7068-4-william.zhang@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2022 04:11, William Zhang wrote:
> Update compatible string based on the new bcmbca binding rule
> for BCM4908 famliy based boards

Typo - family

Please explain why breaking the ABI (and users of these DTS_ is acceptable.

> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> 
> ---
> 

Best regards,
Krzysztof
