Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF75A6782F1
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 18:21:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233641AbjAWRVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 12:21:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233640AbjAWRVL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 12:21:11 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A8BFDBD9
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:21:07 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d14so7821852wrr.9
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0NkdC0QU+NJiZy30gFHK5froje5ppy8GnCGOO6YlT/4=;
        b=dClCrPrAvp54tBfhhfmEe/L8Zq40/1O1h4+Daf0GiIhH8CbbDOJOdG+RyQMM32PYuH
         t76G9YX3mGQamZMp8n02Xy3UjANYoSKjqO7uc4WiOmUX9h/9Ssre8dXjYvBLHTdRH/H3
         6DF5k04yTCs8oFvjmvJr4kfiAOKmwMfJTUG+y/8epn9RQ/h7fBJiNy/MUJ8AC5WeJc1d
         bqABbZoQbYFIbQzU8W6J7/yW8melDmt5H+0Tyd9GuWSBVHU7Q1HUL2cspFzvSu3Ic5vT
         +QTL/rRZSnwcdYY7cbIef2bgooLiJxEsf46MCZGXNKdnqWyVfKamOs/LJQ7RSrsit+Ma
         ebzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0NkdC0QU+NJiZy30gFHK5froje5ppy8GnCGOO6YlT/4=;
        b=hU1fEOTOS+eqhu1osYQmGBzF3Zb/U++p1OXZjUIlmJ4969CvTWhay7osC9toqb2GNz
         Mf4TRE27LKkVlGB7l9TuIGg44n7juGi20YfdX8tbr0YRjmwOIHplQi5p9c9l2fZEJVpc
         PHY08ZmSK1xi3C0dLiDekyEPWYVGkke9io7X5OQAuTdIWk7BtigfVpJ1mp7BPZR5JO9W
         ktadEzw3SS0Fw2cuKQGZGnaMQRn13vUdxzsXzqf0wRcVZxoFjgLQSyufzz+5RvPO6BsY
         WTtm/DTZjr+sL6m6xqLMMmjSV+wYB+TYY3H/7zrwWhC0XxESq0YGMX4z0k5zMflR/sHi
         t0Qw==
X-Gm-Message-State: AFqh2kqs+gaS+eQBEfzDC1KdH9RqPJtIyy65ZaBQVN0bhEGTL4ysLGGh
        rRF98mT9mCgN8SRk+R3sVeFW6Ty2WRE6zjCx
X-Google-Smtp-Source: AMrXdXvfvK5Ywap57CpzY+BNz4ZHGxEh8B24cRx5n07QzAht67wttwtPkaqAjQv0g1sb1+glpHELDw==
X-Received: by 2002:a5d:4c4c:0:b0:2bf:9498:a9b3 with SMTP id n12-20020a5d4c4c000000b002bf9498a9b3mr10557888wrt.13.1674494465715;
        Mon, 23 Jan 2023 09:21:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c14-20020a5d4cce000000b002426d0a4048sm5333462wrt.49.2023.01.23.09.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 09:21:05 -0800 (PST)
Message-ID: <1ece1aa8-b223-0088-96c0-a1b2a7c4827b@linaro.org>
Date:   Mon, 23 Jan 2023 18:21:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/4] Revert "dt-bindings: vendor-prefixes: Document
 Chongzhou"
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Tom Cubie <tom@radxa.com>
References: <20230123164018.403037-1-jagan@edgeble.ai>
 <20230123164018.403037-2-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123164018.403037-2-jagan@edgeble.ai>
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

On 23/01/2023 17:40, Jagan Teki wrote:
> This reverts commit 90f86d0c617d9461cb00f4d8e861eda28011d46e.
> 
> [why]
> The initial datasheet claimed that chouzhong designed the 10" DSI
> panel on top of JD9365DA IC, but later Radxa mentioned that chouzhong
> is the manufacturer. This concludes that the actual design of the
> panel, gsensor, and customized FPC is done by Radxa.
> 
> So, drop the Chongzhou vendor-prefix as it is no longer useful
> anywhere in the bindings.
> 
> Reported-by: Tom Cubie <tom@radxa.com>

If it is a real company making real products, we can keep it. We might
need it soon anyway.

Best regards,
Krzysztof

