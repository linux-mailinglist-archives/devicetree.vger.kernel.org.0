Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87FDB759318
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 12:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230392AbjGSKau (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 06:30:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231289AbjGSKaf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 06:30:35 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 720D8272E
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 03:30:05 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-992b27e1c55so866737266b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 03:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689762588; x=1692354588;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WYKICS704kD9PtU92fkBUyVsHU48WqaWA+RZLKCNWGM=;
        b=FQfy99c1KCMaGRIetKy7jxLRMdZK3v9rsQvfu9ZmIQUGdWny/tkmd63iehIcAlQc2g
         G6ClhS+AgS6CT8bZKuCU21l9hA1xXIZUin4LCggf3t6aKs6pnr+T/Z75njoFg2U2wm5b
         fUuiaI5AI+BXk+4cniuO2vKE7rcQYcI5NeOPrA+3YVh+lQS3//9ASi8SvSIP76bE0rGV
         XHLW0AvOiPJ/lzJYYYC14GQ5MLXQ60y/4VybeCJa+xq1h6rbXafJHQnr+yX2HMY+5f0P
         jJgmOmaS90BwBmo3p4k6XFsCPr7x1u05D2oDz7QYbs1PmmpQQORsEm26XyG2bYfjvGsn
         4MOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689762588; x=1692354588;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WYKICS704kD9PtU92fkBUyVsHU48WqaWA+RZLKCNWGM=;
        b=ii1Nm2dxJ9FxNx/6h8dHlghKeiB45KDQ3zhVMomTqp44hKciLQ+Kn+V+R1d6MnL5bX
         ifSm44CWxqt9NWC9M+/18vro8w5CXZBCtZfnp6zIcyavMtSZ6eLZ1UPOhVyWyfkvlglx
         OihDzY6pRtXzBoJHc2zri4KW180QuadMlKGhl1mAy7/fDIvV9gxG9NsmKjL/buUWXsvS
         k7SZpFQTMRkIELpLvmTkI+Z1+O++0Tyv6xu2guV/xnMFCYQ4trQtOzUBuFz1IJlKgyGn
         4fV2/X9YOWz2WN4IIctbAelkLqOdW3E0KO/rl4aG1eRhvKW6WLNzzT9BT6ghGzF5r9l5
         qfAA==
X-Gm-Message-State: ABy/qLY0kXY40OM6tw6P6mwXOI0/Bn+6gzHUVcAPr93YVD3hLFVTifju
        w925LJIzyMNJF1eb0ee/KGgy4g==
X-Google-Smtp-Source: APBJJlHbwks3MBRHNE3DXPbOv0VnHOqiWWpvuEJSNkYo5my6HtIg8X5+AbNKn9MxVffwxC3zfL068w==
X-Received: by 2002:a17:906:3192:b0:997:eab5:f1c3 with SMTP id 18-20020a170906319200b00997eab5f1c3mr2000816ejy.73.1689762588776;
        Wed, 19 Jul 2023 03:29:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id y23-20020a17090668d700b00993159ce075sm2123828ejr.210.2023.07.19.03.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 03:29:48 -0700 (PDT)
Message-ID: <93efae97-4d8a-112b-e137-2f413954c2d6@linaro.org>
Date:   Wed, 19 Jul 2023 12:29:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: ili9881c: Add TDO TL050HDV35 LCD panel
Content-Language: en-US
To:     Matus Gajdos <matuszpd@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230719102616.2259-1-matuszpd@gmail.com>
 <20230719102616.2259-2-matuszpd@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230719102616.2259-2-matuszpd@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2023 12:26, Matus Gajdos wrote:
> Add support for TDO TL050HDV35-H1311A LCD panel.
> 
> Signed-off-by: Matus Gajdos <matuszpd@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

