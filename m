Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99DC460AA1C
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 15:31:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbiJXNbP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 09:31:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236030AbiJXN3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 09:29:25 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FF3FABD69
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 05:32:20 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id b11so1905411pjp.2
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 05:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VOSw6HyzDXd6T9bIHKMemW84XmwEX2OWIHL3hg014Hw=;
        b=rwWxulayUNkvSg6kDFf08uTBPpUSZ/IYeVBnQiCr9k+T1YRm5WyitPxgxeJN9HbCTW
         4+a0ELQ0vLiBrXX3O61fzgM2rHm/WV61KEB6bBZnElFxsNruJ6ttFnbct4WfXp3M5pEO
         +83QmZGzW4O+/OMK1tUYo+4EM9XK/pcYlmKcPmEH1X0Ny6q9WwVOh3aMa+4QbocL7L+B
         o47VDcFxPLSccrWy7f3m5e4ahXoZVDI+yYdcQ9+zMWrb+izByH+MkXsq8TDdVSNyGYsH
         459wFqHKbYJ9GG2GqM5DTmbD13gtwRdz7J1bRtjCoomInEI7m1LM9+U/78jPJsuRPAoI
         Z9rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VOSw6HyzDXd6T9bIHKMemW84XmwEX2OWIHL3hg014Hw=;
        b=qCyHOk9QNMIU2ab8xylJogWj1D9UlixtEwFGIBQSvDSl7Qm6aeMTznssUIW9QIsIp1
         An0/Skwpx/m1XCh1l+v4TPzWi7azeTzezx2649P82sTi/rTZDVVohv5uF5ngop6yYmbr
         9eYNSoM8wCBN0n4Xsod7L1VX8MpZGblAJAM/HnqfFca+ZTrKwRgrkpzJXOS/nRYvr+HI
         43IPlOtuN13tcV9R0wE50MUd8ZyE4eJplFuzFmFPerUT44I1h1739W4E+5lZnodSRb/C
         cn+5uPxkEjgthaS3M7K8P+qQVOC6MRrJXKfBvkXm+nVQWPI0BNkm0n+cHCq+j3KdZM39
         IGAw==
X-Gm-Message-State: ACrzQf1iGvbjmcoDN6034G+UfQvN4QgvR2SdIPTDWyc9RRy/UzbT3KUd
        MdT1hiKkddf7z+Rh6sHZ/W4hNwe3I1sjAg==
X-Google-Smtp-Source: AMsMyM5xsPJvTm6ytp7WbglXJWWL6VoIXSqpBEGU/DXhNFgkOJaIi2tzS5QDxbioL3bw+F4X/JN4kg==
X-Received: by 2002:ad4:5949:0:b0:4b3:cfb6:5ef9 with SMTP id eo9-20020ad45949000000b004b3cfb65ef9mr27894806qvb.103.1666614108923;
        Mon, 24 Oct 2022 05:21:48 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id y9-20020a37f609000000b006ce7cd81359sm14467492qkj.110.2022.10.24.05.21.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 05:21:47 -0700 (PDT)
Message-ID: <08cb81ce-7ebd-d79f-3f5c-4df596b5cb95@linaro.org>
Date:   Mon, 24 Oct 2022 08:21:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v9 3/4] ARM: imx_v6_v7_defconfig: Enable the cyttsp5
 touchscreen
To:     Alistair Francis <alistair@alistair23.me>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     linus.walleij@linaro.org, s.hauer@pengutronix.de,
        robh+dt@kernel.org, andreas@kemnade.info,
        krzysztof.kozlowski+dt@linaro.org, alistair23@gmail.com,
        dmitry.torokhov@gmail.com, rydberg@bitmath.org, shawnguo@kernel.org
References: <20221024111017.43859-1-alistair@alistair23.me>
 <20221024111017.43859-4-alistair@alistair23.me>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024111017.43859-4-alistair@alistair23.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 07:10, Alistair Francis wrote:
> Signed-off-by: Alistair Francis <alistair@alistair23.me>

you miss here commit msg explaining why you want to enable this.

Best regards,
Krzysztof

