Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 542595A6656
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 16:32:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230096AbiH3OcV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 10:32:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbiH3OcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 10:32:20 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A049CB2775
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 07:32:18 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id m2so12031000lfp.11
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 07:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=C9hMrmnRCeOxtJSBU+xDskBEasH7EBMzC7Z87lKYcrk=;
        b=C3y1zxG+qaBopF3ylPypT8F90mDv06KIyA3ct8e05qPAV6oqFEh+T/cKlYXpjIC2v1
         47pSwcytxVOu/yzUhlM6cipUVH19dgIxO2eIimscfr3Mxv3GvRMr5ywhx643sJ/SZ/n/
         uHyaJ/ltJdqcpnaBrLdUl8+cJVKj788odF0hsZTvQiAP4Cu5tQmyjNl0bvteGdgnVUFj
         MyYvD3t2ThHSSzJ9PSLxvXRy/g7dmAQTUMujn+LOHJ7k2D5vYT2SQDbQUlETvVWg6kPU
         k8OLJlDQJ00GWKlJapuwerMSw/S72Q6IhPBghfCCot63BSjlFdzMgK0mFxbHy4TwpPsQ
         DKWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=C9hMrmnRCeOxtJSBU+xDskBEasH7EBMzC7Z87lKYcrk=;
        b=WKklVaBHQEvOmhZ9Tuayy3lE4/dwPxt86594NcSAxIqvTzwT616brdK4rwlLAsWw1N
         8wIydZqS7tGbtDTjoG0ohD6VnG37b9HUhfVS12mhYtAYn2QxGUFKgwUHDEiW0YvlU6au
         kX4Y3yxE9nHcgShB0wfSLTtgKWq7qAfggfFsExY07GMA33iHxrAZDj+gFOCqF54gGLTz
         zYXpV5n6Z8/M6jKpkVMVchjpsuijFs2oKaOCXoTZzKNSa/OGscUtEOhOgz1YqcsexXqf
         cmXR266VcXsbi0Pyr+eZ4yynj9ktesqUhYoDszhcehbqKjWsn2vt/sCI3L7uIoRjpSEr
         Q+eQ==
X-Gm-Message-State: ACgBeo37Mi1uApntoOl5qFE/wRzRIX9LNhBKJMwHfUzfZ0d7x/TOtUNo
        qWBBA9n5FJKTbbs+0yrvkEbez4rxcbCS7LLM0ZE=
X-Google-Smtp-Source: AA6agR6RrgJXyfpzXFNbCthcWbJ0OhEgloy1Szcy3cQyXNHecr2Pdwq6I15ti8Pop7FAZwJtlo6rHQ==
X-Received: by 2002:a19:e04a:0:b0:492:f96f:85b7 with SMTP id g10-20020a19e04a000000b00492f96f85b7mr7387760lfj.141.1661869937015;
        Tue, 30 Aug 2022 07:32:17 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id v3-20020a056512348300b0048af2fe78c4sm52684lfr.3.2022.08.30.07.32.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 07:32:16 -0700 (PDT)
Message-ID: <7ed1a3db-e0de-fd2e-3206-0a95fed3052a@linaro.org>
Date:   Tue, 30 Aug 2022 17:32:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/1] spi: spi-rockchip: Add rk3588-spi compatible
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20220830124452.33561-1-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830124452.33561-1-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 15:44, Sebastian Reichel wrote:
> This adds a compatible string for the SPI controller found in
> the RK3588 and RK3588s SoCs.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
