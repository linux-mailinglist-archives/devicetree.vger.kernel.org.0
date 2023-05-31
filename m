Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AE9F717743
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 08:56:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjEaG4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 02:56:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232276AbjEaG4Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 02:56:16 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E1DD113
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 23:56:14 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51480d3e161so7262471a12.3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 23:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685516173; x=1688108173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sRl18fIDPuzFUH5L1KBy/4v4z8SL7j1KIPt3iFyBt8w=;
        b=O67yMsSBzjied33O/74JPXPKICCdj2Y4FkUaBPd8DbrXNfI+24UFdTQv7J4qNGC3h1
         6sZjBvqHChuKUExcDwsTZ6ZWQrEHxe7L+tN2Sp8AHk3rf8hxA9SGrJbPLtstlemCZhqD
         qCsbkpMFuRMJY9jQUSUHNzN+g9NWA6zRrufUVYja8+DSIBNG/wJchDSf7fYYdWChC564
         sXgdvwG1zVe6olx0jLzHcpujOiyu7VLhgtTFINTHbtNWZD4i32XI4qpZBnhi3i3lutaO
         fVdAqCx9vhyUOeOYtddo7iFjrJeatDKy3sRGlfufpD3jt2qOukADyD2I9EYgJXNm6O83
         YF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685516173; x=1688108173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sRl18fIDPuzFUH5L1KBy/4v4z8SL7j1KIPt3iFyBt8w=;
        b=bP6RIebmv5Q1rH0F9nvLabTbPzK6abvJgmnmgFHNpxnU7axXDdzV/VYWgTNvDjv63G
         GvvTO5O6JDJZB31E7Fjqx6bm7Mxp98rgrNHi/JSuuWRBTA4eXEOrr9VNiKAx4ocjOUi9
         Iy78vB777Ij3XPL7X1+080pU56KtbOXYnBAEZ9I1MyD6NUeURtB09JjDU7D+lOAp43e+
         1baqZ6UAbUNy/Up9LsYu1mET4DDjxYQxxqlq+KJvXWXEPD6q4K2n7TWgA0ZdRgTz0Axq
         4lWPvW97R+Joc6kC9332tPqBqtOdf4UxCVtLp1Wl8VkhsvyxRygPDWv+k1R2+GD3BSWi
         g3Vg==
X-Gm-Message-State: AC+VfDyb7G1QE1QxWiAouL10fShQZzhzd2CHdyOOUo1sA6TAkY8j2x8E
        JiVkvCNmY/NDxsXZ0/oV6buL1g==
X-Google-Smtp-Source: ACHHUZ53PhvEeZRc4PxzrRyja66TSVSRwEUfAVi5qVfcNtueGY6bjR+MKSR4Fi50FMpWZqypa4WQEw==
X-Received: by 2002:a17:907:86ab:b0:96f:d345:d104 with SMTP id qa43-20020a17090786ab00b0096fd345d104mr3377494ejc.38.1685516173106;
        Tue, 30 May 2023 23:56:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id d21-20020a170906371500b0094f1fe1696bsm8372046ejc.216.2023.05.30.23.56.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 23:56:12 -0700 (PDT)
Message-ID: <f343458e-519c-1e5c-e48f-acfed2c00ad7@linaro.org>
Date:   Wed, 31 May 2023 08:56:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 1/3] dt-bindings: regulator: pca9450: add pca9451a
 support
Content-Language: en-US
To:     Joy Zou <joy.zou@nxp.com>, ping.bai@nxp.com, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230531065724.3671795-1-joy.zou@nxp.com>
 <20230531065724.3671795-2-joy.zou@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531065724.3671795-2-joy.zou@nxp.com>
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

On 31/05/2023 08:57, Joy Zou wrote:
> Update pca9450 bindings.
> 
> Signed-off-by: Joy Zou <joy.zou@nxp.com>
> ---

Subject prefix is: regulator: dt-bindings: pca9450:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

