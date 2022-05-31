Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F602538E15
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 11:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245346AbiEaJ66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 05:58:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243144AbiEaJ65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 05:58:57 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47B0B5DA03
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 02:58:56 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id x62so4955565ede.10
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 02:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1Lh//yTGUbJi03monU+zFrkUN9l3qrNWeiv0qwPR1KM=;
        b=MVVRYI0ZN7SgTFaz8M/u06YGulvbFi62zDDqveL16HifTZgFBWaOwnMhkuxfYn8P+j
         WL52gYI9/y2DnkaFxlP8h9zAg37ru7axcu6UoM/ppAFX8L6/lWuCtYx+alWRh28Zn1r7
         dz54UR3QvN0NY3hkYETDMWeeWOhyhd19AENImdywvWb/Ie3thjvBTvm3EJPH9FhWpLCq
         dLZedltAZfb6lOoh+5BJZZZKdY3W5dKwBIiNGa55u4xLFNyGBTVpeK54TRKAYJ9Jvrt8
         QRWzktIT7LePgIAbsAvL6NGXISMzoBFmUsnrVz8uPk8IjcqjESaezNpttB0KjgY5NGqq
         XXqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1Lh//yTGUbJi03monU+zFrkUN9l3qrNWeiv0qwPR1KM=;
        b=ppRmJXcobgjyS0GOmnH32li7YXWerku4PLkAY2ArUuzrohpTLhIHIxpyqE3EkWt/hg
         R26J2LQYKDjQafN7V5cfBccp3nvyFg5LxZbTWGKNTR4gEzyVmOrsEiJZJn6Vu9nPRcZr
         Cx5Qstu9R+PekB34uA6ujQYBzDIvSulmMpym4vhaIvI1zhefwZt06DqYxnPJO7/OxIld
         J+cux5HXgfiQVRqx+akFAKcaZFl2liRrhupeYhN/BEt9KZspZDK6FX2hoyV/5uquLNZ5
         S4oMiBHzW7r8VgElCpPpguCYlNCgq+uI4YqC9utVmSKBFa43AbeeeuSkCzLYZdOXL277
         j5ew==
X-Gm-Message-State: AOAM531tMKGG1ANLktYQqvgsyU0LuwbRNJA1llqFIk4AXZyPsKGGHeea
        AlfzPg85829lBqsr/CbzosiEtA==
X-Google-Smtp-Source: ABdhPJy69vdQQFHMyE72a/U4IgyhyOR2N6lSQOXZujz+0wS6/e2q5DrHOVp8H/lzBSwKc7yAEfijLw==
X-Received: by 2002:a05:6402:3705:b0:42a:ba63:18b7 with SMTP id ek5-20020a056402370500b0042aba6318b7mr62888334edb.296.1653991134894;
        Tue, 31 May 2022 02:58:54 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 24-20020a170906309800b006ff99e400f9sm1161939ejv.96.2022.05.31.02.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 02:58:54 -0700 (PDT)
Message-ID: <d0904cb9-e765-f0f3-737e-bf365c1cf444@linaro.org>
Date:   Tue, 31 May 2022 11:58:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 4/6] dt-bindings: ufs: exynos-ufs: add fsd compatible
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        avri.altman@wdc.com, bvanassche@acm.org,
        martin.petersen@oracle.com, chanho61.park@samsung.com,
        pankaj.dubey@samsung.com, linux-fsd@tesla.com,
        Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012351epcas5p389e28e28a48f9bb14a52fc81c417296d@epcas5p3.samsung.com>
 <20220531012220.80563-5-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-5-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 03:22, Alim Akhtar wrote:
> Adds tesla,fsd-ufs compatible for Tesla FSD SoC.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
