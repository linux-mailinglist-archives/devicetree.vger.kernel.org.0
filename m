Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11511799D8B
	for <lists+devicetree@lfdr.de>; Sun, 10 Sep 2023 11:42:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346582AbjIJJmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Sep 2023 05:42:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239000AbjIJJmV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Sep 2023 05:42:21 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6279DCCF
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 02:42:14 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-401d2e11dacso28542395e9.0
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 02:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694338933; x=1694943733; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NZYlliDbp6ONDZ+/JtQ8wHgHLQWxnEO9jLvO0k1fgCs=;
        b=WCXEY2QI2eM+7ZsocYCn6Xs41sez8KzaUvnvk50wftARiOnlY9Ut+27telbF/nY7S8
         TeTchVoGVC+IvVxjGDXAOHtvfEHIiYVUjU5cvrsOSIEZo3OcFu1FIPK+55U853H3SJfC
         Te4KzNU6hYuPtUmeUocoEOgAqsbBVcRCMfjvAXaZ+J7qVgVAQODmszsAmHN3CsX3dwHV
         2a3UvWnfj189cSm3tqh8KaMRO3u97PyjTwb7TJZwq4ZmH/ayFeDIL7dHn5BBVPeeQ3vy
         WZh55GAODlLTR2V25ic6kG9TvN6h1Iisze2OJpfVluhrFhnTHqK+AVe9boMOkLkpmp7J
         Ga1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694338933; x=1694943733;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NZYlliDbp6ONDZ+/JtQ8wHgHLQWxnEO9jLvO0k1fgCs=;
        b=MRfHcyzR2eDuklYdPhyaKlhwpQUHysOaDklpDpgXu1+VjdA3KwHPe72WddJfdR1E5f
         FBBfbrS4vLvdli6Fj4aCec+2/8/kVk4ykwrNdR+40rp46wQcQ+sUJApFiLFw53ATQZ/w
         hElOvYKfN9CMGfaFKZNR3HsY6XZfsygMcmCb+1BTV31DtOXE81mMhMULwsNjmO3/uTdr
         uoeQlisLH5y524whgsXlqgBJC+nif6CQthoDd1nMxTpnUdqD3vYFH1qggixbzFWphYWV
         KwhyuEP9Mxa2tZ35fPoQ+grwE7ojawZr4IfPiYB+Rynh6IuYMR9ERCeZEBbadMdjf4NI
         85Vw==
X-Gm-Message-State: AOJu0YzTye9PS+WZPm+leJOrPLvaxR9NN5L2Ym67n6rYe5uRWVxsLUsw
        sAmP3H9aAxDP3CStA8SRFeuHi4r622w0G9q6mNk=
X-Google-Smtp-Source: AGHT+IHYi3pkOMaR0aTCulpZ89o0cibEZNHObjK6hjLqBOL9uPmdkYyGl6SPyM4N2oJBAEGpdP/aHQ==
X-Received: by 2002:a05:600c:4817:b0:3ff:a95b:9751 with SMTP id i23-20020a05600c481700b003ffa95b9751mr7271888wmo.7.1694338932883;
        Sun, 10 Sep 2023 02:42:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id 23-20020a05600c231700b003fed4fa0c19sm10094526wmo.5.2023.09.10.02.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Sep 2023 02:42:12 -0700 (PDT)
Message-ID: <d05d7692-ca95-2f65-1319-82892b53949a@linaro.org>
Date:   Sun, 10 Sep 2023 11:42:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] arm64: dts: imx8dxl-ss-adma: Fix i2c compatible entries
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20230909164403.1084032-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230909164403.1084032-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2023 18:44, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Per i2c-imx-lpi2c.yaml, the imx8dxl lpi2c compatible should be:
> 
> compatible = "fsl,imx8dxl-lpi2c", "fsl,imx7ulp-lpi2c";
> 
> Change it accordingly to fix the following schema warning:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

