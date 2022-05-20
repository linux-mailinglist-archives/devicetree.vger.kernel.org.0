Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE08652E6A4
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 09:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239436AbiETHyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 03:54:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346679AbiETHyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 03:54:41 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F72714CDEE
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 00:54:39 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id w14so12897967lfl.13
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 00:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=DkuHinXI3lpMmDhaFWa7SWko/oLhe+xgW9Fvmx5frMg=;
        b=oQIeO77e5MgSp87vBncmyxBCcoNdnnimJ9e849ruUM/OlNEC4TtFyCQMc52XjTugxL
         Mpm3X4noT3dqQ3QrThtyXz3oRMvAXe741B1+TI5K+Kk6h3jzKgq31jYtKE12DrjsjdHM
         MNAPx4+IKSlrc0imUA9WQ0ycuaubtFRt3+yfOV/qB18pXTMeLTNioxQJGuZHbi79lgoO
         0jkEb+h3ePU32ZHE1f748Who9IBdX6ggASCvaqI/WAkHw4rK/vVYNqoiDV8k/PNSXySm
         4W+wsnAU6k7YnWazIxiXl06tT7IVgiTM8RSW2oFmt1DIoo6zeSnXtKDT9wPX1seAJVCc
         pgpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DkuHinXI3lpMmDhaFWa7SWko/oLhe+xgW9Fvmx5frMg=;
        b=n+hP72iBOM9lQP9GjlQXc3r7tzLLoDoKgRv/wFpnUmCfdOeuGD8aAvJSqIkh4WI2Lh
         7RZn8rAaBSpYfCV/mGT0Pjxw6LLOiXTESUNpn5hMEVE6g9uVfa+JCA63h9toSVSuy3Z9
         DRBhIiAoe6RqRUL8uA3nRkGcgW9zbBvo3oY/dGkE0BCZ04ABuNlKzrfsu8IwORVOJ6Qn
         GRc60uFCRtVQNp0k7uJbeyGZTn75qvmfkMa5uoMoBS3wSSL1vicz+WGZJ6xflvE+9RYB
         jM6sISMxtmxi9upC8aWgIOLXa9uqe/HT9PgPcnYxPqz1zpGQWRMjoYL2lB83eVBiPPGB
         1KRA==
X-Gm-Message-State: AOAM5301C2I1WfapcK0z8YNrp6qytLB+Qk46fumZ4jP+YC+tKPZK0T9l
        gzdRFnS4+/QlQO5z//bUR6bTmQ==
X-Google-Smtp-Source: ABdhPJwx9dWuIp8oYgAGP5r1AcEtYYPQ5RJYBals6FVrRICWBys5V20iJ9zuV2KCWvnUEUZ6OqbyYQ==
X-Received: by 2002:a05:6512:1192:b0:473:cd3b:5f7b with SMTP id g18-20020a056512119200b00473cd3b5f7bmr6129376lfr.391.1653033277469;
        Fri, 20 May 2022 00:54:37 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x7-20020ac24887000000b004742b9065c4sm559298lfc.230.2022.05.20.00.54.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 00:54:37 -0700 (PDT)
Message-ID: <34d2664a-f4a6-31f9-c6d7-043bb6e14c58@linaro.org>
Date:   Fri, 20 May 2022 09:54:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RESEND 4/6 v2] dt-bindings: display: simple: add Geekworm MZP280
 Panel
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mchehab@kernel.org,
        emma@anholt.net, mripard@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220519162935.1585-1-macroalpha82@gmail.com>
 <20220519162935.1585-5-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220519162935.1585-5-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2022 18:29, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Geekworm MZP280 panel is a 480x640 (portrait) panel with a
> capacitive touch interface and a 40 pin header meant to interface
> directly with the Raspberry Pi. The screen is 2.8 inches diagonally,
> and there appear to be at least 4 distinct versions all with the same
> panel timings.
> 
> Timings were derived from drivers posted on the github located here:
> https://github.com/tianyoujian/MZDPI/tree/master/vga
> 
> Additional details about this panel family can be found here:
> https://wiki.geekworm.com/2.8_inch_Touch_Screen_for_Pi_zero
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
