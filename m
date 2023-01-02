Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BD5F65B545
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 17:45:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233439AbjABQpP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 11:45:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230120AbjABQpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 11:45:14 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C336B4A2
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 08:45:13 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id bq39so34471301lfb.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 08:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rVqQuVQCPOiYO1dU8dGWxyFL4WN4RC04R3gc0Olsf5Q=;
        b=P37AMU2e+Xb20EtsUCr/YG3yMoDoL6xU5CftE4/nXdb+kSfu+dNyH7+H+pwZINke25
         Sya+e3tZzVSnVoxyXzxY0I3tR1pzlL9cvSezjxVP/CYCDVR1LvUYMnOck76/5ztUMyND
         MCBm/AQl/jnuik1dAwrQelNEifyZa9tw+V4BuPvzaVlCS5bpXGCvsH3TPpFTt22udjTC
         WFSsAKdEvlRZRqyJk571FqLPCsqYXWu9cGsxoq7kL8WSTYtSw3CydAdkePQZgS8mdR+P
         yqooeer/zWGVtm0qvOgpCk82EtGDGroVlWjuBurpp9Jh/NTTjSPwhZ4rr+uhAN9cewWT
         B+RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rVqQuVQCPOiYO1dU8dGWxyFL4WN4RC04R3gc0Olsf5Q=;
        b=sFsBFOUWcvqi0eIzd+Sr+Rht09dPoJDqjMttopKhOJMe2xXx5HxBRKdPTzyLE9FEbw
         oaVHa5abaK69StYq3sjKw7O00BaFlEj36Tc0rkz0OSQv0ugpN6sW6C0nTgwzcdvKGQ3I
         nqTIuxHT029M7fOEaZPumxYrq1PEjOt5Yc+du0BwFesqNpjWR82gftz9xi6eagewj8aU
         2teyGiBLF4AmhVNwowxoRqzrKVPDoFtN90WVHHASPQORI1Dtxt2GM2b+9wGo0sjcRKkv
         xc2gHePW3JBypI60UcUxSBfueEIRwc0Hfy+a3P+7BUK540OH6Edb0rM+jE77SORW5lix
         0B3Q==
X-Gm-Message-State: AFqh2kqzRLH+ZAXRy+1bhPKnMOYCxqgdZlk9N3AyCmHVelRN5z+p8PlD
        uFjV2Slxq79AsvwbbiFBALBQwQ==
X-Google-Smtp-Source: AMrXdXtN/cSdgPJEu7Pd5yStGAsI0GmBJb6OX1v/KfqTg2vf6fL7Od4epvsjN3KjEy0KnvMEgw1LEA==
X-Received: by 2002:a05:6512:3b22:b0:4a4:68b9:19e1 with SMTP id f34-20020a0565123b2200b004a468b919e1mr13152025lfv.9.1672677911726;
        Mon, 02 Jan 2023 08:45:11 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h13-20020a05651211cd00b004a2511b8224sm4455876lfr.103.2023.01.02.08.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 08:45:11 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     robh+dt@kernel.org, alim.akhtar@samsung.com,
        pankaj.dubey@samsung.com, krzysztof.kozlowski+dt@linaro.org,
        s.prashar@samsung.com,
        Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: fsd: fix PUD values as per FSD HW UM
Date:   Mon,  2 Jan 2023 17:45:09 +0100
Message-Id: <167267790505.932878.15397748468342899542.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230102093247.59649-1-p.rajanbabu@samsung.com>
References: <CGME20230102093302epcas5p2d48e893eb8af30e4d78b1377e022ff3a@epcas5p2.samsung.com> <20230102093247.59649-1-p.rajanbabu@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2 Jan 2023 15:02:47 +0530, Padmanabhan Rajanbabu wrote:
> PUD values used for UFS, SPI and UART are not reflecting
> the default values recommended by FSD HW UM. Therefore,
> changing the same to comply with HW UM recommendation.
> 
> 

Applied, thanks!

[1/1] arm64: dts: fsd: fix PUD values as per FSD HW UM
      https://git.kernel.org/krzk/linux/c/32d0c06801172e258a66ffb5dfad7d5d2b9557a9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
