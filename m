Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88F646716D1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 10:00:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjARJAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 04:00:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229834AbjARI7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 03:59:13 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2248F768
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:17:14 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id bk16so33048192wrb.11
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z5CDdoCUnCUysD4OwVm5x8AKmJcxld25F1lQaxRj+UE=;
        b=EsaEmOoj/k5hWYVjzW4wymx3f62KDXfpdzhsx0vO65rwsFrA+poJW2jsK6zGT+xXoH
         rbq/Yms8ZK0EGiUaZqM6luB0uS21dzPoPAkOVY9u9y9ezrG+9wCSnuQ5SQHLnhM3GgVN
         B5w7wMLLDYaHUBH8SdHPka1xEFAgmgFAcaAzkVWDMEesOhVTFnosQ8eX6reNJf1igI4A
         tFA4KJpQvkiM5GNLdqooZUWLarVAEqR9yOg0Mp+cMJqcLaxsFs61HCJqGE3fbfIPk1Ha
         McC6WDlEKw1zN6WKcBI58mxObiE7nYHTjs8WGvpYgo0LU9iSXC4xsPAUdicr5BWW7o4n
         MKEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z5CDdoCUnCUysD4OwVm5x8AKmJcxld25F1lQaxRj+UE=;
        b=zW+aDzblKHveLZA27nWos1SGSdm5X0VxDQoLIjI7NAlkiRbTfsaT4sh8/KzoE5D2VN
         jZ8f0FDrBwde09kBuxUeSKJHm6WEOrMe5wt8wkjmLwJAT6MPixnRSKShZAOlkEK9Nht7
         r3c/A/zrcyf/w2hEBbEsynF1RhQ/hwde4o3A35hZlTKSxMbhgk7J0x4MHmoD9UzogAcq
         OLfq1jin/CrwFKXCrNAcijEH5/3sk6Mp9r7BAFWB0FEOrlwTjxnoRbYejV1a0WxZ3Xoz
         dNxcyJKmvmH1lFfZSa2ISYjdtxoZLDPXLMIgZ+TiXvYpC6Ik2/Yp+OdcBoUd87Iq9YWE
         2h5g==
X-Gm-Message-State: AFqh2krlpN2EB81xZhyc6hW0Jr4Moco3Dl6xlJqXb0cho3sarU8L3cxS
        uX7AL5zZ26+6lf0f4Y3GriAN0w==
X-Google-Smtp-Source: AMrXdXsrGhBFxvpmGjjvtTlnHTlkVNbgpbSMNOaiPhI0paRO2JgxMEJbIW6PDkO2ecInUF59pt+Kww==
X-Received: by 2002:a05:6000:1f0f:b0:2b4:e5e:c0a3 with SMTP id bv15-20020a0560001f0f00b002b40e5ec0a3mr1566357wrb.21.1674029833248;
        Wed, 18 Jan 2023 00:17:13 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o7-20020a5d62c7000000b002bbeda3809csm24778523wrv.11.2023.01.18.00.17.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 00:17:12 -0800 (PST)
Message-ID: <5378f107-7676-d8c6-5bd4-d82fe12fdbe5@linaro.org>
Date:   Wed, 18 Jan 2023 09:17:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/9] dt-bindings: usb: Add device id for Genesys Logic
 hub controller
Content-Language: en-US
To:     Anand Moon <linux.amoon@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Icenowy Zheng <uwu@icenowy.me>
Cc:     linux-amlogic@lists.infradead.org,
        Matthias Kaehlcke <mka@chromium.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Johan Hovold <johan@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230118044418.875-1-linux.amoon@gmail.com>
 <20230118044418.875-2-linux.amoon@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118044418.875-2-linux.amoon@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 05:44, Anand Moon wrote:
> Add usb hub device id for Genesys Logic, Inc. GL852G Hub USB 2.0
> root hub.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> v2: - drop the vendor name from compatible string.
>     - drop the -OTG and -QFN76 suffix from commit message.
>     - drop the GL3523 USB 3.1 root hub device id.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

