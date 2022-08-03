Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53DE2588B21
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 13:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235816AbiHCL10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 07:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235899AbiHCL1X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 07:27:23 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81AE939B92
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 04:27:20 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z25so25985602lfr.2
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 04:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TyUDYlMCD6nO9HsC72KlId2P6A43FPCwsmRgECQAK0g=;
        b=Zu5AGpgAIaa0tgrUyX2ydy+8VuU6XriSBrd8UEOiPftB7pvnHcOkgmiimLlOohP0lo
         R6pV4EXMvjHTqUbcnwcyefew3YpEOTaUNy6unU9YliCyswJfsSuwsLcThxy5Vm1Pji04
         tkI3vL723mx9q6ygg6wV9cVwE3VzxyPdIc/+0zgcXe1LKsDHUeoKtB2kV39qVezPCr/I
         y3hm3wvVlihs1Cq+NTeVaDyATEO8md7aU0akCVxLFzXojNQ4/v/Dv/RcBnfNlbqCazxK
         iPsePCTenjxFg6pdJ1qo+H/WLzrfGdIjwPTN6cSD+mjeqyMGfEo60UxB2rR+FO/3DsoL
         XpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TyUDYlMCD6nO9HsC72KlId2P6A43FPCwsmRgECQAK0g=;
        b=RlcgxbZ2uSBkoRdHfxZWM2WVDL6lbHrGi2IYIcvMavpi5fzfcU8zK36DfQkVO2iQt/
         j/j0CFfgkPDlgvodx8wWP433fvtdhpzHDTgwbsusXAXx3nSuttN21R6JhzbD6xpufm1B
         9TFjocF1fydhpZGQNAV+hBEePIOEaul1Ybpp2VTo/0AY/jCSXdNMlLnSMJywD6nyvjSB
         /UafrV1f1RG3ayyY5bj95Sp/H/BG0gY+eT02kLaxoOqOsqEPuMdxyt7iwitvcwWGd6J2
         D2uH+4CAe4IDbeZnKCcRaEv4CoC+2PTygr2JsISEXV6Fz5Lk1AgRE7UA8dxmQrWSkWIJ
         47WQ==
X-Gm-Message-State: ACgBeo0HnJ1EJkKqqlEE9KHNXQURYnk1z13uVRV530kuq015Dkljqcag
        kywOe2S7VNm38hCDthPPb9AhEMOhqpOPZ95e
X-Google-Smtp-Source: AA6agR4Auzuv+tQrdrveIn2E16Thixb1ggjtVWNjtYFq1nEiRybO2lDKrsJTSg1mlohl+TosLEJH2A==
X-Received: by 2002:a05:6512:324b:b0:48b:1d7d:6874 with SMTP id c11-20020a056512324b00b0048b1d7d6874mr997450lfr.18.1659526038654;
        Wed, 03 Aug 2022 04:27:18 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id q3-20020a2e9143000000b0025e0c352465sm947579ljg.82.2022.08.03.04.27.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 04:27:18 -0700 (PDT)
Message-ID: <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
Date:   Wed, 3 Aug 2022 13:27:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
 <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org>
 <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
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

On 03/08/2022 12:46, Jagan Teki wrote:
> On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 03/08/2022 12:24, Jagan Teki wrote:
>>>> Vendor in filename is needed.
>>>
>>> Yes this follows how similar rockchip vendor notation
>>>
>>> $ ls include/dt-bindings/power/rk3* -l
>>>  include/dt-bindings/power/rk3036-power.h
>>>  include/dt-bindings/power/rk3066-power.h
>>>  include/dt-bindings/power/rk3128-power.h
>>>  include/dt-bindings/power/rk3188-power.h
>>>  include/dt-bindings/power/rk3228-power.h
>>>  include/dt-bindings/power/rk3288-power.h
>>>  include/dt-bindings/power/rk3328-power.h
>>>  include/dt-bindings/power/rk3366-power.h
>>>  include/dt-bindings/power/rk3368-power.h
>>>  include/dt-bindings/power/rk3399-power.h
>>>  include/dt-bindings/power/rk3568-power.h
>>
>>
>> So when are we going to switch to vendor,device pattern if you keep
>> adding files with wrong naming?
> 
> Do you mean the above files are following the wrong naming pattern?

Yes, or at least discouraged naming. The recommended naming which I hope
all new files will follow are vendor,device.h.



Best regards,
Krzysztof
