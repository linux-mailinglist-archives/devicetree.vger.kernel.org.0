Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0BFD650929
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 10:11:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231682AbiLSJLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 04:11:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231511AbiLSJKd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 04:10:33 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 014C6DF8C
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:10:29 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id q6so12673023lfm.10
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 01:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gQ1NW/A2xLQrS1BHu6EX59q88BeWmkMFIxkc8CBXEbU=;
        b=p9Y3ctFYbgbc1oZ24Gp9fQDVeZ0VFupfh9D48DjhrinXnDSExEIy5m01uvQSL6cSdp
         pHKFpMSpNmS9s6/XHOGT+sBFsdKZnpjaQg9ZCVTeaYXwxcvGsnPyRQ4rZrxYAYd0HeH8
         eWWB+ZkoI/xJmHYwYvTF+NR5y4BjWCrvnnGUTg2YXtp09HS4FsKhwIYU9MCHE7Y6ATCw
         +JyyrZn99k2SOdSzHPASUbtn73XXndb8Nt8xglzwPEe3L7WgC4l912H1j/Wk4p7cEjBz
         MAZUXhFTTX3mmkQYvO9fQDnqrMa2qN90/1VPeeh+55gdxS+UKztUf0ouljL9boMjE6Tw
         DXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gQ1NW/A2xLQrS1BHu6EX59q88BeWmkMFIxkc8CBXEbU=;
        b=5yzSEBo77hSjw3Sl5vPLwf/8MmiwRD8wStSpmLjNfvm89lFspWANX9CMt29bvZyMPj
         uozSnnm80gkgkjniTWH/8h1ck1dyLcq/QrSsxXZVfMIYFtvaRf/BkW1J6MVgUfe4+/RE
         mkdhi2ysRje5NiTp/+you2aUfYjvs+Pv/10mCbpGnVuXEOswAPT8P0qTDlJh/NjHbkLh
         SMbUbiUZEr1vZ99RkxjPVS7vNORJj2qQqKlza5CEDGKf3iRQFWcbQKpHJT4j/6UHhDDs
         3Sk1PWK8kJvxXndeqKm3VotBJo5aKz1qqQUNmjhaSI8pqhZQMaWMrfCajdMtrRE6BPvE
         nlvA==
X-Gm-Message-State: ANoB5pnJ4nNKw1aWNz/tz3DkZkFUSTwznn5oeRe09w9cWJWsFbYbSdMI
        lU3mWPuV93lfJYpMR3eO5HagEQ==
X-Google-Smtp-Source: AA0mqf6zlYh0LaLwKofLxxHfvMPrAuo0Tfzcycec4QXBMD3CcdO1xtteZ9ZGoA4Sppe/NZ26nXnm3Q==
X-Received: by 2002:a05:6512:a94:b0:4b7:113:9296 with SMTP id m20-20020a0565120a9400b004b701139296mr13829973lfu.14.1671441026863;
        Mon, 19 Dec 2022 01:10:26 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a5-20020a056512200500b00498f570aef2sm1051788lfb.209.2022.12.19.01.10.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 01:10:26 -0800 (PST)
Message-ID: <168f43e4-2d50-a1ae-ccde-c617cc675aba@linaro.org>
Date:   Mon, 19 Dec 2022 10:10:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Plus eDM SBC
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
References: <20221218051800.495932-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221218051800.495932-1-marex@denx.de>
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

On 18/12/2022 06:17, Marek Vasut wrote:
> Add DT compatible for Data Modul i.MX8M Plus eDM SBC board.
> This is an evaluation board for various custom display units.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

