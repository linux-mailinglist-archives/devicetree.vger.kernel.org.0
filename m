Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4A076352E4
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 09:39:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236246AbiKWIjA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 03:39:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236610AbiKWIi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 03:38:57 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63320FBAB9
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 00:38:55 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id k19so20606871lji.2
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 00:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WWg6Ff6BH10NGuivQAe12p9c1TDwH/74TLSEqxl141E=;
        b=G+Y0WU2FKvs6wUCeKCoe+WBbu6w5r3al4pGIeCTDsKyiEahu1kT86Q19qMqtnZ/4Zt
         5ltUpKPWIvoMv8Ah9n0hMy/D0dZHormnBUfn5TDyKAW9DkYcZsb/QJJFKt/ZDGhWht2X
         t2VwbS28jdu3pYPPxOYdt452TZgh2lpzIiQryuCCxpk0oqjC5zldfSvt6JZL8ZDwjDji
         flxXKx9YaculyiHOiiVz2c3unz2qnhYkxntwncry9bOY0IBiJMP7xF21MCrNfuD/Ljvn
         UFPR941foBk7PEEfkpAPPLi1udI0M3vnQXhIzWUbUDpWnvRFvgmn3G8++TApL9yqusaK
         K9Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WWg6Ff6BH10NGuivQAe12p9c1TDwH/74TLSEqxl141E=;
        b=YjqJ37ZDdYiPVbZdUF+ZfuSrzHYXOHCn0vxsNgGEZ6cGfrqC8gv/dD9c76bmtWFWem
         HwRfup4FVKaoKqe3NNpOC2uQ9CzDJIZn8wJLx7ra2TdX+C2c1b3XTFL31VpefWhpIf81
         G60JQofHybEnGULkagfRx1SqdN2Okg254b+5iGgTjmTvLXcksffrQfwH/Cr5Hg65kYTz
         UZb7KBsisf8cuSzIjIlganvbfGhSNXDUAR0yktazHhUrUqZsvcdoimqy/sSscWx3tv8r
         pgffwUOw9a5icbV72BLR/+jFxnMuTHMYOQPHBKt+NDKaUPnawxwyNRKDC6AObi6jHjRU
         5mjg==
X-Gm-Message-State: ANoB5pllRr8j7E30Kcl2Q4OIyIuqX/V2XFWEKweaPDS7rMy/QTmgc9LQ
        yslM9WVUiPNn6ORYYX+a+l/bAg==
X-Google-Smtp-Source: AA0mqf5u75+G9Siks12lr8P8mRmKZeK2sOP85dyIcPznnELW5X7sGWzwPjD1FaHES5bhYZ/oab6Jsg==
X-Received: by 2002:a05:651c:1105:b0:277:3dd:e32e with SMTP id e5-20020a05651c110500b0027703dde32emr8018766ljo.467.1669192733608;
        Wed, 23 Nov 2022 00:38:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2415a000000b0048a8c907fe9sm2814452lfi.167.2022.11.23.00.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 00:38:52 -0800 (PST)
Message-ID: <a141f08c-18e4-13b6-105f-b8e54bef61ba@linaro.org>
Date:   Wed, 23 Nov 2022 09:38:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 2/2] arm64: dts: fsd: Add MCAN device node
Content-Language: en-US
To:     Vivek Yadav <vivek.2311@samsung.com>, rcsekar@samsung.com,
        krzysztof.kozlowski+dt@linaro.org, wg@grandegger.com,
        mkl@pengutronix.de, davem@davemloft.net, edumazet@google.com,
        kuba@kernel.org, pabeni@redhat.com, pankaj.dubey@samsung.com,
        ravi.patel@samsung.com, alim.akhtar@samsung.com,
        linux-fsd@tesla.com, robh+dt@kernel.org
Cc:     linux-can@vger.kernel.org, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        aswani.reddy@samsung.com, sriranjani.p@samsung.com
References: <20221122105455.39294-1-vivek.2311@samsung.com>
 <CGME20221122105027epcas5p2237c5bc9ab02cf12f6e0f603c5bb90c4@epcas5p2.samsung.com>
 <20221122105455.39294-3-vivek.2311@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122105455.39294-3-vivek.2311@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 11:54, Vivek Yadav wrote:
> Add MCAN device node and enable the same for FSD platform.
> This also adds the required pin configuration for the same.
> 
> Signed-off-by: Sriranjani P <sriranjani.p@samsung.com>
> Signed-off-by: Vivek Yadav <vivek.2311@samsung.com>

Thank you for the patch.

Looks OK. It is too late in the cycle for me to pick it up. I will take
it after the merge window via Samsung SoC.

Note for networking maintainers: please do not pick up DTS via netdev tree.

Best regards,
Krzysztof

