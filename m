Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8C5A6294B2
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:46:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238122AbiKOJqN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:46:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238134AbiKOJqA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:46:00 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E7401FFAE
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:45:58 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id g12so23619466lfh.3
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ip+ISJDAcRTM2ug+Duw+wqq2o/8yZP4Icjagift55aA=;
        b=RGMas0JKwW6JdI5Hdx3B6SyrvA9IiiTRGXDFwvCHO2N60721dGjkxyB5FcI/mOIO/C
         W8wNpqQnPmReKfhyN8ITZMFjIB13qAElu1DfcQN+vKxbPScL8TmvxvOmUMFDoSi3fhE/
         DOuvujOpPuXmaSJ1uH6dGIGS2cVRvVT++5PplZRhpQxS0voVHLXUTqCia9FKSxR5Go7S
         EWCT872gHmXqYVGILlpLpPU4ZJq+0sywRRB846zl/m/g7H/fmR3Xnd2GYxdwCDfx02vn
         Iv3EVERSxk9AE/kOtI0c2+KbO7O+HZ5ia7jb4VJQHuSiP0gbJWUIsIAig2i2Q6beMQ5a
         urqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ip+ISJDAcRTM2ug+Duw+wqq2o/8yZP4Icjagift55aA=;
        b=JW2MLAYW2xe7+eGmXhWzX7hV/6UFHv8naSCzagFS+PzSBlX0S6z/kxmQKBx+0BX+4R
         K3+QE7GhefOomA0ov2r2GRLCrLrnIT4gNgHxv74xAi7jooWMyRpsHj/y9dXzbBqAPHmE
         fzrai1fyZ4doALoa41D7X6yzchMdBvVJ9kPPliVkitYZ25heNWaoZTlWr91+1inq95x4
         Tt7sz1/UadDx1wrVkAWX2tXMn5zRkWhsGtstNlgFpj5tL9DPbgR0f8eArr0jqsQ0A+dt
         xO6IKWKynYQdLn9Vb7/N78wVARyUoEFwcZI0cDEF0tLVNE3rL/IHHqu0Pv2a8hxvkOEb
         xHJg==
X-Gm-Message-State: ANoB5pndyj0aZVFRzJGZTrUiodI9kJ5wbtg3NUDrfDOropaRVg/6fA+u
        oSwwQ+tNuwNgILChc8bWWez95A==
X-Google-Smtp-Source: AA0mqf6Zxkah72gQYNvUKzWMofrokvA0XwHdVi/kGdatNa7PbNXD1xN+922wNh/4l5cZQUa848QSxg==
X-Received: by 2002:a19:5056:0:b0:4b2:2cff:8446 with SMTP id z22-20020a195056000000b004b22cff8446mr5444661lfj.572.1668505556802;
        Tue, 15 Nov 2022 01:45:56 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a19-20020a2eb553000000b002776eb5b1cesm2441776ljn.8.2022.11.15.01.45.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 01:45:56 -0800 (PST)
Message-ID: <cbed5f5f-f372-b9ba-5208-62b50c61464f@linaro.org>
Date:   Tue, 15 Nov 2022 10:45:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 09/15] dt-bindings: mfd: syscon: Add mt8365-syscfg
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
 <20221115025421.59847-10-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115025421.59847-10-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 03:54, Bernhard Rosenkränzer wrote:
> Document Mediatek mt8365-syscfg
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>

I am not going to review this - please go through comments you received.

Best regards,
Krzysztof

