Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 101BB77422F
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbjHHRg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:36:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234783AbjHHRfo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:35:44 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3127297D71
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:15:35 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fe5eb84d43so16949085e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691511312; x=1692116112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iq0fuWZwZqbSchZWggB1/iaIkWHEYwpCz6Ex4V1jQs4=;
        b=P2ShZoaJnunCvvHyFbvevPPoW6FiCEngE/7UEEt59nP8mmKa11IsKpL/b7tzzlht/D
         5IWqY6FY+Ub78VFweDNuFr/koMvTcZ3+BAyWtoHxM3WJPwTNolkMQC5TWFJj+FCvufsO
         5X1Wau/zcRgDW74o/r+ARxGgF8TdUIxfewDc7qd4qpCZTWMddYjlJ92QWRNh1sW/nSV/
         Bd3Pq3bjPbta9EAIzg9VdmZD6YCyNyMeyqCXwzkUDlLGHphkT0sRGkWPBceHjMiUE7z7
         xMDu3gl+FW1GpIibbw2Y1OQXXRYcJ6G9q5N0kY5NPPVSuukRwqzbzf6TUYAtws2q6QZV
         Tikw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691511312; x=1692116112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iq0fuWZwZqbSchZWggB1/iaIkWHEYwpCz6Ex4V1jQs4=;
        b=lBo47OIjt5/fNz4eWo2kdzcwNTO9rfMuEwb9RrVaHiCU2XrKTl3JwCMzXPZpOUWNGK
         Rh14Ti0EcJKmm3DnHGzlhN498r6+PJPrs+KWYE/7ijlDR0VVtYxd7p2Dk/bkAN7I2wGN
         aajChCH/+Q5j5Otl9nhTfgCB0pDPUuhjWMpx4zRc01V5LpPTWZZkTohNY4s3QJ04WqXG
         1jVMWmmOOyKPEEG0SK4w4+kJXSBt1cYcQpm500SeWe0Vpu62+8EwKR1HU7YU1PFmON6H
         HuaufxjWgyh7EJQTJ5i5llR9JTOl6orh8vvGf7UwjjgfCJlJ2t/Iaj0kLpBOckz9qHdt
         hWiQ==
X-Gm-Message-State: AOJu0Yzxm2XNAQoyuDmiF/Xr2Iwluf+5xs/ODN9akEC4niICcVCERIaW
        i8qQ5MkC3GQc0ey7nJJGXjq26HeUslqSwYX5G2o=
X-Google-Smtp-Source: AGHT+IFqJWNgx4SDpHJVEfxD9C+abszRRx1REVJ80Xsoki5bg1/ZLXXf6uPqaSk3im75Pf+vcP0AAA==
X-Received: by 2002:a17:906:74cd:b0:993:f90b:e549 with SMTP id z13-20020a17090674cd00b00993f90be549mr11013614ejl.37.1691484825944;
        Tue, 08 Aug 2023 01:53:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id s5-20020a170906168500b00999bb1e01dfsm6303027ejd.52.2023.08.08.01.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 01:53:45 -0700 (PDT)
Message-ID: <56593261-6e7d-9694-91d0-dfbac24aefa3@linaro.org>
Date:   Tue, 8 Aug 2023 10:53:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v7 2/2] ARM: dts: aspeed: yosemitev4: add Facebook
 Yosemite 4 BMC
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230808084248.1415678-1-Delphine_CC_Chiu@wiwynn.com>
 <20230808084248.1415678-3-Delphine_CC_Chiu@wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808084248.1415678-3-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 10:42, Delphine CC Chiu wrote:
> Add linux device tree entry related to
> Yosemite 4 specific devices connected to BMC SoC.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

