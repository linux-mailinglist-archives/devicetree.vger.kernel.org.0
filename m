Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30DD5704C8E
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231401AbjEPLmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:42:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232443AbjEPLmn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:42:43 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E8A2469D
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:42:42 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50b8d2eed3dso21166546a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684237361; x=1686829361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=At3goBMUTOa94E5mviLSYmUSnhQCgPwyh1cCRAimQCM=;
        b=MSqKpeq+UIhbZgm/nguEjRCkcOTfC9u/tk4B9CYWwXerYWbqplnimMbeZuvdEAqYmA
         4Df5HYOK378deP3tWiqa/ia5N1RIdJDMslieXuSXODu1twrSuI+YEpn0pGsIrDZ2WIBL
         o18qT/CNb2OKEuCkwohcRijJN/63S5Iza/DWi6d4MbO+irYdK4eOtMcOnWfANlwYotzy
         wI2DmP0P6+ZEbDrQmuS0mpNRSGBh1CbPl0P8jcHGYbImCwViRa1iU/xDowznHzfp1KIz
         I7TVQknbN3I/s672mPNc3UDlJMI/fM1bNpgMivS7Gx/PuhH0jN7c4txt3tUlUbzMtx1n
         swyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684237361; x=1686829361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=At3goBMUTOa94E5mviLSYmUSnhQCgPwyh1cCRAimQCM=;
        b=e+Y6HKPsOPYv0CjbwNoo8C4Nk7TzLNucVWePYUTsdyL6d5qsCI0HIPDQDO9NFn3jdz
         kHzSVMS+nZ+JLZzyMhErRT1o6C1nJCHFQv/toz3pj1x+jPiKouLNfFJxvYN7r1W3LXO4
         nHSxNjni8ofoZvqyE83osntxtUjXsufj0/73twhgW/WBRuaSrNmd6gQ87UbhMa1ZlUmO
         VrJ3ih4G+stPkZyh1j4fmvstODeDw7vLAxHuiBxK3BN78/IK81J5bsFGRfSPFM1OMRY4
         OvhwNrRyBfEKVyZpa9lZKLHN90M641Hrms0JTt3620qAam+yfQ8syktD/BJEm+gunMWP
         x1yg==
X-Gm-Message-State: AC+VfDyA5BCX3cKC19MY7Ba0FuW0lxCIWvzTpUp6gF/WrGnWliKe/g3H
        HPVBiW8Pro9DX2ptAKIAGR1NzQ==
X-Google-Smtp-Source: ACHHUZ68CUOcv41M2xDRmoJR6bI/S4CfxwIaJhrrrt2y9HavT1o6aaGaPG5uIucmJz8q2zy2nj4+Vw==
X-Received: by 2002:a17:907:3f28:b0:94f:2a13:4df8 with SMTP id hq40-20020a1709073f2800b0094f2a134df8mr37005911ejc.36.1684237360917;
        Tue, 16 May 2023 04:42:40 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id d4-20020a170907272400b00965e9b435dfsm10885415ejl.65.2023.05.16.04.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 04:42:40 -0700 (PDT)
Message-ID: <9f2c0b2d-b11e-512f-1566-5097547c60d1@linaro.org>
Date:   Tue, 16 May 2023 13:42:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 4/5] dt-bindings: iommu: arm,smmu: enable clocks for
 sa8775p Adreno SMMU
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230417125844.400782-1-brgl@bgdev.pl>
 <20230417125844.400782-5-brgl@bgdev.pl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230417125844.400782-5-brgl@bgdev.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/04/2023 14:58, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> The GPU SMMU will require the clocks property to be set so put the
> relevant compatible into the adreno if-then block.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

