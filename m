Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A83877664CD
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 09:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233366AbjG1HIJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 03:08:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233887AbjG1HIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 03:08:02 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 152BA2122
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:08:01 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so6390848a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690528079; x=1691132879;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4G0Yt706fhpMXSCAGIIvcxZcJifzL+wDvoJT3SfXuLs=;
        b=ZORaTNGv+CvRM8RV7qTkxrlIZFHoOtX6+YxTu3uPqwJG63mLmbaArl6KZ2PC9+Y+I6
         yxYI6a6fwnQG3ezftJEprJ0ZRA82Gppv2qHWHrOoOBSZMG8ztESAgIMXzFCFuMOnyY/a
         tA5nRupTSPYJo9VspBM8HD+bj5RzSWZ3hFFZJ3INgqlBNXZ9MUSRKkIfwQIWynRzuhUo
         F09XbNC2Vba9KJ/SM+ag4+sawgepaFIfOSiFxn83Xs63D/Rt08F0WQy8zpXR5PEqBjpT
         7Amk1idRZj1h/86kCm/ii/GQtgfzrCZLiDETdB6uUb16ajBWU0JPlhPiAVDURlqYm9xz
         rj4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690528079; x=1691132879;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4G0Yt706fhpMXSCAGIIvcxZcJifzL+wDvoJT3SfXuLs=;
        b=XNf02VKAuWpoITrdtN3hsB8OuLZE1FYf/G1asqRKyJBEIagXs4mxV1NUnNoQeEB1pC
         0D40eYeE7LFnRORp4HRorSlNBI3kKomXcQuYjVVM+V7B/iN2r4Tyj4NtwpMQttXtXZEg
         JRpn0uCCJdzV8dpYMNBmXO89cV6DXMPmxo0uqHIcejxwX/jFtVY0XPH1B1aPs6POztox
         hHdjkRD2xFKnqTrxVCP9nWaF7VbC697Im5rw16XcUaXVhrpnpqnyFfJPVBoAhanoFaHQ
         V3kDp3EsIOzcmV/sTQQdZGRF01GvzEPdh4KPuw3yYvokPfWLtur2LtG5VGie73n3502o
         RX9w==
X-Gm-Message-State: ABy/qLa3kp+UzkwA2x4nDCrDQjxFXormIZ3KrNJA8/hmNgJT1a39f+se
        9rsOVJdO8t+WyEym3K3diQZFyA==
X-Google-Smtp-Source: APBJJlHz5f+AGKQTSCC4NuB4nF8/XIA03njPLrbfP9DLWFV+SdA1EmituWiqyrdUrzBVJ812vNOFcQ==
X-Received: by 2002:aa7:d446:0:b0:521:d2ab:e4df with SMTP id q6-20020aa7d446000000b00521d2abe4dfmr1602220edr.19.1690528079497;
        Fri, 28 Jul 2023 00:07:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id y19-20020aa7ccd3000000b0051d9ee1c9d3sm1469817edt.84.2023.07.28.00.07.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 00:07:58 -0700 (PDT)
Message-ID: <43076212-f858-9414-0d50-a957dd344f09@linaro.org>
Date:   Fri, 28 Jul 2023 09:07:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/4] dt-bindings: Add bindings for peci-npcm
Content-Language: en-US
To:     Iwona Winiarska <iwona.winiarska@intel.com>,
        openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        Tyrone Ting <warp5tw@gmail.com>
References: <20230727202126.1477515-1-iwona.winiarska@intel.com>
 <20230727202126.1477515-2-iwona.winiarska@intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230727202126.1477515-2-iwona.winiarska@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 22:21, Iwona Winiarska wrote:
> From: Tomer Maimon <tmaimon77@gmail.com>
> 
> Add device tree bindings for the peci-npcm controller driver.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> Signed-off-by: Tyrone Ting <warp5tw@gmail.com>
> Co-developed-by: Iwona Winiarska <iwona.winiarska@intel.com>
> Signed-off-by: Iwona Winiarska <iwona.winiarska@intel.com>
> ---
> Changes v2 -> v3:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

