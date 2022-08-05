Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDEF558A61C
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 08:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237253AbiHEGup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 02:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239861AbiHEGun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 02:50:43 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FF04EE10
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 23:50:42 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id t22so2187322lfg.1
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 23:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=66UfauZYCfkJNNsyNRoqRfHJ1yRjlBq2lr8VN6yPnYQ=;
        b=kntF4zz2WvX9k1FPCp4lZcTZCZDqe6jfdRhVyqHBt9f2xiQk6qHu0du0OMLhk6VGZf
         hXgZ3OoxYeAki0lMtllgzijEdiK4IBthxl2bwV7OduXbL02u+k83tV6m+A4VFl9Rqkjb
         xVnZUPb4RQUAZv9xheu2DXKvFjDebfE+BGqsuVbCuMf5KP2TeSlBDmBrWXQwDVq/lY6v
         SYikb+uXPVuXpW3uhxO29op+B8RDQ2WRa5OrfwKAEd1tN+gIZR28hX58R0sN1VF3LAL0
         Rt2z89i5sV+FgfIawlOmeV57TAnmHDDRgZBGBK3Ijh1E5ByXVOvV2bb7wWn3WZ3R2BSR
         PWxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=66UfauZYCfkJNNsyNRoqRfHJ1yRjlBq2lr8VN6yPnYQ=;
        b=QA2GLyP1ZfGTy1ju/Fqa7oSOJM5fY2M8+BkwYLcFVjGTJO+FgjegFljHwwLAU7wrsd
         f0wcaLzMBhWGf2CIl59XUjL5bSenewarS3bZIE+6IcTMETQEyH4T1faatNsc2sHHgXv8
         z7VfwkqVlV4UHTB1XYSSpXOYOkEueGrS82lYcHFfOa6MezMHcsvF5LDWEJ/aCNRtgZGD
         CBtCVZ7u9nK4FvQp8gYyKlIslaVjIYpxq/dkq2+JGFm4QHgi+8nD70NP+zC1l56y4n0x
         qV9pSelFDOQP10sUMrqExtAid/Vr2v6jX7WflLPZgMq1SOcqddgNljdYdcc6rFV5dsQs
         G43w==
X-Gm-Message-State: ACgBeo1cQa/LAToZ+52fKQFx4YVC3afQIyVcSXSOMTHB3jgJ83yDYjvP
        j6FVzIXyMDlTF/7cb8kor3a2Kw==
X-Google-Smtp-Source: AA6agR5o32/q5DQZ/NN/pcoVwzwAt81SW1QvApCnN8Vf3TwHu3tNGA4wS69wwP2FBnHu2Z68Mu8WJQ==
X-Received: by 2002:ac2:42c7:0:b0:48a:e7a6:729c with SMTP id n7-20020ac242c7000000b0048ae7a6729cmr1743264lfl.565.1659682240854;
        Thu, 04 Aug 2022 23:50:40 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id y20-20020a0565123f1400b0047f6b4f82d1sm360378lfa.250.2022.08.04.23.50.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 23:50:39 -0700 (PDT)
Message-ID: <9e3dbc0f-b04d-c67e-7f39-9cf936ec7252@linaro.org>
Date:   Fri, 5 Aug 2022 08:50:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 4/4] MAINTAINERS: add qspi to Polarfire SoC entry
Content-Language: en-US
To:     Naga Sureshkumar Relli <nagasuresh.relli@microchip.com>,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor.dooley@microchip.com
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Valentina.FernandezAlanis@microchip.com
References: <20220805053019.996484-1-nagasuresh.relli@microchip.com>
 <20220805053019.996484-5-nagasuresh.relli@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220805053019.996484-5-nagasuresh.relli@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2022 07:30, Naga Sureshkumar Relli wrote:
> Add the qspi driver to existing Polarfire SoC entry.
> 
> Signed-off-by: Naga Sureshkumar Relli <nagasuresh.relli@microchip.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---

This should be squashed with previous patch.

Best regards,
Krzysztof
