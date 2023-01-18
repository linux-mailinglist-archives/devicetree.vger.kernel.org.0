Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80A82671DB3
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 14:26:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231473AbjARN0i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 08:26:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231247AbjARN0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 08:26:00 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C1A09EE14
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 04:52:47 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id bk16so33802445wrb.11
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 04:52:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=57DpON8R2cRRKXt+MXDD2LTv4NIwhe53/eVvkaI82/I=;
        b=LxB9QREWKLvQluhYSvMbs2XE6VYKnLxi7tr54Xpo4XU89nbaJTRMb5eN4vXgePFeoR
         WNG0I15KU89ODKX5zyA0ePiaaGUzF/1bD3nKGlUGB5944c4HODREhjQIsHZXxPyboA52
         0EToiwslTum/mH4AmaHX7vwl7DLOgrmbsezbnysQQTEulcWU5AG0hMZgsQNjf07DsrSJ
         mVer1JrQx5AV3H0EsXMxMWv7ki5JvfeNDi3UH8jM9bGRoKLpaaBCo3beODxo0AjqYxPa
         4WDYt97xljkU877lHdUdEkP0vdxa9E/lwXFR3sO0MEbowe3kW3KXp08tuUbB9oQ/v7wE
         bWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=57DpON8R2cRRKXt+MXDD2LTv4NIwhe53/eVvkaI82/I=;
        b=gZhSI7CzT5JfklMa7BjDxuOOLlmrRUZ/qYdj/nuXtIA3CDJW1OUZjnrKOPDwLmiukv
         CZPOc2sVYM3icS0bOHkLY9q3TEjTdGVMG7xahX5n/E79CEBccbGj+VOovUWQijT6saoS
         Ml1933di0cn6cprZrAgf7zknzg2hZVYZ4slBtx1kz0WVVS/TWhYcMcSVmGbzAVROsjsU
         lLqGgc4DFcOXNNgTevod0lBZ/hzb0MMmRc8XO2sif61VoSFOeKg0fzV8Dt8AjeTfN4HW
         OF+lZmL084a0uMlVPf1f+DGtP8PkqyQSRZQdq5jZQdjTVW31ERgaJ+upJSsxAum9mu4+
         Cdng==
X-Gm-Message-State: AFqh2koBNZZ21YX+ZDl8G8ic5o40WWrpVzB568BDcvpvWxg0lt1Fjmz5
        K9rQVJDHsN0ElSumTRYn8Y4oOvuqS6X4fjtc
X-Google-Smtp-Source: AMrXdXuF7yXF1AVS5hX8xQ3aFP/q5oF1Uf4IhT0tDQhjTMJtEcimA4AYsWjTAL5QxyXipVcH4Spj0g==
X-Received: by 2002:a05:6000:d2:b0:2bd:e8e7:8580 with SMTP id q18-20020a05600000d200b002bde8e78580mr5353788wrx.2.1674046365749;
        Wed, 18 Jan 2023 04:52:45 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u14-20020adfdd4e000000b002366e3f1497sm31643917wrm.6.2023.01.18.04.52.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 04:52:44 -0800 (PST)
Message-ID: <edb8437f-960f-632f-4829-cb612648dc44@linaro.org>
Date:   Wed, 18 Jan 2023 13:52:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Gitlab device tree check
Content-Language: en-US
To:     Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     Rob Herring <robh@kernel.org>
References: <ZRAP278MB0254511C101A8D3AFEF9324FE2C19@ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZRAP278MB0254511C101A8D3AFEF9324FE2C19@ZRAP278MB0254.CHEP278.PROD.OUTLOOK.COM>
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

On 16/01/2023 15:00, Andrejs Cainikovs wrote:
> Hi all,
> 
> Right now I'm working on some extra checks for our Gitlab CI, and I'm a bit puzzled about how can I implement a nicely looking script that would execute "make CHECK_DTBS=y" on every touched device tree file. dts files are not a problem, but when it comes to .dtsi, which might be included in other .dtsi, makes the logic more complex than I would like to. I'm sure some of you might have a working solution for this scenario, and would appreciate if you could share your scripts/template. :)

You can touch files from commit and then make dtbs to get the list of
targets affected by DTSI.

Best regards,
Krzysztof

